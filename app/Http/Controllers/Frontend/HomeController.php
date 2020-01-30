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

class HomeController extends Controller
{    

    /**
     * Show the home page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Category = new Category;
        $allCategories = $Category->getCategories();  
        //Config::write('laralist.item_per_page', 'http://octobercms.com');

        $allItem = Item::where('published',1)->get();
        //dd($allItem->count());
        return view('frontend.home', compact('allCategories','allItem'));
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
	
	public function contactus(){
        
        return view('frontend.contactus');
		
    }
	
	
	/**
     * @Function name : sendMail
     * @Purpose : sendMail
     * @Added by : Santhosh    
     * @Added Date : Jan 30, 2020
     */
    
    public function sendMail(Request $request)
    {
    
        $form_post = $request->all();

        //print_r($form_post);
        //exit;
		       
        if($form_post) {
			
			$email = $form_post['email'];                		        
			$form_message = $form_post['message'];                		        
			$name = $form_post['name'];                		        

			$subject = "Contact Us";
			$to_email= 'dummyproj007@gmail.com';
			$from_email= $email;
			
		
			$message ="<h3>Contact Us</h3>"."<br/>";
			$message.= $form_message."<br/>";
			$message.= 'Thanks!<br />';
			$message.= $name."<br/>";

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