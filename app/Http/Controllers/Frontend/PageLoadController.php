<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use DB;
use Meta;
use Setting;
use Config;
use App\Item;
use Mail;

class PageLoadController extends Controller
{    


    // Dataload function
    public function Dataload()
    {
		$post_data = Item::orderBy('created_at','DESC')->limit(10)->get();
		
		//dd($post_data);
		return view('frontend.loaddata', compact('post_data'));
		
    }

	
	public function DataAjaxload(Request $request)
    {
        
		$set_output = '';
        $id = $request->id;
        
        $post_data = Item::where('id','<',$id)->orderBy('created_at','DESC')->limit(10)->get();
        

        if(!$post_data->isEmpty())
        {
            foreach($post_data as $post_val)
            {

                $body_data = substr(strip_tags($post_val->description),0,200);
				
                $set_output .= '<div class="">
                                <div class="">
                                    <h2 class="post-title">'.$post_val->title.'</h2></a>
                                    <div class="row">
                                       <div class="col-md-6">
                                           <h5 class="post-date grids" >Published:'.date('M j, Y', strtotime($post_val->created_at)).'</h5> 
                                       </div>
                                   </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <p class="text-justify">'.$body_data.'</p>
                                        </div>
                                    </div>
                                </div>   
                            </div>';
            }
            
            $set_output .= '<div id="remove-row">
                            <button id="btn-more" data-id="'.$post_val->id.'" class="">Load More</button>
                        </div>';
            
            echo $set_output;
        }
    }
	   
	
}