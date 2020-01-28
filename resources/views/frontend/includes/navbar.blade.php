<?php
//dd($allCategoriesListing);
?>
<!-- Navigation -->
<div class="agiletopbar">
			<div class="wthreenavigation">
				<div class="menu-wrap">
				<nav class="menu">
					@if($allCategoriesListing->count() > 0)
					<div class="icon-list">
						@foreach($allCategoriesListing as $categoryData)
							<a href="{!!route('frontend.list',array($categoryData->id))!!}"><i class="fa fa-fw {!!$categoryData->fa_icons!!}"></i><span>{!!$categoryData->title!!}</span></a>
						@endforeach						
					</div>
					@endif
				</nav>
				<button class="close-button" id="close-button">Close Menu</button>
			</div>
			<button class="menu-button" id="open-button"> </button>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //Navigation -->