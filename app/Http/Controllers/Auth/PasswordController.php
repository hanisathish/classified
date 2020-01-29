<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\UserMaster;
use Redirect;
use Validator;
use Mail;
use DB;


class PasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    use ResetsPasswords;

    /**
     * Create a new password controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware($this->guestMiddleware());
    }
	
	
	/**
     * @Function name : userForgotPassword
     * @Purpose : userForgotPassword
     * @Added by : Santhosh    
     * @Added Date : Jan 29, 2020
     */
    
    public function userForgotPassword(Request $request)
    {
        
    
        $form_post = $request->all();

        //print_r($form_post);
        //exit;
		
	    $data['title'] = $this->browserTitle . " - Change Password";
       
        if($form_post) {
			
		        $email = $form_post['email'];
                		        
				$User = UserMaster::where('email', email)->first();
				
				if ($User) {

                    $id = $User->id;

                    $subject = "Password Reset";
					$to_email= $email;
		            $from_email='dummyproj007@gmail.com';
					
					$pwd_url = url("/") . "/changecustomerpassword/".$User->id;
					
					$message ="<h3>Password Recovery</h3>"."<br/>";
		            $message.= "Hello,<br>";		
					$message.= "<h4>Click the link below and you will be redirected to a page from which you can set a new password.</h4><br />";
					$message.= '<a href="' . $pwd_url . '" class="btn bg-blue btn-block">Reset Password</a><br/><br />';
					$message.= 'Thanks!<br />';	
		

					//print_r($message);
					//exit;				
					
					
					$send_mail = Mail::send(array(), array(), function ($email) use ($subject, $to_email, $from_email, $message) {
		            $email->to($to_email)
				           ->from($from_email)
					       ->subject($subject)
					       ->setBody(nl2br($message), 'text/html');
                     });
                      
                    
                }
                else 
				{ 
                    $messsages = array(
                        'error' => 'Email does not exists',
                    );
                    
                    return response()->json(array(
                        'status' => false,
                        'errors' => $messsages
                    ), 200);

                    //return redirect()->back()->with('message', 'Email does not exists');
						
				} 
			}
	   }


    /**
     * Change password.
     *
     * @param Request $request
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function changeCustomerPassword(Request $request) {
		
		
		//dd($request->segment(2));
		
        $data['title'] = $this->browserTitle . " - Change Customer Password";
		
		$data['crudOrganizationData'] = $this->crudOrganizationData;
		
		$data['getUserListsCount'] = 0;
        $data['getUserLists'] = '';
	  
        if($request->segment(2) > 0) {
			
            $whereArray = array('id'=>$request->segment(2));			
            $getUserLists = UserMaster::crudUserMaster($whereArray,null,null,null,null,null,null,'1')->get();
			
			//dd($getUserLists);
			
			$data['getUserListsCount'] = $getUserLists->count();
            $data['getUserLists'] = $getUserLists[0];
			
		}			
   		
        $data['view_action'] = $request->segment(2);
		$data['recover_pwd'] = "recovery";
		return view('auth.customer_recover_pwd', $data);
    }



    /**
     * Change password.
     *
     * @param Request $request
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function customerPwdStore(Request $request) {

        DB::beginTransaction();

        try {
			
			$id = $request->id;
			
            $customerData = $request->except('submitCusPwd');
			
			$customerData['password'] = bcrypt($request->input('password'));

            unset($customerData['_token'],$customerData['submitCusPwd'],$customerData['repeat_password']);
						
            if($id > 0) {
							
                UserMaster::updateUserMaster($customerData,array('id'=>$id));
				
            }
			
            DB::commit();
            // all good
        } catch (\Exception $e) {
            DB::rollback();
            // something went wrong
            dd("error",$e);
            //return redirect('/banker_dashboard#tab_3/error');
        }
        return redirect('/');
    }
	
	
}
