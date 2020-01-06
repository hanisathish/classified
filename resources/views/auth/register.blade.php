@extends('layouts.app')

@section('content')


<section>
		<div id="agileits-sign-in-page" class="sign-in-wrapper">
			<div class="agileinfo_signin">
			<h3>Sign Up</h3>
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/register') }}">
                    {!! csrf_field() !!}

                    
                    <input type="text" name="name" placeholder="Your Name" required="" value="{{ old('name') }}"> 
                    @if ($errors->has('name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                    <input type="email" name="email" placeholder="Your Email" required="" value="{{ old('email') }}">
                    @if ($errors->has('email'))
                        <span class="help-block">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
					<!-- <input type="tel" name="tel" placeholder="Mobile" required="">  -->
                    <input type="password" name="password" placeholder="Password" required=""> 
                    @if ($errors->has('password'))
                        <span class="help-block">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                    <input type="password" name="password_confirmation" placeholder="Confirm Password" required=""> 
                    @if ($errors->has('password_confirmation'))
                        <span class="help-block">
                            <strong>{{ $errors->first('password_confirmation') }}</strong>
                        </span>
                    @endif
					<div class="signin-rit">
						<span class="agree-checkbox">
							<label class="checkbox"><input type="checkbox" name="checkbox">I agree to your <a class="w3layouts-t" href="terms.html" target="_blank">Terms of Use</a> and <a class="w3layouts-t" href="privacy.html" target="_blank">Privacy Policy</a></label>
						</span>
					</div>
					<input type="submit" value="Sign Up">
				</form>
			</div>
		</div>
	</section>
 


@endsection
