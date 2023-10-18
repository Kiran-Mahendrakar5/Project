<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
	padding-top: 70px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<style>
#home {
	color: white;
	text-transform: uppercase;
	font-size: large;
	font-weight: bold;
	margin-left: -45px;
}

.containerr {
	background: transparent;
	max-width: 250px;
}

body {
	background-image: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03)
		0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
		radial-gradient(circle at 55% 100%, rgba(255, 255, 255, 0.03) 0%,
		rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
		radial-gradient(circle at 40% 75%, rgba(255, 255, 255, 0.03) 0%,
		rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
		radial-gradient(circle at 7% 99%, rgba(255, 255, 255, 0.03) 0%,
		rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
		radial-gradient(circle at 69% 76%, rgba(255, 255, 255, 0.03) 0%,
		rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
		radial-gradient(circle at 2% 35%, rgba(255, 255, 255, 0.03) 0%,
		rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
		radial-gradient(circle at 14% 48%, rgba(255, 255, 255, 0.03) 0%,
		rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
		radial-gradient(circle at 28% 87%, rgba(255, 255, 255, 0.04) 0%,
		rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
		radial-gradient(circle at 65% 14%, rgba(255, 255, 255, 0.04) 0%,
		rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
		radial-gradient(circle at 51% 36%, rgba(255, 255, 255, 0.04) 0%,
		rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
		radial-gradient(circle at 6% 93%, rgba(255, 255, 255, 0.04) 0%,
		rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
		linear-gradient(135deg, rgb(23, 233, 173), rgb(29, 24, 208));
	background-size: cover;
	height: 300%;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.navbar-brand {
	background-color: rgb(6, 224, 191);
}

.card {
	background-color: transparent;
}
.container{
background-color: transparent;
}
.col{
background-color: black;
}
.col-md{
background-color: black;
}

</style>
</head>
<body>

	<nav class="navbar">
		<div class="container">
			<a class="navbar-brand" id="home" href="Index.jsp">Home</a>
		</div>
		
	</nav>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h1 class="card-title text-center">LOGIN</h1>
						<form action="getOtp" method="get">
							<div class="form-group">
								<label for="exampleInputEmail">Enter Email Address</label> <input
									type="email" class="form-control" name="email"
									id="exampleInputEmail" value="${EmailV}"
									aria-describedby="emailHelp"> <span class="text-danger"><h2>${emailNotExist}</h2></span>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Get
								OTP</button>
						</form>

						<form action="checkOtp" method="post">
							<div class="form-group">
								<label for="exampleInputPassword1">Enter OTP</label> <input
									type="text" class="form-control" name="otp" value="${otpView}"
									id="exampleInputPassword1"> <span class="text-danger"><h4>${otpValidated}</h4></span>
							</div>
							<button type="submit" class="btn btn-success btn-block">Log
								In</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="height: 120px"></div>
	<footer style="height: 50px " class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md">
					<p>
						<a href="bhoomi@karnataka.gov.in">&copy; BHOOMI ONLINE - iRTC.
							RTC Service</a>
					</p>
				</div>
				<div class="col">
					<p>
						<a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
