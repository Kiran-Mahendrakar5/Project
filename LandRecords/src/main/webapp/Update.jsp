<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            border: 2px solid #000; /* Add your desired border styles here */
            padding: 20px;
            text-align: center;
        }
        input {
            margin: 5px;
        }
    </style>
</head>
<body>
    <form action="update" method="get">
        <input type="text" name="ownerName" placeholder="ENTER OwnerName">
        <br>
        <input type="number" name="mobileNumber" placeholder="ENTER MobileNumber">
        <br>
        <input type="number" name="aadharNumber" placeholder="ENTER AadharNumber">
        <br>
        <input type="number" name="year" placeholder="ENTER Year">
        <br>
        <input type="number" name="hissaNumber" placeholder="ENTER HissaNumber">
        <br>
        <input type="number" name="serveNumber" placeholder="ENTER ServeNumber">
        <br>
        <button type="submit" class="btn btn-primary">EDIT</button>
    </form>
</body>
</html>
    