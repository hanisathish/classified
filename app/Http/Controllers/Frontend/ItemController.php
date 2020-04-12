<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\ItemRequest;
use App\Http\Controllers\Controller;
use App\Item;
use App\Category;
use App\Country;
use App\Item_Images;
use App\Advt;
use DB;
use Meta;
use AWS;

class ItemController extends Controller
{    
   
    /**
     * Show the home page.
     *
     * @return \Illuminate\Http\Response
     */

    
    public function show($id)
    {
        //$item =  Item::find($id);

        $item_al =  Item::select('*')->where('alias', $id)->get();

        $item =  Item::find($item_al[0]->id);
		
		$allAdvt = DB::table('advt')->where('published', 1)->inRandomOrder()->limit(1)->get();
		
		$allAdvtlist = Advt::orderByRaw('RAND()')->where('published', 1)->take(1)->get();

        //dd($allAdvtlist);

        if($item){
            
            $item->views = (int) $item->views +1;
            $item->save();
        }

        $category = Category::find($item->category_id);
        if($category->parent_id == 0){
             
             $cat_ids = Category::select('id')->where('parent_id', $item->category_id)->where('parent_id','!=',0)->get();
             $array = array();

             foreach ($cat_ids as $cat_id) {            
                $array[] = (int) $cat_id->id;
             }                
             $items = Item::select('*')->whereIn('category_id',$array)->whereNotIn('id', [$item->id])->get();  

        }else{
            
            $items =  Item::select('*')->where('category_id' ,$item->category_id)->whereNotIn('id', [$item->id])->get();    
        }

        $item_images = Item_Images::where('item_id',$item_al[0]->id)->get();
        Meta::meta('title', $item->title);
        Meta::meta('description', $item->description);
        $defaultCountry = Country::find(Config('laralist.default_country'));

        return view('frontend.item', compact('item','items','item_images','defaultCountry','allAdvt','allAdvtlist'));       
    }

   public function search(Request $request){

        DB::enableQueryLog();
        $searchText = $request['q'];
        $seachLocation = $request['l'];
        $categorySearchId = $request['categorySearchId'];

        $catId = null;
        $subCatId = null;
        
        $category=null;
        

        if($categorySearchId){
            $catId = $categorySearchId;

            $grp_concat_sub_category =  Category::select(DB::raw("group_concat(id) as grp_con"))->where('parent_id',$categorySearchId)->get();

            $grp_conids = $grp_concat_sub_category->first()->grp_con;
            //dd("as",$grp_conids);
        }
        $columns =['title','alias','description','address1','address2','address3'];
      
        $query = Item::select('*');
        if($categorySearchId){
            //$query->where( 'category_id', $categorySearchId);            
            //$query->where( 'category_id', $categorySearchId);            
            // if($categorySearchId){
            //     $grp_conids = array('category_id'=>array($grp_conids));

            //     foreach($grp_conids as $key=>$value){
            //         $whereInFiltered = array_filter($value);
            //         $query->whereIn($key,$whereInFiltered);
            //     }
            // }
            //$revised_input = '"' . implode('","', $grp_conids) . '"';
            $out = array();
            $array = str_getcsv($grp_conids);
            foreach($array as $item) {
                $out[] = str_replace(',', '', $item);
            }
            //dd($out);
            $query->whereIn('category_id',$out);
            //$query->whereIn('category_id',array(8,9,10,11,12));
            //dd($categorySearchId);
        }
        // use in wherein for parent category
        //$query->where( 'title', 'like', '%'.$searchText.'%');

        // foreach( $columns as $column)
        // {
        //     $query->orWhere( $column, 'like', '%'.$searchText.'%');
        // }
        if($searchText){
            $query->where(function($query) use ($columns,$searchText)
            {
                foreach ($columns as $column) {
                    $query->orWhere( $column, 'like', '%'.$searchText.'%');
                }
            });
        }

        if($categorySearchId){
            // $query->orWhereHas('category',function( $query ) use (  $searchText ){
            //     $query->where('title', 'like', '%'.$searchText.'%' );
                
            // });
        }

        if($searchText){
            $query->orWhereHas('country',function( $query ) use (  $searchText ){
                $query->where('name', 'like', '%'.$searchText.'%' );
            });
        }
        
        $items = $query->paginate(5);
        //dd('d');
        $searchQuery = $searchText;

        $defaultCountry = Country::find(Config('laralist.default_country'));
         //var_dump( $query->toSql() );         dd('d');
        //dd(DB::getQueryLog($query->get()));
        
        //echo "<pre>";
        //print_r($datas);
        //return view('frontend.search', compact('items','searchQuery','seachLocation'));  

        $Category = new Category;
        $allCategories = $Category->getCategories();  
        $featuredItems =  Item::where('isfeatured' ,1)->get();

       return view('frontend.search', compact('items','searchQuery','seachLocation','allCategories','category','defaultCountry','featuredItems','catId','subCatId'));


    }

    public function sendmessage(){
        
    }



}
