<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER PAGE</title>
<style type="text/css"></style>
</head>
<body>
<h2><center>REGISTER PAGE</center></h2><br>
  <form action="save" method="POST">
  <div class="form-floating mb-3"  style="text-align: center;">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="EnterUserName" required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email"placeholder="EnterEmail" required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="EnterPassward"required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
             <label for="dateOfBirth">Date of Birth:</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth" placeholder="EnterDateOfBirth" required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
        <label for="phoneNumber">Phone Number:</label>
        <input type="tel" id="phoneNumber" name="phoneNumber" placeholder="EnterPhoneNumber"required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
         <label>   
Location :  
</label>   
<select>  
<option value="Bangalore">Bangalore</option>  
<option value="Tumkur">Tumkur</option>  
<option value="Mysore">Mysore</option>  
<option value="Hubbali">Hubbali/option>  
<option value="Davangere">Davangere</option>  
<option value="Chitradurga">Chitradurga</option>  
<option value="Ballary">Ballary</option>  
</select>  <br><br>
      
        
<div class="form-floating mb-3"  style="text-align: center;">
        <label for="fatherName">Father's Name:</label>
        <input type="text" id="fatherName" name="fatherName" placeholder="EnterFatherName" required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
        <label for="motherName">Mother's Name:</label>
        <input type="text" id="motherName" name="motherName" placeholder="EnterMotherName" required><br><br>
        
<div class="form-floating mb-3"  style="text-align: center;">
        <button type="submit">REGISTER</button>
        <h1>${save}</h1>
    </form>
</body>
</html>


</body>
</html>