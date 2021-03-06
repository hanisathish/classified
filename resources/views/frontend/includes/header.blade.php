
<header>
		<div class="w3ls-header"><!--header-one--> 
			<div class="w3ls-header-left" style="">
				<p>&nbsp;</p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="{{URL::asset('/listing')}}"><i class="fa fa-list" aria-hidden="true"></i> All Categories</a>
					</li>
					<li class="dropdown head-dpdn">
						@if(Auth::user())
							@if(Auth::user()->hasRole('admin'))
								<a href="{{URL::asset('/admin/dashboard')}}" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
							@else
								
								<!-- <a href="{{URL::asset('/item/sendmessage')}}" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> Messages</a> -->
								@if (Auth::guest())
                        
			                    @else
			                        <li class="dropdown">
			                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
			                                {{ Auth::user()->name }} <span class="caret"></span>
			                            </a>

			                            <ul class="dropdown-menu" role="menu">
			                            	<li><a style="color: #000 !important;" href="{{URL::asset('/post')}}"><i class="fa fa-btn fa-clipboard"></i>Post An Ads</a></li>
			                            	<li><a style="color: #000 !important;" href="{{ url('/profile/profile') }}"><i class="fa fa-btn fa-user"></i>Profile</a></li>
			                            	<li><a style="color: #000 !important;" href="{{ url('/user/myitems') }}"><i class="fa fa-btn fa-list"></i>My Ads</a></li>
			                                <li><a style="color: #000 !important;" href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
			                            </ul>
			                        </li>
			                    @endif
							@endif
						@else
							<a href="{{URL::asset('/login')}}" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> Sign In</a>
						@endif
					</li>
					<li class="dropdown head-dpdn">
						<a href=""><i class="fa fa-question-circle" aria-hidden="true"></i> Help</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="{{URL::asset('aboutus')}}"><i class="fa fa-clipboard" aria-hidden="true"></i> About Us</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="{{URL::asset('contactus')}}"><i class="fa fa-clipboard" aria-hidden="true"></i> Contact Us</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="{{URL::asset('privacy')}}"><i class="fa fa-clipboard" aria-hidden="true"></i> Privacy Policy</a>
					</li>
					<!-- <li class="dropdown head-dpdn">
						<a href="#"><span class="active uls-trigger"><i class="fa fa-language" aria-hidden="true"></i>languages</span></a>
					</li> -->
					<li class="dropdown head-dpdn">
						<div class="header-right">			
	<!-- Large modal -->
			<div class="agile-its-selectregion" style="display: none;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				<i class="fa fa-globe" aria-hidden="true"></i>Select City</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title" id="myModalLabel">
										Please Choose Your Location</h4>
								</div>
								<div class="modal-body">
									 <form class="form-horizontal" action="#" method="get">
										<div class="form-group">
											<select id="basic2" class="show-tick form-control" multiple>
												
													<optgroup label="Indiana">
														<option>Indianapolis</option>
														<option>Fort Wayne</option>
														<option>Evansville</option>
														<option>South Bend</option>
														<option>Hammond</option>														       
													</optgroup>
													
													<optgroup label="Wyoming">
														<option>Cheyenne</option>
														<option>Casper</option>
														<option>Laramie</option>
														<option>Gillette</option>
														<option>Rock Springs</option>
													</optgroup>
											</select>
										</div>
									  </form>    
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
					</li>
				</ul>
			</div>
			
			<div class="clearfix"> </div> 
		</div>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<h1><a href="{{URL::asset('/')}}"><span>K</span>infraindustries</a></h1>
				</div>
				<div class="agileits_search">
					{!! Form::open(['route' => 'frontend.item.search', 'method' =>'get',  'files' => true , 'class' =>'form-horizontal']) !!}             
						<input type="text" class="" placeholder="e.g. house" name="q" value="@if( isset($searchQuery) && !empty($searchQuery)){{$searchQuery}}@endif" > 
						
						@if($allCategoriesListing->count() > 0)
							<select id="agileinfo_search" name="categorySearchId" >
								<option value="">All</option>
									
								@foreach($allCategoriesListing as $categoryData)
									<option value="{!!$categoryData->id!!}" >{!!$categoryData->title!!}</option>
								@endforeach						
							</select>
						@endif

						<button type="submit" class="btn btn-default" title="Search" aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
						
						<a href="{!!route('frontend.home')!!}"  title="Reset Search">
							<i class="fa fa-refresh"  > </i>
						</a>
					</form>
				<a class="post-w3layouts-ad" href="{{URL::asset('/post')}}">Post Free Ad</a>
				</div>	
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header