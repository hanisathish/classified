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
			<div class="post-ad-form">
        {!! Form::open(['route' => 'frontend.contactus.sendmail','files' => true , 'class' =>'form-horizontal','id' =>'item-form']) !!}              
          
          {!! Form::label('inputName', 'Name', array('class'=> '')) !!}
          <input type="text" name="name" id="name" placeholder="Enter Name" required>
          <div class="clearfix"></div>

          {!! Form::label('inputEmail', 'Email', array('class'=> '')) !!}
          <input type="text" name="email" id="email" placeholder="Enter Email" required>		  
          <div class="clearfix"></div>
		  

          {!! Form::label('inputMessage', 'Message', array('class'=> '')) !!} 		  
          <textarea rows="4" cols="50" name="message" required></textarea>             
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