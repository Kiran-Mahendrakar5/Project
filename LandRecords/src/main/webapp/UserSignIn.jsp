
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I-Wallet LogIn</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


<style type="text/css">
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
	font-family: 'Rubik', sans-serif;
}

.container {
	display: flex;
	height: 100vh;
}

.left {
	overflow: hidden;
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	justify-content: center;
	animation-name: left;
	animation-duration: 1s;
	animation-fill-mode: both;
	animation-delay: 1s;
}

.right {
	flex: 1;
	background-color: black;
	transition: 1s;
	background-image:
		url(https://miro.medium.com/v2/resize:fit:800/1*PX_9ySeaKhNan-yPMW4WEg.jpeg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.header>h2 {
	margin: 0;
	color: #4f46a5;
}

.header>h4 {
	margin-top: 10px;
	font-weight: normal;
	font-size: 15px;
	color: rgba(0, 0, 0, .4);
}

.form {
	max-width: 80%;
	display: flex;
	flex-direction: column;
}

.form>p {
	text-align: right;
}

.form>p>a {
	color: #000;
	font-size: 14px;
}

.form-field {
	height: 46px;
	padding: 0 16px;
	border: 2px solid #ddd;
	border-radius: 4px;
	font-family: 'Rubik', sans-serif;
	outline: 0;
	transition: .2s;
	margin-top: 20px;
}

.form-field:focus {
	border-color: #0f7ef1;
}

.form>button {
	padding: 12px 10px;
	border: 9px solid #fff;
	background: linear-gradient(to right, #de48b5 0%, #0097ff 100%);
	border-radius: 3px;
	margin-top: 10px;
	color: #fff;
	letter-spacing: 1px;
	font-family: 'Rubik', sans-serif;
}

.animation {
	animation-name: move;
	animation-duration: .4s;
	animation-fill-mode: both;
	animation-delay: 2s;
}

.a1 {
	animation-delay: 2s;
}

.a2 {
	animation-delay: 2.1s;
}

.a3 {
	animation-delay: 2.2s;
}

.a4 {
	animation-delay: 2.3s;
}

.a5 {
	animation-delay: 2.4s;
}

.a6 {
	animation-delay: 2.5s;
}

@
keyframes move { 0% {
	opacity: 0;
	visibility: hidden;
	transform: translateY(-40px);
}

100


%
{
opacity


:


1
;


visibility


:


visible
;


transform


:


translateY
(


0


)
;


}
}
@
keyframes left { 0% {
	opacity: 0;
	width: 0;
}

100


%
{
opacity


:


1
;


padding


:


20px


40px
;


width


:


440px
;


}
}
header img {
	width: 100px; /* Adjust the width to your desired size */
	height: auto; /* This maintains the aspect ratio */
}

footer {
	text-align: center;
	padding: 10px; /* Optional: Add some padding for spacing */
}

footer p {
	margin: 0; /* Remove the default margin for <p> elements */
}
.previous {
  
  color: black;
  text-decoration: none; /* To remove the underline on the link */
  position: absolute;
  top: 10px; /* Adjust the top position as needed */
  left: 10px; /* Adjust the left position as needed */
  padding: 10px;
  border-radius: 50%;
  font-size: 24px; /* Adjust the font size as needed */
}

.previous:hover {
  background-color: #aqua;; /* Change the background color on hover if desired */
}

.round {
  border-radius: 50%;
}

</style>

<script type="text/javascript">
document.getElementById("loginForm").addEventListener("submit", function(event) {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    if (email.trim() === "" || password.trim() === "") {
        alert("Please enter both email and password.");
        event.preventDefault(); // Prevent the form submission
    }
});
</script>



</head>
<body>

<body>
  <a href="User.jsp" class="previous round">&#8249;</a>
  <!-- Rest of your HTML code -->
</body>


	<div class="container">
		<div class="left">
			<div class="header">

				<h2 class="animation a1">i-Wallet SIGNIN</h2>
				<h4 class="animation a2">Log in to your account using email and
					password</h4>
			</div>
			<form id="loginForm" action="uLogin" method="post">
				<div class="form">
					<input type="email" name="email" class="form-field animation a3"
						placeholder="Email Address"> <input type="password"
						name="password" class="form-field animation a4" placeholder="Password">

                    
					<button type="submit" class="animation a6" id="signInButton">SignIn</button>
				
					<p class="animation a5" style="text-align: center;">
						<a href="ForgetPassward.jsp">Forgot Password</a>
					</p>
					<h2>${entre}</h2>
			</form>


		</div>
	</div>
	<div class="right"></div>
	</div>

</body>
</html>
