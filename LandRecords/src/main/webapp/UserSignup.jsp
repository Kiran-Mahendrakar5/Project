<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bhoomi Online</title>
<style>

* { box-sizing: border-box; }
@import url('https://fonts.googleapis.com/css?family=Rubik:400,500&display=swap');
  /* Add some basic styles to the navbar */
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

  .navbarr {
 
    height: 60px; /* Adjust the height as needed */
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
    color: black; /* Text color */
    font-size: 20px; /* Text size */
  }

  .logo img {
    max-height: 90px; /* Adjust the logo image size as needed */
    margin-right: 10px; /* Add some spacing to the right of the logo */
  margin-top: 40px; 
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

<div class="navbarr">
  <div class="logo">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of_Karnataka.svg.png">
  
  </div>
</div>
<div>
	<br>
	<h1 align="center">Bhoomi Online|Land Records|View</h1>
	<br>
	<br>
	<h3 style="text-align: center;">Records of Rights,Tenancy & Crops(RTC) Form 16 | Mutation
		Register | Mutation Status|Bhoomi Online|Land Records 2023</h3>
		  <h5 style="color: green;" align="center">${Registration}</h5>
          <h5 style="color: red;" align="center">${NotRegistration}</h5>
	<br>
	<h1 align="center">CREATE YOUR LOGIN ACCOUNT</h1>
	<form action="UserRecords" method="post">
		<div class="input-container">
			<input type="text" name="name" placeholder="ENTER YOURNAME" style="background-color: transparent;">
			<input type="email" name="email"
				placeholder="ENTER YOUREMAIL" style="background-color: transparent;"> <input type="number"
				name="mobileNumber" placeholder="ENTER MOBILENUMBER" style="background-color: transparent;">
				 <h5 style="color: red;">${MobileNumber}</h5>
		</div>
		<div class="input-container">
			<input type="number" name="aadharNumber" placeholder="ENTER AADHARNUMBER" style="background-color: transparent;">
			<input type="password" name="password"
				placeholder="ENTER PASSWARD" style="background-color: transparent;"> <input type="password"
				name="confirmPassword" placeholder="ENTER CONFIRM PASSWARD" style="background-color: transparent;">
				 <h5 style="color: red;">${ConfirmPassword}</h5>
		</div>
		
		<div class="input-container">


			<button type="submit" class="btn btn-danger">REGISTER</button>
		</div>
		   <p class="text-center text-muted mt-5 mb-0" style="text-align: center;">Have already an account? <a href="UserSignIn.jsp"
                    class="fw-bold text-body"><u>Login here</u></a></p>
	</form>
	</div>

</body>
</html>

