@extends('layouts.app')

@section('content')


<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs">
			<a href="index.html"><i class="fa fa-home home_1"></i></a> / 
			<a href="all-classifieds.html">All Ads</a> / 
			<a href="cars.html">Cars</a> / 
			<span>Car name</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!--single-page-->
	<div class="single-page main-grid-border">
		<div class="container">
			<div class="product-desc">
				<div class="col-md-7 product-view">
					<h2>{!!$item->title!!}</h2>
          <p> <i class="glyphicon glyphicon-map-marker"></i><a href="#">state</a>, <a href="#">city</a>| Added at 06:55 pm, Ad ID: 987654321</p>
          <div class="flexslider">
            <ul class="slides">
          @if(count($item_images) >1)
          {{--*/ $i = 0 /*--}}
            @foreach($item_images as $item_image)
						
							<li data-thumb="{!!asset('uploads/'.$item_image->image) !!}">
								<img src="{!!asset('uploads/'.$item_image->image) !!}" />
							</li>
							<!-- <li data-thumb="http://localhost/classified/public/uploads/2.jpg">
								<img src="http://localhost/classified/public/uploads/2.jpg" />
							</li>
							<li data-thumb="http://localhost/classified/public/uploads/3.jpg">
								<img src="http://localhost/classified/public/uploads/3.jpg" />
							</li>
							<li data-thumb="http://localhost/classified/public/uploads/4.jpg">
								<img src="http://localhost/classified/public/uploads/4.jpg" />
              </li> -->
              {{--*/ $i++ /*--}}
            @endforeach  
          @else
            <img alt="{!!$item->title!!}" src="http://placehold.it/750x500?text=I{!!$item->title!!}"class="img-responsive">
          @endif
          
						</ul>
					</div>
					<div class="product-details">
						<!-- <h4><span class="w3layouts-agileinfo">Brand </span> : <a href="#">Company name</a><div class="clearfix"></div></h4>
						<h4><span class="w3layouts-agileinfo">Views </span> : <strong>150</strong></h4>
						<h4><span class="w3layouts-agileinfo">Fuel </span> : Petrol</h4> -->
						<h4><span class="w3layouts-agileinfo">Description</span> :<p>{!!$item->description!!}</p><div class="clearfix"></div></h4>
					
					</div>
				</div>
				<div class="col-md-5 product-details-grid">
					<div class="item-price">
						<div class="product-price">
							<p class="p-price">Price</p>
							<h3 class="rate">{!!$defaultCountry->symbol!!} {!!$item->price!!}</h3>
							<div class="clearfix"></div>
						</div>
						<!-- <div class="condition">
							<p class="p-price">Condition</p>
							<h4>Good</h4>
							<div class="clearfix"></div>
						</div>
						<div class="itemtype">
							<p class="p-price">Item Type</p>
							<h4>Cars</h4>
							<div class="clearfix"></div>
						</div> -->
					</div>
					<div class="interested text-center">
						<h4>Interested in this Ad?<small> Contact the Seller!</small></h4>
            <p><i class="glyphicon glyphicon-earphone"></i>{!! $item->address1!!}</p>
            <address>
              @if( $item->address1) 
            <i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>  
            <strong>{!! $item->address1!!}</strong><br>
            @endif
              @if( $item->address2) {!! $item->address2!!}<br>@endif
              @if( $item->address3) {!! $item->address3!!}<br>@endif
              @if( $item->zipcode) {!! $item->zipcode!!}<br>@endif               
            </address>
					</div>
						<div class="tips">
						<h4>Safety Tips for Buyers</h4>
							<ol>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
							</ol>
						</div>
				</div>
			<div class="clearfix"></div>
			</div>
		</div>
	</div>
  <!--//single-page-->
  
@endSection 


@section('footer-script')


<!-- FlexSlider -->
<script type="text/javascript" src="{{asset('frontend/js/jquery.flexslider.js')}}"></script>
					  

						<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script>
					<!-- //FlexSlider -->
  
<script type="text/javascript">
  $(document).ready(function($){
    
      $('#btn-send-message').click(function(){
        var type= 'POST';
        var task_url = '/item/sendmessage';

        var formData ={
          message: $('#message').val(),
          id: $("input[name*='item_id']").attr('value'),
          '_token': $( "input[name*='_token']" ).attr('value')
        };

        $.ajax({
          type: type,
          data: formData,
          dataType: 'json',
          url: task_url,
          success:function(response){
          }

        });
      });
  });
</script>

@endsection       