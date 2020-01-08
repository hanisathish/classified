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
                height: 300px;
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
            
        </style>
        <!-- <div class="row row-eq-height"> -->
        
        <!-- <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class=" ">
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
        @if($allItem->count() > 0)
            @foreach($allItem as $allItemValue)
                @if($allItemValue->image)
                    @php ($itemImageDisp = $allItemValue->image)
                @else
                    @php ($itemImageDisp = "dummy.png")
                @endif
                <div class="col-md-3 ">
                    <?php
                    if($allItemValue->isfeatured == 1){$img_wrapper_featured="img-wrapper";}else{$img_wrapper_featured="";}
                    ?>
                    <div class="focus-grid w3layouts-boder12 <?php echo $img_wrapper_featured;?>">
                        <div class="box large">
                        {!! Html::linkRoute('frontend.item.show', 'View', array($allItemValue->id) ,['class' => "btn btn-primary"]) !!} 
                            <a href="#" class=" ">
                                <img class="child" src="{{ URL::asset('uploads/'.$itemImageDisp)}}" 
                                 alt="Card image cap">
                            </a>
                        </div>
                        <div class="focus-grid  column-custom-title">
                            <div class="focus-layout" >
                                <table class="focustable">
                                    @if( $allItemValue->show_price == 1) 
                                        <tr><td class="tdleft pricetag">&#x20b9; {{$allItemValue->price}}</td></tr>
                                    @else
                                        <tr><td class="tdleft pricetag">&nbsp;</td></tr>
                                    @endif
                                    <tr><td class="tdleft titletag">{{$allItemValue->title}}</td></tr>
                                    <tr><td class="tdleft titletag"><i class="glyphicon glyphicon-earphone"></i>&nbsp;&nbsp;<a href="tel:{!! $allItemValue->phone!!}">{!! $allItemValue->phone!!}</a></td></tr>
                                    <tr><td class="tdleft titletag">
                                    @if( $allItemValue->address1) {!! substr($allItemValue->address1,0,30)!!}<br> @else <br> @endif
                                    @if( $allItemValue->address2) {!! substr($allItemValue->address2,0,30)!!}<br> @else <br> @endif
                                    @if( $allItemValue->address3) {!! substr($allItemValue->address3,0,30)!!}<br> @else <br> @endif
                                    @if( $allItemValue->zipcode) {!! $allItemValue->zipcode!!}<br> @else <br> @endif 
                                    </td></tr>
                                    <tr><td class="tdright">{{date('dS M, Y g:i a',strtotime($allItemValue->created_at))}}</td></tr>
                                </table>
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif

        <!-- 
        <div class="col-md-3 ">
            <div class="focus-grid w3layouts-boder12 img-wrapper">
                <div class="box large">
                    <a href="#" class=" ">
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
                    <a href="#" class=" ">
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
                    <a href="#" class=" ">
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
                    <a href="#" class=" ">
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

    <br /><br /><br />