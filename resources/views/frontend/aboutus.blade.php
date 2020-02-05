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
				<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur.</p>
		</div>	
	</div>
 
@endsection

@section('footer-script')

</script>

{!! JsValidator::formRequest('App\Http\Requests\ItemRequest',  '#item-form') !!}

@endsection