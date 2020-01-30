<?php

namespace App\Http\Controllers\Backend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\ItemRequest;

use App\Http\Controllers\Controller;

use App\Item;
use App\Category;
use App\Country;
use App\User;
use App\Item_Images;
use DB;
use File;
use PDO;
use Log;
use AWS;

/**
 * Class DashboardController
 * @package App\Http\Controllers\Backend
 */
class ItemController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {
    	
        $items = DB::table('items')
                    ->join ('categories' ,'category_id','=','categories.id')
                    ->join ('countries' ,'country_id','=','countries.id')
                    ->select('items.*','categories.title AS category','countries.name AS country')
                    ->get();    

        return view('backend.items.items', array('items' =>$items));
    }

    public function create(){
        $users = User::all();
        $countires = Country::all();
        $categories = Category::all();
        $categories = $this->get_options($categories);
        $defaultCountry = Country::find(Config('laralist.default_country'));
        
        return view('backend.items.create', compact('users', 'countires', 'categories','defaultCountry'));
    }

    public function store( ItemRequest $request ){
		
		/*$image = $request->file('image');
        $filename=null;
        $s3key = null;

        if( $image && $image->isValid()){
            $extension = $image->getClientOriginalExtension();
            $uploadPath = public_path(). '/uploads';
            $filename = rand(111,999). '.'. $extension;
            $image->move($uploadPath, $filename); 
            if( '1' ==  config('laralist.aws_s3_service')){
                $s3key=  config('laralist.aws_s3_folder').'/'.$filename;    
                $s3 = AWS::get('s3');
                $s3->putObject(array(
                    'Bucket'     => config('laralist.aws_s3_bucket'),
                    'Key'        => $s3key,           
                    'SourceFile' =>  $uploadPath.'/'. $filename,
                ));
            }    
        }*/


        $item = new Item;
        $item->title = $request['title'];
        if( empty( $request['alias']) ) {
          $request['alias'] = $request['title'];  
        }
        $item->alias = str_slug($request['alias']);
        $item->country_id = $request['country_id'];
        $item->category_id = $request['category_id'];
        $item->price = $request['price'];
        $item->description = $request['description'];
        $item->address1 = $request['address1'];
        $item->address2 = $request['address2'];
        $item->address3 = $request['address3'];
        $item->zipcode = $request['zipcode'];
        $item->phone = $request['phone'];
        $item->published = $request['published'];
        $item->user_id = $request['user_id'];
        //$item->image = $filename;
        //$item->s3key = $s3key;
        $item->show_price = $request['show_price'];

        $request['image'] = $_FILES['image'];

        if($request['image']){
             $item->image = $request['image']['name'][0];          
        }
		

        if($item->save()){
			
			
            if($request['image']){ 
			
			 $images = $request->file('image');
			 
			 for($i=0;$i<count($images);$i++){
				 
				$image = $request->file('image')[$i];
				$extension = $image->getClientOriginalExtension();
				//dd($extension);
				$uploadPath = public_path(). DIRECTORY_SEPARATOR. 'uploads' . DIRECTORY_SEPARATOR;
				$filename = $request['image']['name'][$i];//strtotime(date('Y-m-d H:i:s')).'_'.rand(111,999).'.'. $extension;
				$image->move($uploadPath, $filename);  
				
                $item_image = new Item_Images;
                $item_image->image = $filename;
                $item_image->item_id = $item->id;
                $item_image->published = 1;
                //$item_image->s3key = $s3key;
                $item_image->save();
				
			   }
            }

            $request->session()->flash('alert-success','Item added successfully.');
        }else
            $request->session()->flash('alert-error','Can not add item now. Plese tyr again!!.');

        
        return redirect()->route('admin.items');
       
    }

    public function edit( $id ){
        $item =Item::find($id);
        $users = User::all();
        $countires = Country::all();
        $categories = Category::all();
        $categories = $this->get_options($categories);
        $defaultCountry = Country::find(Config('laralist.default_country'));

         return view('backend.items.edit', compact('users', 'item', 'countires', 'categories','defaultCountry'));
    }

    public function update( ItemRequest $request){
        
        $item = Item::find($request['id']);
        
		$item_id = $request['id'];
		
		//dd($request['id']);
		
        /*
		$filename=null;

        $image = $request->file('image');
        if($request->hasFile('image'))
        {
            if($image->isValid()){
                $extension = $image->getClientOriginalExtension();
                $uploadPath = public_path(). '/uploads';
                $filename = rand(111,999). '.'. $extension;
                $image->move($uploadPath, $filename);   
            }
        }
		*/
		
		
		
		$request['image'] = $_FILES['image'];
		
		$image = $request->file('image');
		
		//dd($image);
		
		/*if($image[0] == null){
			
			$filename = $item->image;
			
		} else {
			
			$filename = $request['image']['name'][0];
		}*/
		
		
		if($request->hasFile('image')){
			
			$filename = $request['image']['name'][0];
			
		} else {
			
			$filename = $item->image;
		}		
		

        $item->title = $request['title'];
        if( empty( $request['alias']) ) {
          $request['alias'] = $request['title'];  
        }
        $item->alias = str_slug($request['alias']);
        $item->country_id = $request['country_id'];
        $item->category_id = $request['category_id'];
        $item->price = $request['price'];
        $item->description = $request['description'];
        $item->address1 = $request['address1'];
        $item->address2 = $request['address2'];
        $item->address3 = $request['address3'];
        $item->zipcode = $request['zipcode'];
        $item->phone = $request['phone'];
        $item->published = $request['published'];
        $item->user_id = $request['user_id'];
        $item->image = $filename;
        $item->show_price = $request['show_price'];
		
		$request['image'] = $_FILES['image'];
		
        //dd($image[0]);
        //dd($filename);
        //dd($request['image']);
        //dd($request['image'][0]['originalName']);
		

        if($item->save()){
			

             if($request->hasFile('image')){
				 
				 
				  // Delete Existing Images
				
				  Item_Images::where('item_id',$item_id)->delete();

				  /*$image = Item_Images::find($item_id);
				  
				  $path = public_path().DIRECTORY_SEPARATOR . 'uploads'.DIRECTORY_SEPARATOR. $image->image;

				  if( File::delete($path) ){
					  
					$image->delete(); 
				   
				  }
				  */			
				

                // Insert New Images
				
                $images = $request->file('image');
				
				for($i=0;$i<count($images);$i++){
 
				$image = $request->file('image')[$i];
				$extension = $image->getClientOriginalExtension();
				//dd($extension);
				$uploadPath = public_path(). DIRECTORY_SEPARATOR. 'uploads' . DIRECTORY_SEPARATOR;
				$filename = $request['image']['name'][$i];//strtotime(date('Y-m-d H:i:s')).'_'.rand(111,999).'.'. $extension;
				$image->move($uploadPath, $filename); 
   				
                $item_image = new Item_Images;
                $item_image->image = $filename;
                $item_image->item_id = $item->id;
                $item_image->published = 1;
                $item_image->save();
				
			  }
				
            }

            $request->session()->flash('alert-success','Item updated successfully.');
        } else
            $request->session()->flash('alert-error','Can not update item now. Plese tyr again!!.');
        

        return redirect()->route('admin.items');
    }


    public function publish(Request $request){

        Item::whereIn('id',$request['id'])->update(['published' => 1]);
        
        $request->session()->flash('alert-success', count($request['id']). " Item(s) Published ");           
        return redirect()->route('admin.items');

    }

    public function unpublish(Request $request){
        
        Item::whereIn('id',$request['id'])->update(['published' => 0]);              
        $request->session()->flash('alert-success', count($request['id']). " Item(s) Unpublished "); 
        return redirect()->route('admin.items');
    }

    public function destroy(Request $request){
     
        $item_id = $request['id'];     
        DB::setFetchMode(PDO::FETCH_ASSOC);

        $items = DB::table('items') 
        ->select('id')             
        ->whereIn('id',$item_id )        
        ->get();

        // var_dump($categories);    
        DB::setFetchMode(PDO::FETCH_CLASS);

        Item::find($items)->each(function ($item, $key) {
        $item->delete();
        });

        $request->session()->flash('alert-success', count($item_id).' Item(s) deleted successfully.');
        
        return redirect()->route('admin.items');

    }

   

    public function get_options($category, $parent=0, $indent=""){
       $return = array();
        foreach($category as $key => $val) {
            if($val->parent_id == $parent) {
                $val->title = $indent.$val->title;
                $return[] = $val;
                $return = array_merge($return, $this->get_options($category, $val->id, $indent."&nbsp;&nbsp;&nbsp;|--"));
            }
        }

        return $return;

    }
   
}