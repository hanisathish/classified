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
    <!-- //breadcrumbs -->
    <!--single-page-->
    <div class="main-content">
        <div class="w3-categories">
                <h3>Browse Categories</h3>
                <div class="container">
                    @if($allCategories->count() > 0)
                    
                        @foreach($allCategories as $category)
                            <div class="col-md-3">
                                <div class="focus-grid w3layouts-boder1">
                                    <a class="btn-8" href="{!!route('frontend.list',array($category->id))!!}">
                                        <div class="focus-border">
                                            <div class="focus-layout">
                                                <div class="focus-image"><i class="{{$category->fa_icons}}"></i></div>
                                                <h4 class="clrchg">{{$category->title}}</h4>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    @endif    

                    <div class="clearfix"></div>
                </div>
            </div>
    </div>
  <!--//single-page-->
  
@endSection 


@section('footer-script')
 

@endsection       