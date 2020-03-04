@extends('layouts.app')


 {!! Html::style('angularjs/tags/ng-tags-input.min.css') !!} 


@section('content')
 
<div class="row grids">
    <div class="col-md-10 grids col-md-offset-1">
        <h3 class="title-color text-center"><u>Categories</u></h3>
    </div>
</div>
<div class="row grids">
	<div class="col-md-10 grids col-md-offset-1 " id="load-data" >
		<!-- foreach start -->
		@foreach($post_data as $post_val)
		<div class="">
		<div class="post grids">
			<!-- title and url -->
              <h2 class="post-title" >{{ $post_val->title }}</h2></a>
			<div class="row">
			   <div class="col-md-6 grids">
					<!-- Published date -->
				   <h5 class="post-date grids" >Published Date: {{ date('M j, Y', strtotime($post_val->created_at)) }}</h5> 
			   </div>
		    </div>
			<div class="row grids">
				<div class="col-md-8 grids">
					<p class="text-justify grids">{{ substr($post_val->description,0,200)}}</p>
				</div>
			</div>
		</div>                 
		</div>
		@endforeach
		<!-- foreach end -->
		<div id="remove-row">
			<button id="btn-more" data-id="{{ $post_val->id}}" class=""> Load More </button>
		</div>  
	</div>
</div>    

<script>
$(document).ready(function(){
	
   // call function on #btn-more
   $(document).on('click','#btn-more',function(){
	   // set id value	
       var id = $(this).data('id');	   
	   //alert(id);
	   
       $("#btn-more").html("Loading....");
	   
	   // call ajax with post method
       $.ajax({
		   method : "POST", 	
           url : '{{ url("item/loaddata") }}',       
           data : {id:id, _token:"{{csrf_token()}}"},
           dataType : "text",
           success : function (datas)
           {  // ajax success
              if(datas != '') {
			      // remove row
                  $('#remove-row').remove();
				  // append result 
                  $('#load-data').append(datas);
              }
              else
              {	  
			       // no data found
                  $('#btn-more').html("No Data");
              }
           }
       });
   });  
   
}); 
</script>

@endsection