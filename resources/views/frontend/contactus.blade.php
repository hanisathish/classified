@extends('layouts.app')


{!! Html::style('angularjs/tags/ng-tags-input.min.css') !!} 


@section('content')
 

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html"><i class="fa fa-home home_1"></i></a> / <span>Contact Us</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Contact Us</h2>
			<p>Contact Kinfraind for any of your genuine concerns. Your questions relating to companies listing will be addressed as soon as possible. Our directory leads management system is that of world class. Your business query gets loaded to our automatic lead management software, and will match to the verified businesses. Please note Spam messages IP will be blocked without notice.</p>
			<div class="post-ad-form">
        {!! Form::open(['route' => 'frontend.contactus.sendmail','files' => true , 'class' =>'form-horizontal','id' =>'item-form']) !!}              
          
          {!! Form::label('inputName', 'Name', array('class'=> '')) !!}
          <input type="text" name="name" id="name" placeholder="Enter Name" required>
          <div class="clearfix"></div>

          {!! Form::label('inputEmail', 'Email', array('class'=> '')) !!}
          <input type="text" name="email" id="email" placeholder="Enter Email" required>		  
          <div class="clearfix"></div>
		  
		  {!! Form::label('inputPhone', 'Phone', array('class'=> '')) !!}
          <input type="text" name="phone" id="phone" placeholder="Enter Phone" required>	  
          <div class="clearfix"></div>
		  

          {!! Form::label('inputMessage', 'Message', array('class'=> '')) !!} 		  
          <textarea rows="4" cols="50" name="message" required placeholder="Your message goes here..."></textarea>         
          <div class="clearfix"></div>        

          {!! Form::submit( 'Send', ['class'=>'btn btn-info pull-right']) !!}

        {!! Form::close() !!}

			</div>
		</div>	
	</div>
 
@endsection

@section('footer-script')

</script>

{!! JsValidator::formRequest('App\Http\Requests\ItemRequest',  '#item-form') !!}

@endsection