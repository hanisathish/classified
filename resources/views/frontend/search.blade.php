@extends('layouts.app')


@section('content')

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
    <div class="container">
        <span class="agile-breadcrumbs">
        <a href=""><i class="fa fa-home home_1"></i></a> / 
        <a href="">Search Results</a>   <!-- all-classifieds.html-->
        <!-- <a href="cars.html">Cars</a> / 
        <span>Car name</span> -->
    </span>
    </div>
</div>
<!-- Products -->
<div class="total-ads main-grid-border">
    <div class="container">
      {!! Form::open(['route' => 'frontend.item.search', 'method' =>'get',  'files' => true , 'class' =>'form-horizontal']) !!}             
        <div class="select-box">
          <!-- <div class="select-city-for-local-ads ads-list">
            <label>Select your city to see local ads</label>
              <select>
                                
                    </select>
          </div> -->
          @if($allCategories->count() > 0)
            
            <div class="browse-category ads-list">
              <label>Browse Categories</label>
              <select class="selectpicker show-tick" data-live-search="true" name="categorySearchId" id="categorySearchId">
                <option data-tokens="" value="">All</option>
                  
                @foreach($allCategories as $categoryData)
                  <option value="{!!$categoryData->id!!}" @if($catId == $categoryData->id ) {{ 'selected' }} @endif >{!!$categoryData->title!!}</option>
                @endforeach
              </select>
              
            </div>

          @endif
          <div class="search-product ads-list">
            <label>Search for a specific product</label>
            <div class="search">
              <div id="custom-search-input">
              <div class="input-group">
                <!-- <input type="text" class="form-control input-lg" placeholder=" " /> -->
                <input type="text" class="form-control input-lg" placeholder="e.g. house" name="q" value="@if( isset($searchQuery) && !empty($searchQuery)){{$searchQuery}}@endif" > 

                <span class="input-group-btn">
                  <button class="btn btn-info btn-lg" type="submit">
                    <i class="glyphicon glyphicon-search"></i>
                  </button>
                </span>
              </div>
            </div>
            </div>
          </div>

          <div class="search-product ads-list">
            <label>&nbsp;</label>
            <h2><a href="{{URL::asset('detail_list')}}"><span class="label label-danger"><i class="glyphicon glyphicon-refresh"></i> Reset Filter</span></a></h2>
             
          </div>
          <div class="clearfix"></div>
        </div>
      </form>
       
      <div class="ads-grid">
        <div class="side-bar col-md-3">
           
        
        <div class="range" style="display: none;">
          <h3 class="agileits-sear-head">Price range</h3>
              <ul class="dropdown-menu6">
                <li>
                                  
                  <div id="slider-range"></div>             
                    <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                  </li>     
              </ul>
              <!---->
              <script type="text/javascript" src="js/jquery-ui.js"></script>
              <script type='text/javascript'>//<![CDATA[ 
              $(window).load(function(){
               $( "#slider-range" ).slider({
                    range: true,
                    min: 0,
                    max: 9000,
                    values: [ 50, 6000 ],
                    slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                    }
               });
              $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

              });//]]>  

              </script>
              
        </div>
        <div class="w3ls-featured-ads">
          <h2 class="sear-head fer">Featured Ads</h2>
          @if($featuredItems->count() > 0)
            @foreach($featuredItems as $item)
              <div class="w3l-featured-ad">
                <a href="{{URL::asset('/item/'.$item->id)}}">
                  <div class="w3-featured-ad-left">
                    @if(empty($item->image))  
                        <img alt="{!!$item->title!!}" src="http://placehold.it/100X80?text=Image" data-holder-rendered="true" style="display: block;">
                      @else
                        <img alt="{!!$item->title!!}" src="{!!asset('uploads/'.$item->image) !!}" data-holder-rendered="true" style="display: block;">
                      @endif
                  </div>
                  <div class="w3-featured-ad-right">
                    <h4>{!! str_limit($item->title, 100)!!}</h4>
                    <p>{!!$defaultCountry->symbol!!} {!! $item->price!!}</p>
                  </div>
                  <div class="clearfix"></div>
                </a>
              </div>
            @endforeach  
          @endif    
          <div class="clearfix"></div>
        </div>
        </div>
        <div class="agileinfo-ads-display col-md-9">
          <div class="wrapper">         
          <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
            <li role="presentation" class="active">
              <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
              <span class="text">All Ads</span>
              </a>
            </li>
            <!-- <li role="presentation" class="next">
              <a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
              <span class="text">Ads with Photos</span>
              </a>
            </li>
            <li role="presentation">
              <a href="#samsa" role="tab" id="samsa-tab" data-toggle="tab" aria-controls="samsa">
              <span class="text">Company</span>
              </a>
            </li> -->
            </ul>
            <div id="myTabContent" class="tab-content">
            <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
               <div>
                        <div id="container">
                <!-- <div class="view-controls-list" id="viewcontrols">
                  <label>view :</label>
                  <a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
                  <a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
                </div> -->
                <div class="sort">
                   <!-- <div class="sort-by">
                    <label>Sort By : </label>
                    <select>
                            <option value="">Most recent</option>
                            <option value="">Price: Rs Low to High</option>
                            <option value="">Price: Rs High to Low</option>
                    </select>
                     </div> -->
                   </div>
                <div class="clearfix"></div>
              <ul class="list">
                
                @if($items->count() > 0)
                  @foreach($items as $item)
                  
                  <?php
                  $url_al=$item->alias;
                  ?>
                
                    <a href="{{URL::asset('/item/'.$url_al)}}">
                      <li>
                      @if(empty($item->image))  
                        <img alt="{!!$item->title!!}" src="http://placehold.it/50X40?text=Image" data-holder-rendered="true" style="display: block;">
                      @else
                        <img alt="{!!$item->title!!}" src="{!!asset('uploads/'.$item->image) !!}" data-holder-rendered="true" style="display: block;">
                      @endif

                      <section class="list-left" >
                      <h5 class="title">{!! str_limit($item->title, 100)!!}</h5>
                      <span class="adprice">{!!$defaultCountry->symbol!!} {!! $item->price!!}</span>
                      <p class="catpath">{!! $item->category->title !!}</p>
                      </section>

                      <section class="list-right" >
                      <span class="date">{{date('dS M, Y g:i a',strtotime($item->created_at))}}</span>
                      <span class="cityname">{!! $item->address1!!}</span>
                      </section>
                      @if(Auth::user())
                        @if(Auth::user()->id == $item->user_id)
                            {!! Html::linkRoute('frontend.post.edit', 'Edit', array($item->id) ,['class' => "btn btn-default"]) !!}                               
                        @endif
                      @endif
                      <div class="clearfix"></div>
                      </li> 
                    </a>
                  @endforeach
                @else
                  No Data 
                @endif  

              </ul>
            </div>
              </div>
            </div>
            
            {!! $items->links() !!}      
             
            </div>
          </div>
        </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>  
  </div>
  <!-- // Products -->


@endsection




@section('footer-script')


@endsection       
