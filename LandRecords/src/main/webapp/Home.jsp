<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
	padding-top: 70px;
	padding-left: 10px; /* Adjust the left padding as needed */
}

#home {
	color: white;
	text-transform: uppercase;
	font-size: large;
	font-weight: bold;
	margin-left: -45px;
}

.container {
	background: transparent;
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

.col-md-4 {
	margin-right: auto;
}

.card {
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
	padding-left: 10px;
}

.container {
	background-color: transparent;
}

.card-body {
	padding-left: 10px;
}

.additional-box1 {
	background: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03)
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
	border: 1px solid #ddd;
	padding: 15px;
	margin-top: -240px;
	width: 100%; /* Adjust the width as needed */
	height: 250px; /* Adjust the height as needed */
	margin-left: auto;
	margin-right: auto;
}

.additional-box {
	background: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03)
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
	border: 1px solid #ddd;
	padding: 15px;
	margin-top: -500px; /* Adjust the margin-top for padding to the top */
	width: 100%; /* Adjust the width as needed */
	height: 250px; /* Adjust the height as needed */
	margin-left: auto;
	margin-right: auto;
}

.logo img {
	max-height: 90px; /* Adjust the logo image size as needed */
	margin-right: 10px; /* Add some spacing to the right of the logo */
	margin-top: 10px;
}

.home-button {
	color: white;
	text-decoration: none;
	font-size: large;
	font-weight: bold;
	margin-left: auto;
	margin-right: 10px;
	margin-top: -10px;
}

.additional-box img {
	width: 15%; /* Adjust the width as needed */
	height: auto; /* Maintain the aspect ratio */
	margin-bottom: 10px; /* Adjust the margin-bottom as needed */
}

.additional-box1 img {
	width: 15%; /* Adjust the width as needed */
	height: auto; /* Maintain the aspect ratio */
	margin-bottom: 10px; /* Adjust the margin-bottom as needed */
}

.icon {
	width: 35px; /* Adjust the width as needed */
	height: auto; /* Maintain the aspect ratio */
	margin-right: 50px;
	
}

</style>
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
</head>
<body>
	<div class="navbar navbar-expand-lg navbar-light"
		style="background-color: transparent;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of_Karnataka.svg.png"
				alt="logo" class="img-fluid"
				style="max-height: 70px; margin-right: 10px; margin-top: -20px;">
				<h4
					style="display: inline-block; margin-top: 20px; margin-left: -10px;">Government
					of Karnataka</h4>
					<h1
					style="display: inline-block; margin-top: 20px; margin-left: 370px;">I-Wallet Services</h1>
					
			</a>

			<!-- Add the home button here -->
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link home-button"
					href="Index.jsp">Home</a></li>
			</ul>
		</div>
	</div>



	<div class="container mt-5">
		<div class="row justify-content-start">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<a href="#"> <strong>LOGIN</strong> <img class="icon"
							src="https://landrecords.karnataka.gov.in/service78/Assests/images/lock.png"></a>
						<form action="getOtp" method="get" style="padding-left: 10px;">
							<div class="form-group">
								<label for="exampleInputEmail">Enter Email Address</label> <input
									type="email" class="form-control" name="email"
									id="exampleInputEmail" value="${EmailV}"
									aria-describedby="emailHelp"> <span class="text-danger"><h2>${emailNotExist}</h2></span>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Get
								OTP</button>
						</form>

						<form action="checkOtp" method="post" style="padding-left: 10px;">
							<div class="form-group">
							<input
									type="hidden"   name="email"
									 value="${email02}"
									 >
								<label for="exampleInputPassword1">Enter OTP</label>
								
								 <input
									type="text" class="form-control" name="otp" value="${otpView}"
									id="exampleInputPassword1"> <span class="text-danger"><h4>${otpValidated}</h4></span>
							</div>
							<button type="submit" class="btn btn-success btn-block">Log
								In</button>
						</form>
					</div>
				</div>
			</div>
			
			<div class="container mt-5">
				<div class="row">
					<!-- Left side login form -->
					<div class="col-md-6">
						<div class="card">
							<!-- Your existing login form -->
						</div>
					</div>

					<!-- Right side boxes -->
					<div class="col-md-6">
						<!-- First row of two boxes -->
						<div class="row mb-3">
							<div class="col-md-6">
								<div class="additional-box">
									<a href="#"> <strong>Pahani Online</strong> <img
										src="https://landrecords.karnataka.gov.in/service78/Assests/images/printer.png"
										alt="Pahani Online Image"></a>
									<p>
										Pahani ONLINE<br> (ONLINE RTC) ANYWHERE-ANYTIME You can
										print original RTC ONLINE by paying 10 per RTC . First time in
										the country original RTC is available for print ONLINE.
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="additional-box">
									<a href="#"> <strong>NK Services</strong> <img
										src="https://landrecords.karnataka.gov.in/service78/Assests/images/test.png"></a>
									<p>Using i-Walet user can avail the services provided by
										Nadakacheri department</p>
								</div>
							</div>
						</div>

						<!-- Second row of two boxes -->
						<div class="row">
							<div class="col-md-6">
								<div class="additional-box1">
									<a href="#"> <strong>i-Wallet Manager</strong> <img
										src="https://landrecords.karnataka.gov.in/service78/Assests/images/printer.png"
										alt="Pahani Online Image"></a>
									<p>open an account after identify establishment and then
										you can get i-Wallet under which by paying upto 10000 (Upper
										Limit) ,you can use Bhoomi ,Nakakacheri.</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="additional-box1">
									<a href="#"> <strong>Get Your Missed i-RTC</strong> <img
										src="https://landrecords.karnataka.gov.in/service78/Assests/images/test.png"></a>
									<p>
										If you could not print the RTC after successfull payment ,you
										can get the copy of your RTC by providing<br>http://landrecords.karnataka.gov.in/<br>service37/MissedRTC.aspx
										here.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Additional content if needed -->

			</div>

			<div style="height: 120px"></div>



			<footer
				style="background-color: transparent; height: 10px; margin-top: 20px; text-align: center;"
				class="footer">
				<div class="container">
					<p class="text-white" style="margin-top: 10px;">
						Revenue Department<br> About | Govt Orders & Tenders | RTI
						Act | Contact Us<br> Copyright © 2023 | Bhoomi Monitoring
						Cell<br> Release Version: 1.0.0.0
					</p>
				</div>
			</footer>
</body>
</html>
