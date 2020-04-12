<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\Advt;
use DB;
use Meta;
use Setting;
use Config;
use App\Item;
use Mail;

class HomeController extends Controller
{    

    /**
     * Show the home page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		//dd('ssss'); 
        $Category = new Category;
        $allCategories = $Category->getCategories();  
        //Config::write('laralist.item_per_page', 'http://octobercms.com');

        //$allItem = Item::where('published',1)->get();
		
        $allItem = Item::where('published',1)->orderBy('created_at','DESC')->limit(8)->get();//->limit(8)
		
		//$allAdvt = Advt::orderByRaw('RAND()')->take(4)->get();
		 

		$allAdvt = DB::select("SELECT t1.*
					FROM advt t1, advt t2, advt t3
					where 
					t1.id != t2.id and
					t1.id != t3.id and
					t2.id != t3.id
					and t1.published=1
					-- and t2.published=1 and t3.published=1
					order by rand()
					limit 4 ");

		//dd(count($allAdvt));
        //dd($allItem->count());
        //dd($allAdvt[0]->toArray());
        return view('frontend.home', compact('allCategories','allItem','allAdvt'));
    }
	
	
	public function DataAjaxload(Request $request)
    {
        
		$set_output = '';
        $id = $request->id;
        
        $allItem = Item::where('id','<',$id)->where('published',1)->orderBy('created_at','DESC')->limit(8)->get();
		
		//$allAdvt = DB::table('advt')->inRandomOrder()->limit(4)->get();
		$allAdvt = DB::select("SELECT t1.*
					FROM advt t1, advt t2, advt t3
					where 
					t1.id != t2.id and
					t1.id != t3.id and
					t2.id != t3.id
					and t1.published=1 
					-- and t2.published=1 and t3.published=1
					order by rand()
					limit 4 ");
		
        //dd($allAdvt);
		
		
        if(!$allItem->isEmpty())
        {
            foreach($allItem as $allItemValue)
            {
				
				if($allItemValue->image)
					
                    $itemImageDisp = $allItemValue->image;
                else
                    $itemImageDisp = "dummy.png";
                
				if($allItemValue->isfeatured == 1){$img_wrapper_featured="img-wrapper";}else{$img_wrapper_featured="";}
				
				$url = url('/');
                //$url2 = ('/item/'.$allItemValue->id);				
                $url2 = ('/item/'.$allItemValue->alias);
				$img = ('/uploads/'.$itemImageDisp);
				
				$linkurl = $url.$url2;				
				$imgurl = $url.$img;
				
				echo $img_wrapper_featured;
				 
                $set_output .= '<div class="col-sm-6 col-md-4 col-lg-3 mt-4 blogBox moreBox" style="padding-bottom: 10px !important;">
								<div class="card '.$img_wrapper_featured.'">
								<div class="box large">
									<a href="'.$linkurl.'" class="itemviewlink">
										<img class="child" src="'.$imgurl.'" alt="'.substr($allItemValue->title,0,25).'">
									</a>
							    </div>								
								<div class="card-block">
								<h4 class="card-title mt-3">'.substr($allItemValue->title,0,24).'</h4>
								<h6 class="card-title mt-3">';
								if( $allItemValue->show_price == 1) {
				 $set_output .= '<a href="'.$linkurl.'" class="itemviewlink">&#x20b9;'.$allItemValue->price.'</a>';
								}else{
				 $set_output .= '<a href="'.$linkurl.'" class="itemviewlink">.</a>';
								}
				 $set_output .= '</h6>
				                <div class="meta">';
		                         if( $allItemValue->address1) {
				 $set_output .='<a href="tel:'.$allItemValue->phone.'"><i class="glyphicon glyphicon-earphone"></i>&nbsp;&nbsp;'. substr( $allItemValue->phone,0,26).'</a>';
								 }
	             $set_output .='</div>
				                <div class="card-text">
								<a href="'.$linkurl.'" class="itemviewlink">';
								if( $allItemValue->address1) { 
						$set_output.='<p>'.substr($allItemValue->address1,0,20).'</p>';
								} 
								if( $allItemValue->address2) { 
						$set_output.='<p>'.substr($allItemValue->address2,0,20).'</p>';
								} 
								if( $allItemValue->address3) { 
						$set_output.='<p>'.substr($allItemValue->address3,0,20).'</p>';
								}
								if( $allItemValue->zipcode)  { 
						$set_output.='<p>'.$allItemValue->zipcode.'</p>';
								}
				$set_output .='</a>';
				$set_output .='</div>
							   </div>
							   <div class="card-footer">
	                           <small><a href="'.$linkurl.'" class="itemviewlink">'.date('dS M, Y g:i a',strtotime($allItemValue->created_at)).'</a></small>
							   <a href="'.$linkurl.'" class=" float-right badge badge-info">show</a>
							   </div>
							   </div>
							   </div>'; 

			}
			
			$img_wrapper_featured="";
			if(count($allAdvt) > 0){
				foreach($allAdvt as $allAdvtValue)
	            {
					$url1 = url('/');
					$img2 = ('/uploads/'.$allAdvtValue->advt_image);
					$imgurl2 = $url1.$img2;
					$linkurl2 = $allAdvtValue->advt_url;				
					$set_output.= '<div class="col-sm-6 col-md-4 col-lg-3 mt-4 blogBox moreBox" style="padding-bottom: 10px !important;">
									<div class="card '.$img_wrapper_featured.'">
									<div class="box large">';
					if($allAdvtValue->advt_type == 1){
									
						$set_output.= '<a href="'.$linkurl2.'" class="itemviewlink" target="_blank">
											<img class="child" src="'.$imgurl2.'" alt="'.substr($allAdvtValue->advt_name,0,20).'">
											</a>';
					}else{
						$set_output.= $allAdvtValue->advt_desc;
					}

					$set_output.= '</div></div></div>';
				}
			}
			
            $set_output .= '<div id="remove-row" class="col-sm-12 col-md-12 col-lg-12 mt-12" style="text-align: center;">
                               <button id="btn-more" data-id="'.$allItemValue->id.'" class="btn btn-danger">Load More <i class="fa fa-refresh" aria-hidden="true"></i></button>
                            </div>';
            
            echo $set_output;
        
    }
    
	
    }
	

    public function category_index()
    {
        $Category = new Category;
        $allCategories = $Category->getCategories();  
        //Config::write('laralist.item_per_page', 'http://octobercms.com');

        $allItem = Item::where('published',1)->get();
        
        //dd($allItem->count());
        return view('frontend.category_listing', compact('allCategories','allItem'));
    }
	
	
	public function aboutus(){
        
        return view('frontend.aboutus');
		
    }
		
	public function privacypolicy(){
        
        return view('frontend.privacypolicy');
		
    }
	
	
	public function contactus(){
        
        return view('frontend.contactus');
		
    }
	
	
	/**
     * @Function name : sendMail
     * @Purpose : sendMail
     * @Added by : Santhosh    
     * @Added Date : Feb 05, 2020
     */
    
    public function sendMail(Request $request)
    {
    
        $form_post = $request->all();
	       
        if($form_post) {
			
			           		        
			$name = $form_post['name'];   
            $email = $form_post['email'];  
            $phone = $form_post['phone'];    			
			$form_message = $form_post['message'];          		        

			$subject = "Contact Us";
			$to_email= 'dummyproj007@gmail.com';
			$from_email= $email;
			
		
			$message ="<h3>Contact Us</h3>"."<br/>";
			$message.= $form_message."<br/><br/>";
			$message.= 'Thanks!<br />';
			$message.= $name."<br/>";
			$message.= "Phone :".$phone."<br/>";

			//print_r($message);
			//exit;
			
			$send_mail = Mail::send(array(), array(), function ($email) use ($subject, $to_email, $from_email, $message) {
			$email->to($to_email)
				   ->from($from_email)
				   ->subject($subject)
				   ->setBody(nl2br($message), 'text/html');
			});
			
		  $request->session()->flash('alert-success','Mail Send successfully.');
     
	    }
		return redirect()->route('frontend.contactus');
		
	}
	   
	   
	
}