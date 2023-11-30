<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>

<style>
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
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.input-container {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	width: 100%;
}

.input-container input {
	width: 100%; /* Adjust the width as needed */
	padding: 10px;
	margin: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	color: black; /* Set the text color to black */
}

.input-container button {
	width: 10%; /* Adjust the width as needed */
	padding: 10px;
	margin: 5px;
	background-color: #ff0000;
	color: #fff;
	border: none;
	border-radius: 5px;
}
 .navbar {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: rgb(6, 224, 191);
    padding: 5px 10px;
    border-radius: 5px;
    text-decoration: none;
    color: white;
  }
</style>
</head>
<body>
<nav class="navbar">
    <div class="container">
      <a class="navbar-brand" id="home" href="OneRead.jsp">Home</a>
    </div>
  </nav>
<div>
	<br>
	<h1 align="center">Bhoomi Online|Land Records|View</h1>
	<br>
	<br>
	<h3>Records of Rights,Tenancy & Crops(RTC) Form 16 | Mutation
		Register | Mutation Status|Bhoomi Online|Land Records 2023</h3>
	<br>
	<form action="update" method="get">
		<div class="input-container">
			<input type="text" name="ownerName" value="${param.ownerName}" placeholder="ENTER OWNER NAME" style="background-color: transparent;">
			<input type="number" name="mobileNumber" value="${param.mobileNumber}" 
				placeholder="ENTER MOBILE NUMBER" style="background-color: transparent;"> <input type="number"
				name="aadharNumber" value="${param.aadhaarNumber}"  placeholder="ENTER AADHAR NUMBER" style="background-color: transparent;">
		</div>
		<div class="input-container">
			<input type="number" name="year" value="${param.year}" placeholder="ENTER YEAR" style="background-color: transparent;">
			<input type="number" name="hissaNumber" 
				placeholder="ENTER HISSA NUMBER" style="background-color: transparent;"> <input type="number"
				name="serveNumber" placeholder="ENTER SERVE NUMBER" style="background-color: transparent;">
		</div>
		
		<div class="input-container">


			<button type="submit" class="btn btn-danger">EDIT</button>
		</div>
	</form>
	</div>
	
</body>
</html>
