<?php

namespace App\Http\Controllers\Backend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\AdvtRequest;

use App\Http\Controllers\Controller;
use App\Advt;
use DB;
use File;
use PDO;



/**
 * Class AdvtController
 * @package App\Http\Controllers\Backend
 */
class AdvtController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {

        $allAdvt = DB::table('advt')->get();   
        return view('backend.advt.advt', compact('allAdvt'));
		
    }

    public function create(){        
                     
        return view('backend.advt.create');
    }

    public function store( AdvtRequest $request ){

        $advt = new Advt;
        $advt->advt_name = $request['advt_name'];
        $advt->advt_desc = $request['advt_desc'];
        $advt->advt_url = $request['advt_url'];
        $advt->published = $request['published'];
        $advt->advt_type = $request['advt_type']; 

        $image = $request->file('advt_image');

        $filename=null;
        if($_FILES['advt_image']['error'] == 0)
        {
            if($image->isValid()){
            
                $extension = $image->getClientOriginalExtension();
                $uploadPath = public_path(). '/uploads';
                $filename = time().rand(111,999). '.'. $extension;
                $image->move($uploadPath, $filename);   
            }
        }
        $advt->advt_image = $filename;
        
         if($advt->save())
            $request->session()->flash('alert-success','Advertisement added successfully.');
        else
            $request->session()->flash('alert-error','Can not add advertisement now. Plese tyr again!!.');

        return redirect()->route('admin.advt');
       
    }
	

    public function edit( $id ){
		
        $advt = Advt::find($id);
        return view('backend.advt.edit', compact('advt'));
    }
	

    public function update( AdvtRequest $request){
        
        $advt = Advt::find( $request['id'] );

        $advt->advt_name = $request['advt_name'];
        $advt->advt_desc = $request['advt_desc'];
        $advt->advt_url = $request['advt_url'];
        $advt->published = $request['published'];
        $advt->advt_type = $request['advt_type']; 
        
        $filename=null;

        $image = $request->file('advt_image');
        
        if($request->hasFile('advt_image'))
        {
            if($image->isValid()){
                $extension = $image->getClientOriginalExtension();
                $uploadPath = public_path(). '/uploads/';
                $filename = time().rand(111,999). '.'. $extension;
                $image->move($uploadPath, $filename);   
            }
        }

        $advt->advt_image = $filename? $filename: $advt->advt_image;
       
        if($advt->save())
            $request->session()->flash('alert-success','Advertisement saved successfully.');
        else
            $request->session()->flash('alert-error','Can not save advertisement now. Plese tyr again!!.');

        return redirect()->route('admin.advt');
    }


    public function publish(Request $request){

        Advt::whereIn('id',$request['id'])->update(['published' => 1]);
        $count = count($request['id']);
        $message =  $count . ( ($count > 1)? ' Advertisement Published':' Advertisement Published');
        $request->session()->flash('alert-success', $message); 
        return redirect()->route('admin.advt');
    }

    public function unpublish(Request $request){
     
        Advt::whereIn('id',$request['id'])->update(['published' => 0]);
        $count = count($request['id']);
        $message =  $count . ( ($count > 1)? ' Advertisement Unpublished':' Advertisement Unpublished');
        $request->session()->flash('alert-success', $message);               
        return redirect()->route('admin.advt');
    }

    public function destroy(Request $request){
      
       $advt_id = $request['id'];
	   
       DB::setFetchMode(PDO::FETCH_ASSOC);

        $advts = DB::table('advt') 
            ->select('id')             
            ->whereIn('id',$advt_id)                                
            ->get();
        
        DB::setFetchMode(PDO::FETCH_CLASS);
        
        Advt::find($advts)->each(function ($advt, $key) {
            $advt->delete();
        });

        $count = count($advt_id);
        $message =  $count.(($count > 1)? ' Advertisement deleted':' Advertisement deleted');

        $request->session()->flash('alert-success',$message);

        return redirect()->route('admin.advt');

    }
   
}