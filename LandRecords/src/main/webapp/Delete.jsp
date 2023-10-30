<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETEPAGE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style type="text/css">
  body {
    background-image: radial-gradient(circle at 30% 86%, rgba(255, 255, 255, 0.03) 0%, rgba(255, 255, 255, 0.03) 8%, transparent 8%, transparent 92%),
    /* Your existing background gradients here */
    linear-gradient(135deg, rgb(23, 233, 173), rgb(29, 24, 208));
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
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

  .input-container {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    width: 100%;
  }

  .input-container input {
    width: 100%;
    padding: 10px;
    margin: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    color: black;
    background-color: transparent;
    text-align: center;
  }

  .input-container button {
    width: 10%;
    padding: 10px;
    margin: 5px;
    background-color: #ff0000;
    color: #fff;
    border: none;
    border-radius: 5px;
  }
</style>
</head>
<body>
  <nav class="navbar">
    <div class="container">
      <a class="navbar-brand" id="home" href="OneRead.jsp">Home</a>
    </div>
  </nav>
  <br>
  <div class="form-container">
    <div>
      <br>
      <h1 align="center">Bhoomi Online|Land Records|View</h1>
      <br>
      <br>
      <h3>Records of Rights, Tenancy & Crops (RTC) Form 16 | Mutation Register | Mutation Status | Bhoomi Online | Land Records 2023</h3>
      <br>
      <form action="delete" method="post">
        <div class="input-container">
          <input type="number" id="serveNumber" name="serveNumber" placeholder="ENTER USER SERVENUMBER" required>
          <input type="number" name="hissaNumber" placeholder="ENTER HISSA NUMBER" required>
          
          <button type="submit" class="btn btn-danger">Click Delete</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
