@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{asset('public/frontend/styles/contact_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/frontend/styles/contact_responsive.css')}}">
      <!-- Contact Form -->

	<div class="contact_form">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding:20px; border-radius: 25px;">
					<div class="contact_form_container">
						<div class="contact_form_title text-center">Sign In</div>
                  <form action="{{route('login')}}" id="contact_form" method="post">
                                    @csrf
                        <div class="form-group">
                           <label for="exampleInputEmail1">Email or Phone</label>
                              <input type="text" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter email" required="">
                              @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                           </div>

                             <div class="form-group">
                           <label for="exampleInputEmail1">Password</label>
                              <input type="password" class="form-control @error('password') is-invalid @enderror" id="exampleInputEmail1" aria-describedby="emailHelp" name="password" placeholder="Enter password" required="">
                              @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                           </div>

							<div class="contact_form_button">
								<button type="submit" class="btn btn-info">Login</button>
							</div>
						</form>
                        <br>
                        <a href="{{route('password.request')}}">I forget my password</a>    <br>   <br>
                        <button type="submit" class="btn btn-primary btn-block"><i class="fab fa-facebook-square"></i> Login with Facebook</button>
                        <a href="{{ url('/auth/redirect/google') }}" class="btn btn-danger btn-block"><i class="fab fa-google"></i> Login with Google </a>

					</div>
				</div>

                <div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding:20px; border-radius: 25px;">
					<div class="contact_form_container">
						<div class="contact_form_title text-center" >Sign Up</div>

                                 <form action="{{route('register')}}" id="contact_form" method="post">
                                    @csrf
                        <div class="form-group">
                           <label for="exampleInputEmail1">Full Name</label>
                              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name" placeholder="Enter Your Full Name " required="">
                             </div>

                             <div class="form-group">
                           <label for="exampleInputEmail1">Phone</label>
                              <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your phone" required="">
                             </div>

                        <div class="form-group">
                           <label for="exampleInputEmail1">Email</label>
                              <input type="text" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Enter Your email" required="">
                             </div>

                             <div class="form-group">
                           <label for="exampleInputEmail1">Password</label>
                              <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="password" placeholder="Enter password" required="">
                             </div>

                             <div class="form-group">
                           <label for="exampleInputEmail1">Confirm Password</label>
                              <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="password_confirmation" placeholder="Enter Re-Type password" required="">
                             </div>

							<div class="contact_form_button">
								<button type="submit" class="btn btn-info">Sign Up</button>
							</div>


						</form>

					</div>
				</div>
			</div>
		</div>
		<div class="panel"></div>
	</div>

@endsection
