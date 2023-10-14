<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD DETAILS</title>


</head>
<body>
<h2><center>REGISTER</center></h2><br>
	<form action="savingrec" method="post">
		<div class="form-floating mb-3" style="text-align: center;">
			<label for="State">State:</label> <input type="text" id="State"
				name="State" placeholder="EnterState"><br> <br>
				<h4>${state}</h4>

			<div class="form-floating mb-3" style="text-align: center;">
				<label for="district">district:</label> <input type="text"
					id="district" name="district" placeholder="Enterdistrict"><br>
				<br>
				<h4>${district}</h4>

				<div class="form-floating mb-3" style="text-align: center;">
					<label for="taluk">taluk:</label> <input type="text" id="taluk"
						name="taluk" placeholder="Entertaluk"><br> <br>
						<h4>${Taluk}</h4>

					<div class="form-floating mb-3" style="text-align: center;">
						<label for="Hobli">Hobli:</label> <input type="text" id="Hobli"
							name="Hobli" placeholder="EnterHobli"><br>
						<br>
						<h4>${Hobli}</h4>
						<div class="form-floating mb-3" style="text-align: center;">
							<label for="village">village:</label> <input type="text"
								id="village" name="village" placeholder="Entervillage"><br>
							<br>
                             <h4>${Village}</h4>
							<div class="form-floating mb-3" style="text-align: center;">
								<label for="ownerName">ownerName:</label> <input type="text"
									id="ownerName" name="ownerName" placeholder="EnterownerName"
									><br> <br>
                                    <h4>${OwnerName}</h4>
								<div class="form-floating mb-3" style="text-align: center;">
									<label for="mobileNumber">mobileNumber:</label> <input
										type="number" id="mobileNumber" name="mobileNumber"
										placeholder="EntermobileNumber"><br> <br>
										<h4>${MobileNumber}</h4>

									<div class="form-floating mb-3" style="text-align: center;">
										<label for="hissaNumber">hissaNumber:</label> <input
											type="number" id="hissaNumber" name="hissaNumber"
											placeholder="EnterhissaNumber"><br> <br>
											<h4>${HissaNumber}</h4>

										<div class="form-floating mb-3" style="text-align: center;">
											<label for="aadharNumber">aadharNumber:</label> <input
												type="number" id="aadharNumber" name="aadharNumber"
												placeholder="EnteraadharNumber"><br> <br>
												<h4>${AadharNumber}</h4>
												

											<div class="form-floating mb-3" style="text-align: center;">
												<label for="serveNumber">serveNumber:</label> <input
													type="number" id="serveNumber" name="serveNumber"
													placeholder="EnterserveNumber"><br> <br>
													<h4>${SurveNumber}</h4>

												<div class="form-floating mb-3" style="text-align: center;">
													<label for="year">year:</label> <input type="number"
														id="year" name="year" placeholder="Enteryear"><br>
													<br>
													<h4>${Year}</h4>
													<h1>${savee}</h1>
													<button type="submit" class="btn btn-primary">ADDDETAILS <a href="Success.jsp"></a></button><br>
													
	</form>

</body>
</html>