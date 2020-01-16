@extends('layouts.app')


@section('content')

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
    <div class="container">
        <span class="agile-breadcrumbs">
        <a href=""><i class="fa fa-home home_1"></i></a> / 
        <a href="">All Categories</a>   <!-- all-classifieds.html-->
        <!-- <a href="cars.html">Cars</a> / 
        <span>Car name</span> -->
    </span>
    </div>
</div>

<div class="categories-section main-grid-border">
    <div class="container">
      <h2 class="w3-head">All Categories</h2>
      <div class="category-list">
        <div id="parentVerticalTab">
          <div class="agileits-tab_nav">
          <ul class="resp-tabs-list ">

            @if($allCategories->count() > 0)
              @foreach($allCategories as $categoryData)
                <?php
                $activetab='';
                if($categoryData->id == $category->id){
                  $activetab = "active resp-tab-active";
                }
                ?>
                <li class="{{$activetab}}"><a href="{!!route('frontend.list',array($categoryData->id))!!}" class="hreftabs">{{$categoryData->title}}</a></li>
              @endforeach
            @endif    
            <!-- <li>Mobiles</li>
            <li>Electronics & Appliances</li>
            <li>Cars</li>
            <li>Bikes</li>
            <li>Furniture</li>
            <li>Pets</li>
            <li>Books, Sports & Hobbies</li>
            <li>Fashion</li>
            <li>Kids</li>
            <li>Services</li>
            <li>Jobs</li>
            <li>Real Estate</li> -->
          </ul>
            <a class="w3ls-ads" href="all-classifieds.html">View all Ads</a>
          </div>
          <div class="resp-tabs-container hor_2">
            <!-- <span class="active total" style="display:block;" data-toggle="modal" data-target="#myModal"><strong>All USA</strong> (Select your city to see local ads)</span> -->
            <div>
              <div class="category">
                <div class="category-img">
                  <img src="{{asset('uploads/'. $category->logo)}}" />
                </div>
                <div class="category-info">
                  <h4>{{$category->title}}</h4>
                  <!-- <span>{{$category->itemCount}} Ads</span> -->
                  <a href="all-classifieds.html">View all Ads</a>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="sub-categories">
                <ul>
                  @if($allCategories->count() > 0)
                    @foreach($allCategories as $categoryData)
                    @if($categoryData->id == $category->id)
                      @foreach($categoryData->subCategory as $subcategory)
                        
                        <!-- @if($categoryData->id === $subcategory->parent_id) -->
                          <li><a href="">{!!$subcategory->title!!} <span class="badge">{!!$subcategory->itemCount!!}</span></a></li>
                        <!-- @endif -->
                      @endforeach
                    @endif  
                    @endforeach
                  @endif  

                  
                </ul>
              </div>
            </div>
             
             
             
             
            
            
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>

<!-- 
  <div class="row">
  	  @foreach($items as $item)
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail">
          @if(empty($item->image))
	      <img alt="{!!$item->title!!}" src="http://placehold.it/100X200?text=Image" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
	      @else
          <img alt="{!!$item->title!!}" src="{!!asset('uploads/'.$item->image) !!}" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          @endif
          <div class="caption">
	        <h3>{!! $item->title!!}</h3>	        
	        <p>{!! str_limit($item->description, 100)!!}</p>
            <p>Category: {!! $item->category->title !!}    </p>
	        <p>           
    			{!! Html::linkRoute('frontend.item.show', 'View', array($item->id) ,['class' => "btn btn-primary"]) !!} 
                @if(Auth::user())
                    @if(Auth::user()->id == $item->user_id)
                        {!! Html::linkRoute('frontend.post.edit', 'Edit', array($item->id) ,['class' => "btn btn-default"]) !!}     	                        
                    @endif
                @endif
                 
            </p>
	      </div>
	    </div>
	   </div>

	   @endforeach

	    <hr>

        <div class="row text-center">
            <div class="col-lg-12">
               {!! $items->links() !!}      
            </div>
        </div>
  
  </div> -->

@endsection




@section('footer-script')
<style type="text/css">
  .hreftabs{
    color: #000;
    font-family: 'Ubuntu Condensed', sans-serif,'Oxygen', sans-serif;
  }
</style> 

<script type="text/javascript">
    $(document).ready(function() {
//alert('as');
        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>
@endsection       
