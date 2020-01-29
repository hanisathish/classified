@extends('layouts.app')

@section('content')

<section>
		<div id="agileits-sign-in-page" class="sign-in-wrapper">
			<div class="agileinfo_signin">
			<h3>Reset Password</h3>
                <form class="form-horizontal" role="form" method="POST" action="{{ url('customerpwdstore') }}">
                    {!! csrf_field() !!}
					
					<input type="hidden" name="id" id="id" value="{{ old('id', !empty($getUserLists) ? $getUserLists->id : '') }}" />
					
                    <input type="password" name="password" id="password" placeholder="Password" required=""> 
                    @if ($errors->has('password'))
                        <span class="help-block">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                    <input type="password" name="repeat_password" id="repeat_password" placeholder="Confirm Password" required=""> 
                    @if ($errors->has('repeat_password'))
                        <span class="help-block">
                            <strong>{{ $errors->first('repeat_password') }}</strong>
                        </span>
                    @endif

					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
	</section>
 
@endsection
