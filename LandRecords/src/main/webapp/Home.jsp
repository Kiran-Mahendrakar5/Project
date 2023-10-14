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
</head>
<body>

	<header>
		<a href="Index.jsp" class="btn btn-primary">Home</a>

	</header>

	<div style=""></div>


	<form action="getOtp" method="get">
		<div class="container-fluid">
			<label for="exampleInputEmail" class="form-label">Enter Email
				Adress</label> <input type="email" class="form-control" name="email"
				id="exampleInputEmail" aria-describedby="emailHelp">
			${emailNotExist}
			<button type="submit" class="btn btn-success">GET OTP</button>
		</div>
	</form>
	
	<form action="checkOtp" method="post">
		<div class="mb-3">
			<label for="exampleInputPassward1" class="form-label">Enter
				OTP</label> <input type="number" class="form-control"
				id="exampleInputPassward1">
			<h4>${otpValidated}</h4>
		</div>
		<a href="Details.jsp" class="btn btn-primary">SUBMIT</a>
		<a href="Add.jsp" class="btn btn-primary">ADDRECORDS</a>
		<a href="OneRead.jsp" class="btn btn-primary">VIEWRECORDS</a>
	</form>



	<footer> &copy;bhoomi@karnataka.gov.in </footer>

</body>
</html>