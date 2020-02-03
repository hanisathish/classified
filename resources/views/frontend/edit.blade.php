
@extends('layouts.app')

@section('content')

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs">
			<a href="index.html"><i class="fa fa-home home_1"></i></a> / 
			<a href="categories.html">Categories</a> / 
			<span>Mobiles</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
    <!-- Mobiles -->
	<div class="total-ads main-grid-border">
		<div class="container">
    <br/><br/>
    @if($errors->has())
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h4><i class="icon fa fa-ban"></i> Alert!</h4>                  
          @foreach ($errors->all() as $error)  
          {{ $error }}</br>                      
          @endforeach
      </div>
    @endif  


    
    {!! Form::open(['route' => 'frontend.post.update','files' => true , 'class' =>'form-horizontal']) !!}    
              {!! Form::hidden('id', $item->id) !!}
      <div class="box-body">

        <div class="form-group">
          {!! Form::label('inputTitle', 'Title', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            {!! Form::text('title', $item->title, ['class'=>'form-control', 'placeholder'=>'Enter Title', 'id'=>'inputTitle']) !!}
          </div>
        </div>

        <div class="form-group">
          {!! Form::label('inputPublished', 'Published', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            <input type="radio" name="published" class="minimal"  value="1" @if($item->published == 1){{'checked'}} @endif > Yes 
            <input type="radio" name="published" class="minimal" value="0"  @if($item->published == 0){{'checked'}} @endif > No
          </div>
        </div>

        <div class="form-group">
          {!! Form::label('inputPrice', 'Price', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            <div class="input-group">
              <span class="input-group-addon">$</span>                             
              {!! Form::text('price', $item->price, ['class'=>'form-control', 'placeholder'=>'Enter Price', 'id'=>'inputPrice']) !!}
            </div>
          </div> 
        </div>

        
        <div class="form-group">
          {!! Form::label('inputCategory', 'Category', array('class'=> 'col-sm-2 control-label')) !!}                        
          <div class="col-sm-10">
            <select name="category_id" class="form-control select2" id="inputCategory">
            @foreach($categories as $category)
              <option value="{!!$category->id!!}" @if($item->category_id == $category->id){{'selected'}} @endif >{!!$category->title!!}</option>
              if($category->subCategory)
                  @foreach($category->subCategory as $subcategory)
                      <option value="{!!$subcategory->id!!}" @if($item->category_id == $subcategory->id){{'selected'}} @endif>|--{!!$subcategory->title!!}</option>
                  @endforeach    
              @end if
            @endforeach
            </select>
          </div>  
        </div> 


        <div class="form-group">
          {!! Form::label('inputDescription', 'Description', array('class'=> 'col-sm-2 control-label')) !!}             
          <div class="col-sm-10">
            {!! Form::textarea('description',$item->description,['id' => 'inputDescription' ,'size' => '75x10']) !!}                              
          </div>
        </div> 

        <div class="form-group">
          {!! Form::label('inputCountry', 'Country', array('class'=> 'col-sm-2 control-label')) !!}                        
          <div class="col-sm-10">
            <select name="country_id" class="form-control select2" id="inputCountry">
              @foreach($countires as $country)
                <option value="{!!$country->id!!}" @if($item->country_id == $country->id){{'selected'}} @endif >{!!$country->name!!}</option>
              @endforeach
            </select>
          </div>
        </div> 


        <div class="form-group">
          {!! Form::label('inputAddress1', 'State', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            {!! Form::text('address1', $item->address1, ['class'=>'form-control', 'placeholder'=>'Enter State', 'id'=>'inputAddress1']) !!}                        
          </div>
        </div>
        <div class="form-group">
          {!! Form::label('inputAddress2', 'City', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            {!! Form::text('address2', $item->address2, ['class'=>'form-control', 'placeholder'=>'Enter City', 'id'=>'inputAddress2']) !!}                        
          </div>
        </div>


        <div class="form-group">
          {!! Form::label('inputZipcode', 'Zip Code', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            {!! Form::text('zipcode', $item->zipcode, ['class'=>'form-control', 'placeholder'=>'Enter Zipcode', 'id'=>'inputZipcode']) !!}          
          </div>
        </div>

          <div class="form-group">
          {!! Form::label('inputAddress3', 'Address', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">
            {!! Form::textarea('address3',$item->address3,['id' => 'inputAddress3' ,'size' => '75x5']) !!}                        
          </div>
        </div>
		
		@foreach($images as $item)
			@if( $item->image)  
			<div class="form-group">
			{!! Form::label('inputImage', 'Existing Image', array('class'=> 'col-sm-2 control-label')) !!}
			  <div class="col-sm-10">
				<img src="{!!asset('/uploads/'. $item->image )!!}" style="width:15%" />
                <a class="btn btn-danger delete_images" href="javascript:void(0);" id="{{$item->id}}">Delete</a>	
			  </div>
			</div>
			@endif 
		@endforeach
		

        <div class="form-group">
          {!! Form::label('inputImage', 'Image', array('class'=> 'col-sm-2 control-label')) !!}
          <div class="col-sm-10">           
            <input type="file" name="image[]" id="image" multiple="">

          <!--      @include('frontend.angular-image')      
              <br>
               @include('frontend.angular-upload')       -->

          </div>
        </div>

        <div class="box-footer">
          {!! Form::submit( 'Save', ['class'=>'btn btn-info pull-right']) !!}
        </div>
    </div> 

    <!-- /.box-footer -->
    {!! Form::close() !!}
		</div>	
	</div>
	<!-- // Mobiles -->
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

<script type="text/javascript" src="{{asset('frontend/js/jquery.min.js')}}"></script>
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

var siteUrl = '<?php echo url('/'); ?>';

$('.delete_images').click(function(){
	
  if( confirm('Are you sure?') )
  {
    var id = $(this).attr('id');
	
	//alert(id);
	
	var token = $( "input[name*='_token']" ).attr('value');
	
	//var dataString = 'itemId=' + id + '&token='+token;
	
	var dataString = 'itemId=' + id;
	
	//alert(dataString);
	
	//alert(siteUrl);
	
	
	
	 $.ajax({
		url: siteUrl + '/image/items_delete',
		async: true,
		type: "GET",
		data: dataString,
		dataType: "html",
		contentType: false,
		cache: false,
		processData: false,
		success: function (data)
		{
			//alert(data);
			location.reload();
		},
		error: function (jqXHR, textStatus, errorThrown) {
		   //alert('error: ' + jqXHR.responseText + textStatus +  errorThrown);
		}
     });
  }
});


</script>

<script type="text/javascript">

if( typeof(laralist) == 'undefined')
    var laralist={};

  laralist.queueLimit= "<?php echo config('laralist.max_image_post');?>";

  var objects = [];
  var imageitems= null;
  <?php foreach($images as $image) {?>
    objects[objects.length] =  {src:'<?php echo asset('uploads') .'/' .$image->image;?>', id:'<?php echo $image->id;?>'};
  <?php } ?>
   imageitems = objects;
</script>
@endsection       