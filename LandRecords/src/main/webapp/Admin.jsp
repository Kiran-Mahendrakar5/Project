<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ImageAdding</title>
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
	background-size: cover;
	height: 300%;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

form {
	width: 300px; /* Adjust the width as needed */
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input, button {
	display: block;
	margin-bottom: 15px;
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}
button[type="submit"] {
    background-color: #4CAF50; /* Green color */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button[type="submit"]:hover {
    background-color: #45a049; /* Darker green color on hover */
}

</style>
</head>
<body>

	
	<form action="imageUpload" method="post" enctype="multipart/form-data">
	
		<input type="text" name="adminName" placeholder="Name" required>
		<input type="email" name="email" placeholder="Email" required>
		<input type="number" name="otp" placeholder="OTP" required> 
		<input type="file" name="file" required>
		
		<button type="submit" value="Submit">Save</button>
	</form>

</body>
</html>
