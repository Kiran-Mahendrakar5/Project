<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
    background-image: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
                    radial-gradient(circle at 55% 100%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
                    /* ... (your other gradients) ... */
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

  .centered-column {
    display: flex;
    flex-wrap: wrap; /* Allow boxes to wrap to the next row */
    text-align: center;
    padding: 20px;
  }

  .centered-column .box {
    display: block;
    margin: 10px;
    text-decoration: none;
    color: white;
    font-size: 18px;
    background: #007bff;
    padding: 10px 20px;
    border-radius: 5px;
    width: calc(33.33% - 25px); /* 3 boxes in a row with margins between them */
  }

  .centered-column .box.form-box {
    width: calc(33.33% - 25px); /* 1/3 of the row for the form */
  }

  .centered-column .form {
    background: #050ce4;
    border: 2px solid #007bff;
    border-radius: 5px;
    padding: 20px;
  }
   .centered-column .form input[type="email"],
  .centered-column .form input[type="number"],
  .centered-column .form input[type="password"] {
    display: block;
    margin: 10px;
    padding: 10px;
    width: 100%;
    border: 1px solid #007bff;
    border-radius: 5px;
  }

  .centered-column .form button {
    display: block;
    margin: 10px;
    padding: 10px 20px;
    background: #007bff;
    color: black;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
</style>

</head>
<body>

<div class="navbar">
  <div class="logo">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of-Karnataka.svg.png">
  </div>
</div>

<div class="centered-text">
  <h1>BHOOMI ONLINE CITIZEN REGISTRATION FOR SMS ALERT</h1>
</div>

<div class="centered-column">
  <div class="box">
    <p>USE</p>
    <ul>
     
      <li>Citizen May Register Their Email To Get OTP Alerts About Agriculture Land  </li>
      
    </ul>
  </div>

  <div class="box form-box">
    <div class="form">
      <h2>SEND OTP</h2>
     <form action="ForgetPassward" method="post">
        <input type="email" name="email" value="${Emails}" placeholder="Enter your Email">
         <h5 style="color: red;">${Email}</h5>
        <p><a href="ForgetPassward.jsp">Resend OTP</a></p>
        <button type="submit">Send OTP</button>
        </form>
        <form action="checksotp" method="post">
        <input type="number" name="otp" value="${checkotp}" placeholder="Enter OTP">
        <h5>${otpsent}</h5>
        <button type="submit">Submit</button>
      </form>
    </div>
  </div>

  <div class="box">
    <p>Procedure</p>
    <ul>
      <li>Type the Email</li>
      <li>Click in Generate OTP</li>
      <li>Now You Will OTP Number To Register And Click Verify Buttom</li>
      <li>And Successfully Verification</li>
      
    </ul>
  </div>
</div>

</body>
</html>
