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

    @import url('https://fonts.googleapis.com/css?family=Rubik:400,500&display=swap');

    body {
      background-image: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
        radial-gradient(circle at 55% 100%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
        radial-gradient(circle at 40% 75%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
        radial-gradient(circle at 7% 99%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
        radial-gradient(circle at 69% 76%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
        radial-gradient(circle at 2% 35%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
        radial-gradient(circle at 14% 48%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 6%, transparent 6%, transparent 94%),
        radial-gradient(circle at 28% 87%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
        radial-gradient(circle at 65% 14%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
        radial-gradient(circle at 51% 36%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
        radial-gradient(circle at 6% 93%, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.04) 4%, transparent 4%, transparent 96%),
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
      margin-top: 45px;
    }

    .centered-text {
      text-align: center;
      color: black;
      font-size: 44px;
      padding: 20px;
    }

    .centered-column {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      padding: 20px;
    }

    .centered-column a {
      display: block;
      margin: 10px 0;
      text-decoration: none;
      color: white;
      font-size: 18px;
      background: #007bff;
      padding: 10px 20px;
      border-radius: 5px;
      width: 150px;
      text-align: center;
    }

    .logi {
      color: black;
    }

    .content {
      margin-top: 70px;
      text-align: center;
    }

    .content span {
      position: relative;
      top: -80px;
      font-size: 28px; /* Adjust the font size as needed */
    }
    
  </style>
</head>

<body>

  <div class="navbar">
    <div class="logo">
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of_Karnataka.svg.png">
    </div>
    <ul>
      <a class="logi" href="Home.jsp">LOGOUT</a>
    </ul>
  </div>
    <div class="content">
    <span>WELCOME ${Admin.adminName} To Karnataka Bhoomi Land Records RTC</span>
  </div>
  
  


 
  <div class="centered-column">
  <img alt="image" src="${Admin.adminImage}" class="custom-image-class" style="max-width: 150px; max-height: 100px; border: 2px solid black;">
   
    <a href="Add.jsp">ADD RECORDS</a>
    <a href="OneRead.jsp">VIEW RECORDS</a>
  </div>
  
 <footer style="background-color: transparent;  text-align: center;" class="footer">
    <div class="container">
        <p class="text-white" style="margin-top: 150px;"> <!-- Adjust the margin-top value as needed -->
            Revenue Department<br> About | Govt Orders & Tenders | RTI Act | Contact Us<br> Copyright © 2023 | Bhoomi Monitoring Cell<br> Release Version: 1.0.0.0
        </p>
    </div>
</footer>


</body>
</html>
