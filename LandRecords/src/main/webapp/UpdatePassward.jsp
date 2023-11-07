<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bhoomi Online</title>
<style>
* {
	box-sizing: border-box;
}

@import
	url('https://fonts.googleapis.com/css?family=Rubik:400,500&display=swap')
	;

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
	margin: 0;
	padding: 0;
}

.navbar {
	height: 60px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 20px;
	color: black;
	font-size: 20px;
}

.logo img {
	max-height: 90px;
	margin-right: 10px;
	margin-top: 40px;
}

.centered-text {
	text-align: center;
	color: black;
	font-size: 24px;
	padding: 20px;
}

.centered-row {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	padding: 25px;
}

.centered-row input[type="email"], .centered-row input[type="password"]
	{
	display: block;
	margin: 10px;
	padding: 10px;
	border: 1px solid #007bff;
	border-radius: 15px;
	width: 120%; /* Adjust the width of the input elements */
}

.centered-row button {
	display: block;
	margin: 10px;
	padding: 10px 20px;
	background: #007bff;
	color: black;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 90%; /* Adjust the width of the input elements */
}
</style>
</head>
<body>

	<div class="navbar">
		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of-Karnataka.svg.png">
		</div>
	</div>

	<div class="centered-text">
		<h1>BHOOMI LAND RECORDS COMPUTERIZATION PROJECT</h1>
	</div>

	<div class="centered-row">
		
		<form action="updatePasswords" method="post">
			<input type="email" name="email" placeholder="Enter your Email">
			<h5 style="color: red;">${Email}</h5>
			<input type="password" name="password" placeholder="New Password">
			<input type="password" name="confirmPassword"
				placeholder="Confirm Password">
			<button type="submit">UPDATE PASSWORD</button>
		</form>
	</div>

</body>
</html>
