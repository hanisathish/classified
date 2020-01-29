@extends('layouts.app')

@section('content')

<section>

        <div id="agileits-sign-in-page" class="sign-in-wrapper">
            <div class="agileinfo_signin">
            <h3>Sign In</h3>
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                    {!! csrf_field() !!}
                    
                    <input placeholder="Your Email"  type="email" class="form-control" name="email" value="{{ old('email') }}" required="">

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                    <input type="password" class="form-control" name="password" placeholder="Password" required="">

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                    <input type="submit" value="Sign In">
                </form>
                    <div class="forgot-grid">
                        <label class="checkbox"><input type="checkbox" name="remember">Remember me</label>
                        <div class="forgot">
                            <a href="#" data-toggle="modal" data-target="#myModal2">Forgot Password?</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal2" role="dialog">
                            <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h3 class="w3ls-password">Get Password</h3>     
                                        <p class="get-pw">Enter your email address below and we'll send you an email with instructions.</p>
                                            <div>
                                            @if ($errors->any())
                                                <div class="error">
                                                    <ul style="list-style: none;padding: 0">
                                                    @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                    @endforeach
                                                    </ul>
                                                </div>
                                                @endif
                                                
                                                
                                                @if(session()->has('message'))
                                                    <div class="alert alert-success">
                                                        {{ session()->get('message') }}
                                                    </div>
                                                @endif
                                            </div>

                                            <div class="form-group row">
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                    <span id="msg"></span>
                                                </span>
                                            </label>
                                            </div>

                                    <form action="/user/forgot_password" method="post">
                 <!--{!! Form::open(array('id'=>'forgotPasswordForm','name'=>'forgotPasswordForm','method' => 'post', 'url' => url('/user/forgot_password'), 'class' => '')) !!}-->
                                           
                                            {!! csrf_field() !!}

      
                                            <input type="text" class="user" name="email" id="email" placeholder="Email" required="">
                                            <!--<input type="submit" class="" value="Submit">  -->                                          
                                            <!--<input type="button" class="" id="changePwd" value="Submit"> -->
                                            <button type="button" id="changePwd" class="">Submit</button>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                
                <h6> Not a Member Yet? <a href="{{URL::asset('/register')}}">Sign Up Now</a> </h6>
            </div>
        </div>
    </section>

<!-- 
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                        {!! csrf_field() !!}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input type="email" class="form-control" name="email" value="{{ old('email') }}">

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input type="password" class="form-control" name="password">

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember"> Remember Me
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-sign-in"></i>Login
                                </button>

                                <a class="btn btn-link" href="{{ url('/password/reset') }}">Forgot Your Password?</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> -->


<script type='text/javascript'>

var siteUrl = '<?php echo url('/'); ?>';

$("#changePwd").click(function() {
	
    //alert('clicked');
	
    var email = $("#email").val();

    var dataString = 'email=' + encodeURIComponent(email);
    
	//alert(dataString);
	
	//alert(siteUrl);
	
	
    $.ajax({
        type: "POST",
        async: false,
        data: dataString,
        url: siteUrl + '/forgot_password',
        dataType: "JSON", 
        success: function(data)
        {
            if (data.status === false)
            {
                var errorsHtml = '';
                var errors = data.errors;
                var type = "";
                $.each(errors, function(key, value) {
                    
                    if (key == 'error') {
                        errorsHtml = "<span class='error'>"+value+"</span>";
                        type = 'error';
                    }
                    else if(key == 'success') {
                        errorsHtml = value;
                        type = 'success';
                        $("#msg").css({"color": "green"});
                        $("#email").val('');
                    }
                    else {
                        errorsHtml += "<span class='error'>"+value[0]+"</span>";
                        type = 'error';
                        $("#msg").css({"color": "red"});
                    }
                    
                });

                $("#msg").html(errorsHtml);
               
            }


        },
        error: function(data)
        {
            var errors = '';
            for (datas in data.responseJSON) {
                errors += data.responseJSON[datas] + '<br>';
            }
            $("#msg").addClass('error');
            $('#msg').show().html(errors); //this is my div with messages            
            //console.log(errors);
        }

    });
    return false;

});
</script>


@endsection
