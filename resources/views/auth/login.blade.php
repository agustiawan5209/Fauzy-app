<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Login Multi User</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}"/>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/catering.css') }}"/>
	<link rel="stylesheet" type="text/css" href="{{ asset('font-awesome/css/font-awesome.css') }}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<script type="text/javascript" src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>
	<style>
		body{
			background-image: url({{ asset('assets/imgs/latar.jpg') }});
		}
		.h3{
			font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			color: white;
			text-shadow:4px 2px 1px black ;
		}

	</style>
</head>
<body>
	<section>
		<div>
			<center>
			<h3 class="h3">Sistem pendukung keputusan Pemilihan Desain Interior Rumah Minimalis</h3>
			</center>
			<br><br><br>
		</div>
		<div class="row">
			<div class="col-md-4" style="float:none; margin:0px auto;">
				<div class="panel box border-bottom-primary">
					<div class="panel-header">
						<center>
							<h3 class="panel-title">Login</h3>
						</center>
					</div>
					<div class="panel-body">

						<form action="{{ route('login') }}" method="POST">
                            @csrf
							<div class="form-group">
								<label class="label-control">email</label>
								<input type="text" name="email" class="form-control" value="">
                                @error('email')
                                    <p>{{ $message }}</p>
                                @enderror
							</div>
							<div class="form-group">
								<label class="label-control">Password</label>
								<input type="password" name="password" class="form-control">
							</div>
							<div class="form-group">
								<center><input type="submit" name="login" value="Login" class="btn btn-primary"></center>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
