<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Item;
use App\Category;
use App\Country;
use App\Http\Requests\ItemRequest;
use Meta;

class ListController extends Controller
{    

    /*public function __construct(){
         
         $this->middleware('auth');
    }*/
    /**
     * Show the home page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index( $category_id)
    {
        
        $category = Category::find($category_id);
        
        if($category->parent_id == 0){
             
             $ids = Category::select('id')->where('parent_id', $category_id)->where('parent_id','!=',0)->get();
             $array = array();

             foreach ($ids as $id) {            
                $array[] = (int) $id->id;
             }                
             $items = Item::whereIn('category_id',$array)->paginate(5);  

        }else{
            $items =  Item::where('category_id' ,$category_id)->paginate(5);    
        }
        
        Meta::meta('title', 'Items');
        Meta::meta('description', 'Classified Item list');
        
        $Category = new Category;
        $allCategories = $Category->getCategories();  
        //dd($category);
        // if($allCategories->count() > 0){
        //     foreach ($allCategories as $allCategoriesvalue) {
        //         # code...
        //     }
        // }

        return view('frontend.list', compact('items','allCategories','category'));       
    }

    public function countryitems($countryid){
            $items = Item::where('country_id',$countryid)->paginate(5);  
            return view('frontend.list', compact('items'));      
    }

    public function detailList($category=null,$subcategory=null)
    {
        
        

        $category = Category::find($subcategory);
        
        if($category->parent_id == 0){
             
             $ids = Category::select('id')->where('parent_id', $subcategory)->where('parent_id','!=',0)->get();
             $array = array();

             foreach ($ids as $id) {            
                $array[] = (int) $id->id;
             }                
             $items = Item::whereIn('category_id',$array)->paginate(5);  

        }else{
            $items =  Item::where('category_id' ,$subcategory)->paginate(5);    
        }
        
        dd($items);
        Meta::meta('title', 'Items');
        Meta::meta('description', 'Classified Item list');
        
        $Category = new Category;
        $allCategories = $Category->getCategories();  
        //dd($category);
        // if($allCategories->count() > 0){
        //     foreach ($allCategories as $allCategoriesvalue) {
        //         # code...
        //     }
        // }

        return view('frontend.detail_listing', compact('items','allCategories','category'));
    }

}
