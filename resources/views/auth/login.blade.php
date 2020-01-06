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
                                        <form action="#" method="post">
                                            <input type="text" class="user" name="email" placeholder="Email" required="">
                                            <input type="submit" value="Submit">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                
                <h6> Not a Member Yet? <a href="signup.html">Sign Up Now</a> </h6>
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
@endsection
