@extends('layouts.app')


{!! Html::style('angularjs/tags/ng-tags-input.min.css') !!} 


@section('content')
 

   <!-- breadcrumbs -->
    <div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html"><i class="fa fa-home home_1"></i></a> / <span>About Us</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Privacy -->
	<div class="privacy main-grid-border">
		<div class="container">
			<h2 class="w3-head">About Us</h2>
				<p>KINFRAIND   is a free classified Global ads site and leading local business directory and search engine, which help to find information about businesses in their local community. It's free and simple to make your Business profile. Once your Business profile is made it will be accessible to a huge number of potential clients over the globe.</p>
				<p>Business Listing is known to all as a wonderful method for getting quality incoming links. Even the inexperienced SEO professionals know that incoming links play a vital function in search engine optimization. Better the class of incoming links, the higher is your visibility on the web and your search engine rankings. Business Listing is the easiest way to obtain excellent incoming links. A simple search on the web allows you to know plenty about how a business listing can enhance the search engine positions.</p>
				<p>We offer free business listing  at kinfraind , your listing will be approved within 24 hours by manually reviewing. </p>
		</div>	
	</div>
 
@endsection

@section('footer-script')

</script>

{!! JsValidator::formRequest('App\Http\Requests\ItemRequest',  '#item-form') !!}

@endsection