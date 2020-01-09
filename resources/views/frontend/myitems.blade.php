
@extends('layouts.app')

@section('content')

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs">
			<a href="index.html"><i class="fa fa-home home_1"></i></a> / 
			<a href="categories.html">My Ads</a>
			</span>
		</div>
	</div>
	<!-- //breadcrumbs -->
    <!-- Mobiles -->
	<div class="total-ads main-grid-border">
		<div class="container">
			
			<div class="ads-grid">
				
				<div class="agileinfo-ads-display col-md-12">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">My Ads</span>
						  </a>
						</li>
            
            
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
								<!-- <div class="sort">
								   <div class="sort-by">
										<label>Sort By : </label>
										<select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
										</select>
									   </div>
									 </div> -->
								<div class="clearfix"></div>
							<ul class="list">

              @foreach($items as $item)
              
                <a href="#">
                  <li>
                  @if( $item->image)
                    <a href="{!!URL::route('frontend.item.show',$item->id)!!}"><img class="media-object" src="{{asset('uploads/'.$item->image)}}" alt="{!! $item->alias !!}" height="100"></a>
                  @else
                    <img class="media-object" src="http://placehold.it/170x100?text=Image" alt="{!! $item->alias !!}" height="100">
                @endif 	
                </a>
                <section class="list-left">
									<h5 class="title"><a href="{!!URL::route('frontend.item.show',$item->id)!!}">{!! $item->title !!}</a></h5>
									@if( $item->show_price == 1) 
									<span class="adprice">{!!$defaultCountry->symbol!!} {{$item->price}}</span>
									@else
									<br/>
									@endif
									<p class="catpath">{{$item->category}} </p>
									</section>
									<section class="list-right">
									<span class="date">{{date('dS M, Y g:i a',strtotime($item->created_at))}}</span>
									<span class="cityname">
										@if( $item->region_id)<i class="glyphicon glyphicon-map-marker"></i> {!! $item->region_id!!}
										@else
										&nbsp;
										@endif
									</span>
                  </section>
                  {!! Html::linkRoute('frontend.post.edit', 'Edit', array($item->id) ,['class' => "btn btn-info"]) !!} 
                  {!! Html::linkRoute('frontend.post.delete', 'Delete', array($item->id) ,['class' => "btn btn-danger"]) !!} 
									<div class="clearfix"></div>
              
                
                  @endforeach 
								   
							</ul>
						</div>
							</div>
						</div>
            
            <!-- <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
						 <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="sort">
								   <div class="sort-by">
										<label>Sort By : </label>
										<select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
										</select>
									   </div>
									 </div>
								<div class="clearfix"></div>
							<ul class="list">
								<a href="single.html">
									<li>
									<img src="images/m1.jpg" title="" alt="" />
									<section class="list-left">
									<h5 class="title">There are many variations of passages of Lorem Ipsum</h5>
									<span class="adprice">$290</span>
									<p class="catpath">Mobile Phones » Brand</p>
									</section>
									<section class="list-right">
									<span class="date">Today, 17:55</span>
									<span class="cityname">City name</span>
									</section>
									<div class="clearfix"></div>
									</li> 
								</a> 
							</ul>
						</div>
							</div>
						</div> -->
						<!-- <div role="tabpanel" class="tab-pane fade" id="samsa" aria-labelledby="samsa-tab">
						  <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="sort">
								   <div class="sort-by">
										<label>Sort By : </label>
										<select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
										</select>
									   </div>
									 </div>
								<div class="clearfix"></div>
							<ul class="list">
								    
								<a href="single.html">
									<li>
									<img src="images/m13.jpg" title="" alt="" />
									<section class="list-left">
									<h5 class="title">looked up one of the more obscure Latin words</h5>
									<span class="adprice">$599</span>
									<p class="catpath">Mobile Phones » Brand</p>
									</section>
									<section class="list-right">
									<span class="date">Today, 17:02</span>
									<span class="cityname">City name</span>
									</section>
									<div class="clearfix"></div>
									</li> 
								<div class="clearfix"></div>
								</a>
							</ul>
						</div>
							</div>
            </div> -->
            
            <!-- <div class="row text-center">
                        <div class="col-lg-12">
                        {!! $items->links() !!}               
                        </div>
                    </div> -->
						<ul class="pagination pagination-sm">
							<li>{!! $items->links() !!}               </li>
							
						</ul>
					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>
	<!-- // Mobiles -->
@endsection
