<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
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

.main {
	width: 100%;
	
	background-position: center;
	background-size: cover;
	height: 100vh;
}

.navbar {
	width: 1200px;
	height: 75px;
	margin: auto;
}

.icon {
	width: 200px;
	float: left;
	height: 70px;
}

.logo {
	color: #ff7200;
	font-size: 35px;
	font-family: Arial;
	padding-left: 20px;
	float: left;
	padding-top: 10px;
	margin-top: 5px
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
	padding-left:100px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 14px;
}

ul li a {
	text-decoration: none;
	color: #fff;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #ff7200;
}

.search {
	width: 330px;
	float: left;
	margin-left: 270px;
}

.srch {
	font-family: 'Times New Roman';
	width: 200px;
	height: 40px;
	background: transparent;
	border: 1px solid #ff7200;
	margin-top: 13px;
	color: #fff;
	border-right: none;
	font-size: 16px;
	float: left;
	padding: 10px;
	border-bottom-left-radius: 5px;
	border-top-left-radius: 5px;
}

.btn {
	width: 100px;
	height: 40px;
	background: #ff7200;
	border: 2px solid #ff7200;
	margin-top: 13px;
	color: #fff;
	font-size: 15px;
	border-bottom-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: 0.2s ease;
	cursor: pointer;
}

.btn:hover {
	color: #000;
}

.btn:focus {
	outline: none;
}

.srch:focus {
	outline: none;
}

.content {
	width: 1200px;
	height: auto;
	margin: auto;
	color: #fff;
	position: relative;
}

.content .par {
	padding-left: 20px;
	padding-bottom: 25px;
	font-family: Arial;
	letter-spacing: 1.2px;
	line-height: 30px;
}

.content h1 {
	font-family: 'Times New Roman';
	font-size: 50px;
	padding-left: 20px;
	margin-top: 9%;
	letter-spacing: 2px;
}

.content .cn {
	width: 160px;
	height: 40px;
	background: #ff7200;
	border: none;
	margin-bottom: 10px;
	margin-left: 20px;
	font-size: 18px;
	border-radius: 10px;
	cursor: pointer;
	transition: .4s ease;
}

.content .cn a {
	text-decoration: none;
	color: #000;
	transition: .3s ease;
}

.cn:hover {
	background-color: #fff;
}

.content span {
	color: #ff7200;
	font-size: 65px
}

.form {
	width: 250px;
	height: 380px;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.8) 50%,
		rgba(0, 0, 0, 0.8) 50%);
	position: absolute;
	top: -20px;
	left: 870px;
	transform: translate(0%, -5%);
	border-radius: 10px;
	padding: 25px;
}

.form h2 {
	width: 220px;
	font-family: sans-serif;
	text-align: center;
	color: #ff7200;
	font-size: 22px;
	background-color: #fff;
	border-radius: 10px;
	margin: 2px;
	padding: 8px;
}

.form input {
	width: 240px;
	height: 35px;
	background: transparent;
	border-bottom: 1px solid #ff7200;
	border-top: none;
	border-right: none;
	border-left: none;
	color: #fff;
	font-size: 15px;
	letter-spacing: 1px;
	margin-top: 30px;
	font-family: sans-serif;
}

.form input:focus {
	outline: none;
}

::placeholder {
	color: #fff;
	font-family: Arial;
}

.btnn {
	width: 240px;
	height: 40px;
	background: #ff7200;
	border: none;
	margin-top: 30px;
	font-size: 18px;
	border-radius: 10px;
	cursor: pointer;
	color: #fff;
	transition: 0.4s ease;
}

.btnn:hover {
	background: #fff;
	color: #ff7200;
}

.btnn a {
	text-decoration: none;
	color: #000;
	font-weight: bold;
}

.form .link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 17px;
	padding-top: 20px;
	text-align: center;
}

.form .link a {
	text-decoration: none;
	color: #ff7200;
}

.liw {
	padding-top: 15px;
	padding-bottom: 10px;
	text-align: center;
}

.icons a {
	text-decoration: none;
	color: #fff;
}

.icons ion-icon {
	color: #fff;
	font-size: 30px;
	padding-left: 14px;
	padding-top: 5px;
	transition: 0.3s ease;
}

.icons ion-icon:hover {
	color: #ff7200;
}
a:link, a:visited {
  background-color: #FF7518;
  color: white;
  padding: 14px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: orange;
}
</style>
</head>
<body>
	<div class="main">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo">BHOOMI</h2>
			</div>

			<div class="menu">
				<ul>
				
					<li><a href="Home.jsp" id="Admin">ADMIN</a></li>
					<li><a href="#" id="User">USER</a></li>
					
					
				</ul>
			</div>

		</div>
		<div class="content">
			<h1>
			WELCOME To	Karnataka <br> <span> Bhoomi Land Records</span> <br>RTC
			</h1>
			<p class="par">
				Karnataka government provides an online delivery and management to
				citizens of Karnataka <br> people by developing a website
				called Bhoomi/Bhoomi RTC/Bhoomi karnataka <br>it was developed
				by help of National Informatics Centre(NIC) in banglore
			</p>

		</div>
	</div>
	</div>
	</div>
	</div>
	<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
	
	

</body>
</html>