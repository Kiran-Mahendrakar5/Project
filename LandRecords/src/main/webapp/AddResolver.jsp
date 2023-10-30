<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD RESOLVER</title>
<style type="text/css">
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

.icon {
	width: 200px;
	float: left;
	height: 70px;
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
	padding-left: -400px;
}

.navbar {
	width: 1200px;
	height: 75px;
	margin: auto;
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

.content {
	text-align: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	color: white; /* Set the text color */
	font-size: 42px; /* Increase the font size as needed */
    font-weight: bold; /* Make the text bold */
    margin: 0; /* Remove default margin for h1 */
	
}

.content h1 {
	font-size: 32px; /* Adjust the font size as needed */
	margin: 0; /* Remove default margin for h1 */
}
</style>
</head>

<body>
	<div class="main">
		<div class="navbar">
			<div class="icon"></div>

			<div class="menu">
				<ul>


					<li><a class="navbar-brand" id="ADDRECORDS" href="Add.jsp">ADDRECORDS</a></li>
					<li><a class="navbar-brand" id="VIEWRECORDS"
						href="OneRead.jsp">VIEWRECORDS</a></li>
					<li><a class="navbar-brand" id="home" href="Home.jsp">LOGOUT</a></li>


				</ul>
			</div>

		</div>

		<div class="content">
			<!-- <h2>WELCOME ${adminName}</h2> -->
		<span style="position: relative; top: -80px;">WELCOME To Karnataka Bhoomi Land Records RTC</span>
			
		</div>
		<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
	</div>


</body>
</html>