<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
<form action="readd" method="get">
<button type="submit" class="btn btn-primary">VIEWRECORDS</button>
</form>
<table border="1">
		
		<c:forEach var="list" items="${read}">
			<tr>
				<td>${list.State}</td>
				<td>${list.district}</td>
				<td>${list.taluk}</td>
				<td>${list.Hobli}</td>
				<td>${list.village}</td>
				<td>${list.ownerName}</td>
				<td>${list.mobileNumber}</td>
				<td>${list.hissaNumber}</td>
				<td>${list.aadharNumber}</td>
				<td>${list.serveNumber}</td>
				<td>${list.year}</td>

			</tr>

		</c:forEach>
		</table>

</body>
</html>