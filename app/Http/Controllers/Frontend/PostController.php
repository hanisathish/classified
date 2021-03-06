<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Item;
use App\Category;
use App\Country;
use App\Item_Images;
use App\Http\Requests\ItemRequest;
use File;
use Meta;
use Listcurl;
use PDO;
use DB;



class PostController extends Controller
{    

    public function __construct(){
         
        $this->middleware('auth');
        Meta::meta('title', 'Post Item');
        Meta::meta('description', 'Post classified item');
    }
    /**
     * Show the home page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return null;
    }

    public function create(){
        
        $countires = Country::all();
        $Category = new Category;
        $categories = $Category->getCategories();

        return view('frontend.post', compact('countires','categories'));
    }

    public function store( ItemRequest $request ){    


        $item = new Item;
        $item->title = $request['title'];
        $item->alias = str_slug($request['title']);
        $item->country_id = $request['country_id'];
        $item->category_id = $request['category_id'];
        $item->price = $request['price'];
        $item->description = $request['description'];
        $item->address1 = $request['address1'];
        $item->address2 = $request['address2'];
        $item->address3 = $request['address3'];
        $item->zipcode = $request['zipcode'];
        $item->published = $request['published'];
        $item->user_id = $request->user()->id;
        $item->phone = $request['phone'];

        $country = Country::find($request['country_id']);
        $address  = $request['zipcode'];
        $address .= empty($request['address1']) ? '': ( empty($address)? str_slug($request['address1'],"+"):','.str_slug($request['address1'],"+"));
        $address .= empty($request['address2']) ? '': ( empty($address)? str_slug($request['address2'],"+"):','.str_slug($request['address2'],"+"));
        $address .= empty($request['address3']) ? '': ( empty($address)? str_slug($request['address3'],"+"):','.str_slug($request['address3'],"+"));
        $address .= empty($address) ? $country->country_code : ','.$country->country_code;


        // $google_api= 'https://maps.googleapis.com/maps/api/geocode/json?address='.$address.'&key='.config('laralist.google_map_api_key');

        // $response = Listcurl::get($google_api);

        // $data = json_decode($response);
        // if( isset($data->results[0]->geometry->location->lng)){
        //  $item->lng = $data->results[0]->geometry->location->lng;
        // }
      

        // if(isset($data->results[0]->geometry->location->lat)){
        //  $item->lat = $data->results[0]->geometry->location->lat;
        // }


        $request['image'] = $_FILES['image'];

        if($request['image']){
             $item->image = time()."_".$request['image']['name'][0];          
        }

        if( $item->save() ){

            if($_FILES['image']['error'] == 0)
            {
                if($request->hasFile('image')){ 

                    $images = $request->file('image');

                    for($i=0;$i<count($images);$i++){
    					
                        $image = $request->file('image')[$i];
                        $extension = $image->getClientOriginalExtension();
                        //dd($extension);
                        $uploadPath = public_path(). DIRECTORY_SEPARATOR. 'uploads' . DIRECTORY_SEPARATOR;
                        $filename = time()."_".$request['image']['name'][$i];//strtotime(date('Y-m-d H:i:s')).'_'.rand(111,999).'.'. $extension;
                        $image->move($uploadPath, $filename); 

       					

                        $item_image = new Item_Images;
                        $item_image->image = $filename;
                        $item_image->item_id = $item->id;
                        $item_image->published = 1;
                        $item_image->save();
                    }
                }
            }
          
		     //$alias = str_slug($request['title']."-".$item->id);
		     $alias = str_slug($request['title']);
		     DB::table('items')->where('id', $item->id)->update(array('alias' => $alias));
             		  
        }
        return redirect()->route('frontend.user.myitems');

    }


    public function edit($id){
		
        $item = Item::find($id);
			
        $countires = Country::all();
        
        $Category = new Category;
        $categories = $Category->getCategories();

		$item_image = new Item_Images;
		$images = $item_image->where('item_id' , $item->id)->get();

        return view('frontend.edit', compact('item', 'countires', 'categories', 'images'));

    }

    public function update( ItemRequest $request ){
		
		
        $item = Item::find($request['id']);
		
		$item_id = $request['id'];
		
		//dd($item_id);
		
		$request['image'] = $_FILES['image'];
		
		$image = $request->file('image');
		
		//dd($image);		
		//if($image[0] == null){
			
		
		if($request->hasFile('image')){
			
			$filename = time()."_".$request['image']['name'][0];
			
		} else {
			
			$filename = $item->image;
		}
		
		
        $item->title = $request['title'];
        $item->alias = str_slug($request['title']);
        $item->country_id = $request['country_id'];
        $item->category_id = $request['category_id'];
        $item->price = $request['price'];
        $item->description = $request['description'];
        $item->address1 = $request['address1'];
        $item->address2 = $request['address2'];
        $item->address3 = $request['address3'];
        $item->zipcode = $request['zipcode'];
        $item->published = $request['published'];
        $item->phone = $request['phone'];		
		$item->image = $filename;
		
        //$request['image'] = $_FILES['image'];
        //dd($request['image']['name'][0]);
        //dd($request['image'][0]['originalName']);
        /*if(!$request['existimage'] && $request['image']){
            
            $item->image = $request['image']['name'][0];          
            
        }else if(!$request['existimage'] && !$request['image']){
            $item->image = '';
        }*/
		
		$request['image'] = $_FILES['image'];

        if( $item->save() ){
            if($_FILES['image']['error'] == 0)
            { 
                if($request->hasFile('image')){
    						
    				// Insert new Images
                   
                    $images = $request->file('image');
                    //foreach ($request['image']['name'] as $imagename) {
                    for($i=0;$i<count($images);$i++){
     
                        $image = $request->file('image')[$i];
                        $extension = $image->getClientOriginalExtension();
                        //dd($extension);
                        $uploadPath = public_path(). DIRECTORY_SEPARATOR. 'uploads' . DIRECTORY_SEPARATOR;
                        $filename = time()."_".$request['image']['name'][$i];//strtotime(date('Y-m-d H:i:s')).'_'.rand(111,999).'.'. $extension;
                        $image->move($uploadPath, $filename);   

                        $item_image = new Item_Images;
                        $item_image->image = $filename;
                        $item_image->item_id = $item->id;
                        $item_image->published = 1;
                        $item_image->save();
                    }
                }
            }
			//$alias = str_slug($request['title']."-".$item->id);
		     $alias = str_slug($request['title']);
		     DB::table('items')->where('id', $item->id)->update(array('alias' => $alias));
			 
        }

         return redirect()->route('frontend.user.myitems');
        
    }


    public function deleteItemById( Request $request)
    {
        //print '<pre>';
		//print_r($request->all());
        $item_id = $request->get('itemId');
		//return $item_id;

		$image = Item_Images::find($item_id);
		$path = public_path().DIRECTORY_SEPARATOR . 'uploads'.DIRECTORY_SEPARATOR. $image->image;

		if( File::delete($path) ){
			$image->delete();             
		}
		
        Item_Images::where('item_id',$item_id)->delete();
    }
	
	
    public function destrory($id){
        $item = Item::find($id);

        if( $item->delete()) {

            $image = Item_Images::find($id);

            $path = public_path().DIRECTORY_SEPARATOR . 'uploads'.DIRECTORY_SEPARATOR. $image->image;

            if( File::delete($path) ){
                $image->delete();             
            }
            
        }   

        return redirect()->route('frontend.user.myitems');   

    }

    
}
