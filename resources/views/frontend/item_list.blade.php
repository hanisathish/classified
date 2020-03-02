<!-- card starts-->
<style>
html {
    font-family: Lato, 'Helvetica Neue', Arial, Helvetica, sans-serif;
    font-size: 14px;
}

h5 {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
    margin: 0;
}

.card {
    font-size: 1em;
    overflow: hidden;
    padding: 0;
    border: none;
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
}

.card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;
}


.card-img-top {
    display: block;
    width: 100%;
    height: 15vw;
	
	max-width: 100%
	max-height: 100%
     flex-shrink: 0;

}


.card-title {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
}

.card-text {
    clear: both;
    margin-top: .5em;
    color: #000;/*rgba(0, 0, 0, .68);*/
}

.card-footer {
    font-size: 1em;
    position: static;
    top: 0;
    left: 0;
    max-width: 100%;
    padding: .75em 1em;
    color: #000;/*rgba(0, 0, 0, .4);*/
    border-top: 1px solid rgba(0, 0, 0, .05) !important;
    background: #fff;
}

.card-inverse .btn {
    border: 1px solid rgba(0, 0, 0, .05);
}

.profile {
    position: absolute;
    top: -12px;
    display: inline-block;
    overflow: hidden;
    box-sizing: border-box;
    width: 25px;
    height: 25px;
    margin: 0;
    border: 1px solid #fff;
    border-radius: 50%;
}

.profile-avatar {
    display: block;
    width: 100%;
    height: 100%;
    border-radius: 50%;
}

.profile-inline {
    position: relative;
    top: 0;
    display: inline-block;
}

.profile-inline ~ .card-title {
    display: inline-block;
    margin-left: 4px;
    vertical-align: top;
}

.text-bold {
    font-weight: 700;
}

.meta {
    font-size: 1em;
    color: #000;/*rgba(0, 0, 0, .4);*/
}

.meta a {
    text-decoration: none;
    color: #000;/*rgba(0, 0, 0, .4);*/
}

.meta a:hover {
    color: #000;/*rgba(0, 0, 0, .87);*/
}
</style>

<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	
<!-- card ends-->
<div class="w3-categories">
    <h3>Browse Items</h3>
    <div class="container">

        <style>
            .column-custom-title {
                border-top: none;
                margin-top: 0px;
                padding: 0px;margin:0px;
            }

            .column-custom-title:hover {
                border-top: none;
            }

            

            img {
                max-width: 100%;
                max-height: 100%;
                display: block;
                /* remove extra space below image */
            }

            .box {
                width: 260px;

            }

            .box.large {
                height: 120px;

                margin: auto;
                display: flex;


            }

            .child {
                margin: auto;
                /* Magic! */
                max-width: 100%;
                max-height: 100%;
            }

            .img-wrapper {
                /* width: 400px; */
                /* height: 300px; */
                /* box-shadow: 1px 1px 3px #000; */
                display: block;
                overflow: hidden;
                position: relative;
                height: 344px;
            }

            .img-wrapper:before {
                padding: .3em 2.9em;
                position: absolute;
                background: blue;
                color: white;
                font: 700 14px sans-serif;
                top: 35px;
                left: -40px;
                transform: rotate(-45deg);
                content: 'Featured';
            }

            .col3-border {
                border: 1px solid black;
                
            }

            .focus-layout h4 {
                margin: 0 0 0 0;
                margin-top: 0px;
                color: #4C4C4C;
                /* font-size: 18px; */
                text-align: center;
                height: 30px;
                margin-top: 0px;
            }
            .focus-layout .tdleft {
                text-align: left;
                padding-left: 10px !important;
                
            }
            .focus-layout .tdright {
                text-align: right;
                padding-right: 10px !important;
                font-size: 10px !important;
            }
            .focustable {
                width: 100%;
                font-size: 12px;
            }

            .pricetag{
                font-size: 14px !important;
                font-weight: bold;                
            }
            .titletag{
                font-size: 12px !important;
                
            }
            .itemviewlink{
                color:#000;
            }
        </style>
        <!-- <div class="row row-eq-height"> -->
        
        <!-- <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class="itemviewlink">
                        <img class="child" src="http://localhost/kishore/classified/public/uploads/4.jpg" alt="Card image cap">
                    </a>
                </div>
                <div class="focus-grid  column-custom-title">
                    <div class="focus-layout" >
                        <table class="focustable">
                            <tr><td class="tdleft">Name</td><td></td></tr>
                            <tr><td class="tdleft">Desc</td><td></td></tr>
                            <tr><td></td><td class="tdright">Date</td></tr>
                        </table>
                        
                        
                    </div>
                </div>
            </div>
        </div> 
        src="http://localhost/kishore/classified/public/uploads/4.jpg"
    -->
    <div class="row">
	   <?php //echo $count = count($allItem ); ?>
		
        @if($allItem->count() > 0)
            @foreach($allItem as $allItemValue)
                @if($allItemValue->image)
                    @php ($itemImageDisp = $allItemValue->image)
                @else
                    @php ($itemImageDisp = "dummy.png")
                @endif
                
                <?php
                if($allItemValue->isfeatured == 1){$img_wrapper_featured="img-wrapper";}else{$img_wrapper_featured="";}
                ?>
                 
                <div class="col-sm-6 col-md-4 col-lg-3 mt-4 blogBox moreBox" style="padding-bottom: 10px !important; display: none;">
                    <div class="card <?php echo $img_wrapper_featured;?>">
                        <div class="box large">
                            <a href="{{URL::asset('/item/'.$allItemValue->id)}}" class="itemviewlink">
                                <img class="child" src="{{ URL::asset('uploads/'.$itemImageDisp)}}" alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-block">
                            <!-- <figure class="profile">
                                <img src="https://picsum.photos/200/150/?random" class="profile-avatar" alt="">
                            </figure> -->
                            <h4 class="card-title mt-3">{{substr($allItemValue->title,0,28)}}</h4>

                            <h6 class="card-title mt-3">
                                @if( $allItemValue->show_price == 1) 
                                    <a href="{{URL::asset('/item/'.$allItemValue->id)}}" class="itemviewlink">&#x20b9; {{$allItemValue->price}}</a>
                                @else
                                    &nbsp;
                                @endif
                            </h6>
                            <div class="meta">
                                @if( $allItemValue->address1)<a href="tel:{!! $allItemValue->phone!!}"><i class="glyphicon glyphicon-earphone"></i>&nbsp;&nbsp;{!!substr( $allItemValue->phone,0,26)!!}</a> @else &nbsp; @endif
                            </div>
                            <div class="card-text">
                                <a href="{{URL::asset('/item/'.$allItemValue->id)}}" class="itemviewlink">
                                @if( $allItemValue->address1) {!! substr($allItemValue->address1,0,20)!!}<br> @else <br> @endif
                                @if( $allItemValue->address2) {!! substr($allItemValue->address2,0,20)!!}<br> @else <br> @endif
                                @if( $allItemValue->address3) {!! substr($allItemValue->address3,0,20)!!}<br> @else <br> @endif
                                @if( $allItemValue->zipcode) {!! $allItemValue->zipcode!!}<br> @else <br> @endif </a>
                            </div>
                        </div>
                        <div class="card-footer">
                            <small><a href="{{URL::asset('/item/'.$allItemValue->id)}}" class="itemviewlink">{{date('dS M, Y g:i a',strtotime($allItemValue->created_at))}}</a></small>
                            <a href="{{URL::asset('/item/'.$allItemValue->id)}}" class=" float-right badge badge-info">show</a>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
	  
    </div>
	

        <!-- 
        <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class="itemviewlink">
                        <img class="child" src="http://localhost/kishore/classified/public/uploads/1.jpg" alt="Card image cap">
                    </a>
                </div>
                <div class="focus-grid  column-custom-title">
                    <div class="focus-layout">
                        <h4>Mobiles</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class="itemviewlink">
                        <img class="child" src="http://localhost/kishore/classified/public/uploads/2.jpg" alt="Card image cap">
                    </a>
                </div>
                <div class="focus-grid  column-custom-title">
                    <div class="focus-layout">
                        <h4>Mobiles</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class="itemviewlink">
                        <img class="child" src="http://localhost/kishore/classified/public/uploads/3.jpg" alt="Card image cap">
                    </a>
                </div>
                <div class="focus-grid  column-custom-title">
                    <div class="focus-layout">
                        <h4>Mobiles</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class="itemviewlink">
                        <img class="child" src="http://localhost/kishore/classified/public/uploads/5.jpg" alt="Card image cap">
                    </a>
                </div>
                <div class="focus-grid  column-custom-title">
                    <div class="focus-layout">
                        <h4>Mobiles</h4>
                    </div>
                </div>
            </div>
        </div> -->
          

        <div class="clearfix"></div>
        <!-- </div> -->
    </div>
	
	<div id="loadMore" class="" style="text-align: center;">
         <a href="#" class="btn btn-danger">Load More <i class="fa fa-refresh" aria-hidden="true"></i></a>
    </div>
	  

    <br /><br /><br />
	

   <script>
    $(document).ready(function() {
	  $(".moreBox").slice(0, 8).show();
	  if ($(".blogBox:hidden").length != 0) {
		$("#loadMore").show();
	  }
	  $("#loadMore").on('click', function(e) {
		e.preventDefault();
		$(".moreBox:hidden").slice(0, 16).slideDown();
		if ($(".moreBox:hidden").length == 0) {
		  $("#loadMore").fadeOut('slow');
		}
	  });
    });
	</script>