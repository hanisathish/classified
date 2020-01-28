@extends('layouts.app')


 {!! Html::style('angularjs/tags/ng-tags-input.min.css') !!} 


@section('content')

@if($errors->has())
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h4><i class="icon fa fa-ban"></i> Alert!</h4>                  
          @foreach ($errors->all() as $error)  
          {{ $error }}</br>                      
          @endforeach
      </div>
    @endif  

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html"><i class="fa fa-home home_1"></i></a> / <span>Post your Ad</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Post an Ad</h2>
			<div class="post-ad-form">
        {!! Form::open(['route' => 'frontend.post.store','files' => true , 'class' =>'form-horizontal','id' =>'item-form']) !!}              
          
          {!! Form::label('inputTitle', 'Title', array('class'=> '')) !!}
          {!! Form::text('title', null, ['class'=>'', 'placeholder'=>'Enter Title', 'id'=>'inputTitle']) !!}
          <div class="clearfix"></div>

          {!! Form::label('inputPublished', 'Published', array('class'=> '')) !!}
          <input type="radio" name="published" class="minimal"  value="1" checked> Yes 
          <input type="radio" name="published" class="minimal" value="0"> No
          <div class="clearfix"></div>

          {!! Form::label('inputPrice', 'Price', array('class'=> '')) !!}
          {!! Form::text('price', null, ['class'=>'', 'placeholder'=>'Enter Price', 'id'=>'inputPrice']) !!}
          <div class="clearfix"></div>

          {!! Form::label('inputCategory', 'Category', array('class'=> '')) !!}                        
          <select name="category_id" class=" select2" id="inputCategory">
            @foreach($categories as $category)
              <option value="{!!$category->id!!}">{!!$category->title!!}</option>
              if($category->subCategory)
                  @foreach($category->subCategory as $subcategory)
                      <option value="{!!$subcategory->id!!}">|--{!!$subcategory->title!!}</option>
                  @endforeach    
              @end if
            @endforeach
          </select>
          <div class="clearfix"></div>

          {!! Form::label('inputDescription', 'Description', array('class'=> '')) !!}             
          {!! Form::textarea('description',null,['id' => 'inputDescription' ,'size' => '75x10']) !!}                              
          <div class="clearfix"></div>

          {!! Form::label('inputCountry', 'Country', array('class'=> '')) !!}                        
          <select name="country_id" class=" select2" id="inputCountry">
              @foreach($countires as $country)
                <option value="{!!$country->id!!}">{!!$country->name!!}</option>
              @endforeach
          </select>
          <div class="clearfix"></div>

          {!! Form::label('inputAddress1', 'State', array('class'=> '')) !!}
          {!! Form::text('address1', null, ['class'=>'', 'placeholder'=>'Enter State', 'id'=>'inputAddress1']) !!}                        
          <div class="clearfix"></div>

          {!! Form::label('inputAddress2', 'City', array('class'=> '')) !!}
          {!! Form::text('address2', null, ['class'=>'', 'placeholder'=>'Enter City', 'id'=>'inputAddress2']) !!}                        
          <div class="clearfix"></div>

          {!! Form::label('inputZipcode', 'Zip Code', array('class'=> '')) !!}
          {!! Form::text('zipcode', null, ['class'=>'', 'placeholder'=>'Enter Zip code', 'id'=>'inputZipcode']) !!}          
          <div class="clearfix"></div>

          {!! Form::label('inputAddress3', 'Address', array('class'=> '')) !!}
          {!! Form::textarea('address3',null,['id' => 'inputAddress3' ,'size' => '75x5']) !!}                        
          <div class="clearfix"></div>

          {!! Form::label('inputPhone', 'Mobile', array('class'=> '')) !!}
          {!! Form::text('phone', null, ['class'=>'', 'placeholder'=>'Enter Mobile', 'id'=>'inputPhone']) !!}                        
          <div class="clearfix"></div>

          <!-- {!! Form::label('inputTags', 'Tags', array('class'=> '')) !!}
          @include('frontend.angular-tags')    
          <div class="clearfix"></div> -->

          {!! Form::label('inputImage', 'Image', array('class'=> '')) !!}
          <input type="file" name="image[]" id="image" multiple="" >

          <br/>
		  
		  <!--<label for="profile_image"></label>
          <img id="preview_img" src="{{asset('uploads/NoImage.png')}}" class="" width="200" height="150"/>-->
			
          <div id="image_preview" align="center"></div>
          <div class="clearfix"></div>

          {!! Form::submit( 'Save', ['class'=>'btn btn-info pull-right']) !!}


        {!! Form::close() !!}

 
				<!-- <div class="upload-ad-photos">
				<label>Photos for your ad :</label>	
					<div class="photos-upload-view">
						<form id="upload" action="index.html" method="POST" enctype="multipart/form-data">

						<input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />

						<div>
							<input type="file" id="fileselect" name="fileselect[]" multiple="multiple" />
							<div id="filedrag">or drop files here</div>
						</div>

						<div id="submitbutton">
							<button type="submit">Upload Files</button>
						</div>

						</form>

						<div id="messages">
						<p>Status Messages</p>
						</div>
						</div>
					<div class="clearfix"></div>
						<script src="js/filedrag.js"></script>
				</div> -->
					<!-- <div class="personal-details">
					<form>
						<label>Your Name <span>*</span></label>
						<input type="text" class="name" placeholder="">
						<div class="clearfix"></div>
						<label>Your Mobile No <span>*</span></label>
						<input type="text" class="phone" placeholder="">
						<div class="clearfix"></div>
						<label>Your Email Address<span>*</span></label>
						<input type="text" class="email" placeholder="">
						<div class="clearfix"></div>
						<p class="post-terms">By clicking <strong>post Button</strong> you accept our <a href="terms.html" target="_blank">Terms of Use </a> and <a href="privacy.html" target="_blank">Privacy Policy</a></p>
					<input type="submit" value="Post">					
					<div class="clearfix"></div>
					</form>
					</div> -->
			</div>
		</div>	
	</div>
	<!-- // Submit Ad -->
 
@endsection

@section('footer-script')

<style>
input[type="file"] {
  display: block;
}
.imageThumb {
  max-height: 75px;
  border: 2px solid;
  padding: 1px;
  cursor: pointer;
}
.pip {
  display: inline-block;
  margin: 10px 10px 0 0;
}
.remove {
  display: block;
  background: #444;
  border: 1px solid black;
  color: white;
  text-align: center;
  cursor: pointer;
}
.remove:hover {
  background: white;
  color: black;
}
</style>


<script type="text/javascript">
$(document).ready(function() {
  if (window.File && window.FileList && window.FileReader) {
    $("#image").on("change", function(e) {
      var files = e.target.files,
        filesLength = files.length;
      for (var i = 0; i < filesLength; i++) {
        var f = files[i]
        var fileReader = new FileReader();
        fileReader.onload = (function(e) {
          var file = e.target;
          $("<span class=\"pip\">" +
            "<img style='width:60px; height:60px;' class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
            "<br/><span class=\"remove\">Remove image</span>" +
            "</span>").insertAfter("#image");
          $(".remove").click(function(){
            $(this).parent(".pip").remove();
          });          
        });
        fileReader.readAsDataURL(f);
      }
    });
  } else {
    alert("Your browser doesn't support to File API")
  }
});


 
	/*
	
	 // Image Preview
	 
	 function loadPreview(input, id) {	
		id = id || '#preview_img';
		if (input.files && input.files[0]) {
			var reader = new FileReader();
	 
			reader.onload = function (e) {
				$(id)
						.attr('src', e.target.result)
						.width(200)
						.height(150);
			};
	 
			reader.readAsDataURL(input.files[0]);
		}
	 }
	 
    */
  
	
   /* $("#image").change(function(){
	  
	//$('#image_preview').html("");
	 
	 var total_file = document.getElementById("image").files.length;

	 for(var i=0;i<total_file;i++)
	 {
	  console.log(document.getElementById("image").files[i]);
	  $('#image_preview').append("<br/><input type='hidden' name='multifileshere[]' value='"+document.getElementById("image").files[i].name+"' readonly /><img style='width:80px;height:80px;' src='"+URL.createObjectURL(event.target.files[i])+"'><br/>");
	 }

	});*/


  if( typeof(laralist) == 'undefined')
    var laralist={};

    laralist.queueLimit= "<?php echo config('laralist.max_image_post');?>";
</script>

{!! JsValidator::formRequest('App\Http\Requests\ItemRequest',  '#item-form') !!}

@endsection