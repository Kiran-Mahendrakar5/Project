<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewUser</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style type="text/css">
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

.but {
	text-align: center;
}

#dlete {
	margin-left: 50px;
}

#custom-button {
	background-color: rgb(6, 6, 224);
	/* Add any other styling you need for the button */
}

table {
	background-color: #000; /* Set the background color to white */
	color: black; /* Set the text color to black */
}

table th, table td {
	border: 1px solid #08ead3; /* Add a border to table cells */
}

.logout-link {
	position: absolute;
	top: 10px;
	right: 10px;
	color: black;
}

.navbar {
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

#myCard {
	width: 400px;
	border: 10px solid #000;
	padding: 50px;
	margin: 20px;
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
}

.card-title {
	color:#000;
	/* Set the color of the "LAND OWNER DETAILS" heading to grey */
	font-weight: bold; /* Make the text bold */
}

.card-subtitle {
	color: #000; /* Set the color of the details to black */
}
.card-body{
color: #000;
}

</style>
<script type="text/javascript">
	function populateDropdowns() {
		var selectedState = document.getElementById("state");
		var districtDropdown = document.getElementById("district");
		var talukDropdown = document.getElementById("taluk");
		var postDropdown = document.getElementById("post");
		var villageDropdown = document.getElementById("village");

		if (selectedState === "Karnataka") {
			populateDropdown(districtDropdown, [ "--Select District--",
					"Bangalore", "Chitadurga", "Tumkur",

			]);
		}

		document.getElementById("district").addEventListener(
				"change",
				function() {
					var selectedDistrict = this.value;
					var talukDropdown = document.getElementById("taluk");
					talukDropdown.innerHTML = ""; // Clear existing options 

					if (selectedDistrict === "Bangalore") {

						populateDropdown(talukDropdown, [ "--Select Taluk--",
								"Yallanka", "BBMP", "Nelamangala",
								"Chikkabalapur"

						]);

					} else if (selectedDistrict === "Chitadurga") {
						populateDropdown(talukDropdown, [ "--Select Taluk--",
								"Hosadurga", "Holalkere", "Hiriyur", "Huliyar"

						]);

					}

					else if (selectedDistrict === "Tumkur") {
						populateDropdown(talukDropdown, [ "--Select Taluk--",
								"Sira", "Kunigal", "Gubbi", "Tiptur"

						]);

					}
				});

		document.getElementById("taluk").addEventListener(
				"change",
				function() {
					var selectedTaluk = this.value;
					var postDropdown = document.getElementById("post");
					postDropdown.innerHTML = " ";

					if (selectedTaluk === "Yallanka") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Yallanka1", "Yallanka2" ]);

					} else if (selectedTaluk === "BBMP") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"BBMP1", "BBMP2" ]);

					} else if (selectedTaluk === "Nelamangala") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Nelamangala1", "Nelamangala2" ]);
					} else if (selectedTaluk === "Chikkabalapur") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Chikkabalapur1", "Chikkabalapur2" ]);
					}

					else if (selectedTaluk === "Hosadurga") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Hosadurga1", "Hosadurga2" ]);
					}

					else if (selectedTaluk === "Holalkere") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Holalkere1", "Holalkere2" ]);
					} else if (selectedTaluk === "Hiriyur") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Hiriyur1", "Hiriyur2" ]);
					} else if (selectedTaluk === "Huliyar") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Huliyar1", "Huliyar2" ]);
					} else if (selectedTaluk === "Sira") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Sira1", "Sira2" ]);
					} else if (selectedTaluk === "Kunigal") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Kunigal1", "Kunigal2" ]);
					} else if (selectedTaluk === "Gubbi") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Gubbi1", "Gubbi2" ]);
					} else if (selectedTaluk === "Tiptur") {
						populateDropdown(postDropdown, [ "--Select Post--",
								"Tiptur2" ]);
					}
				});

		document.getElementById("post")
				.addEventListener(
						"change",
						function() {
							var selectedPost = this.value;
							var villageDropdown = document
									.getElementById("village");
							villageDropdown.innerHTML = ""; // Clear existing options

							if (selectedPost === "Yallanka1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Kodigehalli",
										"Sanjeeveni"

								]);
							} else if (selectedPost === "Yallanka2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "MaruthiNagar",
										"Amrutha Halli" ]);
							} else if (selectedPost === "BBMP1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Sadhashivnagar",
										"Mathikere" ]);
							} else if (selectedPost === "BBMP2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "BEL",
										"Vidyaranyapura" ]);
							} else if (selectedPost === "Nelamangala1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Dabaspete",
										"Jalahalli" ]);
							} else if (selectedPost === "Nelamangala2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "8THmaili",
										"peenya" ]);
							} else if (selectedPost === "Chikkabalapur1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Rajankunte",
										"Koratgere" ]);
							} else if (selectedPost === "Chikkabalapur2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Gowribudhanur",
										"Gowripura"

								]);
							} else if (selectedPost === "Hosadurga1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "CBkere",
										"Kanchipura"

								]);
							} else if (selectedPost === "Hosadurga2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Handpost",
										"Kellod"

								]);
							} else if (selectedPost === "Holalkere1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Devigere",
										"Mavinakatte"

								]);
							} else if (selectedPost === "Holalkere2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Holalkerepost",
										"Shivni"

								]);
							} else if (selectedPost === "Hiriyur1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Marikanive",
										"Hiriyurpost"

								]);
							} else if (selectedPost === "Hiriyur2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Golralli",
										"Madhikatte"

								]);
							} else if (selectedPost === "Huliyar1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Yalnodu",
										"Huliyarpost"

								]);
							} else if (selectedPost === "Huliyar2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "HuliyarGate",
										"Batrahalli"

								]);
							} else if (selectedPost === "Sira1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Kallabella",
										"Bukkapatna"

								]);
							} else if (selectedPost === "Sira2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "Bukkapatanpost",
										"Madhuri"

								]);
							} else if (selectedPost === "Kunigal1") {
								populateDropdown(villageDropdown, [
										"--Select Village--",
										"Kunigal1Kudhurai", "Golla"

								]);
							} else if (selectedPost === "Kunigal2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "KunigalTown",
										"Kunigalroad"

								]);
							} else if (selectedPost === "Gubbi1") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "GubbiRoad",
										"NandhiRoad"

								]);
							} else if (selectedPost === "Gubbi2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "GubbiTown",
										"Gubbigate"

								]);
							} else if (selectedPost === "Tiptur2") {
								populateDropdown(villageDropdown, [
										"--Select Village--", "KB Gate",
										"ChikkanayakanahalliPost"

								]);
							}

						});

		function populateDropdown(dropdown, options) {
			for (var i = 0; i < options.length; i++) {
				var option = document.createElement("option");
				option.value = options[i];
				option.text = options[i];
				dropdown.appendChild(option);
			}
		}

	}
</script>

</head>
<body>
	<div class="navbar">
		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of_Karnataka.svg.png">


			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="logout-link"
					href="UserSignIn.jsp">LogOut</a></li>
			</ul>
		</div>
	</div>
	<br>
	<h1 align="center">Bhoomi Online|Land Records|View</h1>
	<br>
	<br>
	<h3>Records of Rights,Tenancy & Crops(RTC) Form 16 | Mutation
		Register | Mutation Status</h3>
	<div class="d-flex align-items-center justify-content-start">
		<!-- Icon -->
		<a class="text-reset me-3" href="#"> <i
			class="fas fa-shopping-cart text-white"></i>
		</a>

	</div>
	<!-- Right elements -->
	</div>
	<!-- Collapsible wrapper -->
	</div>
	<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
	<div class="container">



		<br>
		<form class="view" action="viewUser" method="post">
			<div class="form-row">
				<div class="col">

					<label class="form-lbl">State</label> <select class="form-control"
						id="state" name="state" onchange="populateDropdowns()" required>
						<option value="">Select State</option>
						<option value="Karnataka">Karnataka</option>

					</select>

				</div>
				<div class="col">

					<label for="district" class="form-lbl">District</label> <select
						id="district" class="form-control" name="district" required>

						<option value="">Select District</option>
						<option value="Bangalore">Bangalore</option>
						<option value="Chitadurga">Chitadurga</option>
						<option value="Tumkur">Tumkur</option>

					</select>

				</div>
				<div class="col">

					<label for="taluk" class="form-lbl">Taluk</label> <select
						id="taluk" class="form-control" name="taluk" required>
						<option value="">Select taluk</option>
						<option value="Yallanka">Yallanka</option>
						<option value="BBMP">BBMP</option>
						<option value="Nelamangala">Nelamangala</option>
						<option value="Chikkabalapur">Chikkabalapur</option>



						<option value="Hosadurga">Hosadurga</option>
						<option value="Holalkere">Holalkere</option>
						<option value="Hiriyur">Hiriyur</option>
						<option value="Huliyar">Huliyar</option>


						<option value="Sira">Sira</option>
						<option value="Kunigal">Kunigal</option>
						<option value="Gubbi">Gubbi</option>
						<option value="Tiptur">Tiptur</option>



					</select>

				</div>

				<div class="col">

					<label class="form-lbl" for="post"> Post</label> <select
						class="form-control" name="post" id="post" required>
						<option value="">Select post</option>

						<option value="Yallanka1">Yallanka1</option>
						<option value="Yallanka2">Yallanka2</option>

						<option value="BBMP1">BBMP1</option>
						<option value="BBMP2">BBMP2</option>


						<option value="Nelamangala1">Nelamangala1</option>
						<option value="Nelamangala2">Nelamangala2</option>

						<option value="Chikkabalapur1">Chikkabalapur1</option>
						<option value="Chikkabalapur2">Chikkabalapur2</option>




						<option value="Hosadurga1">Hosadurga1</option>
						<option value="Hosadurga2">Hosadurga2</option>

						<option value="Holalkere1">Holalkere1</option>
						<option value="Holalkere2">Holalkere2</option>



						<option value="Hiriyur1">Hiriyur1</option>
						<option value="Hiriyur2">Hiriyur2</option>

						<option value="Huliyar1">Huliyar1</option>
						<option value="Huliyar2">Huliyar2</option>


						<option value="Sira1">Sira1</option>
						<option value="Sira2">Sira2</option>


						<option value="Kunigal1">Kunigal1</option>
						<option value="Kunigal2">Kunigal2</option>


						<option value="Gubbi1">Gubbi1</option>
						<option value="Gubbi2">Gubbi2</option>


						<option value="Tiptur2">Tiptur2</option>




					</select>

				</div>
				<div class="col">

					<label class="form-lbl" for="village">Village</label> <select
						class="form-control select2" name="village" id="village" required>
						<option value="">Select village</option>
						<option value="Kodigehalli">Kodigehalli</option>
						<option value="Sanjeeveni">Sanjeeveni</option>
						<option value="MaruthiNagar">MaruthiNagar</option>
						<option value="Amrutha Halli">Amrutha Halli</option>


						<option value="Sadhashivnagar">Sadhashivnagar</option>
						<option value="Mathikere">Mathikere</option>
						<option value="BEL">BEL</option>
						<option value="Vidyaranyapura">Vidyaranyapura</option>

						<option value="Dabaspete">Dabaspete</option>
						<option value="Jalahalli">Jalahalli</option>
						<option value="8THmaili">8THmaili</option>
						<option value="peenya">peenya</option>

						<option value="Rajankunte">Rajankunte</option>
						<option value="Koratgere">Koratgere</option>
						<option value="Gowribudhanur">Gowribudhanur</option>
						<option value="Gowripura">Gowripura</option>

						<option value="CBkere">CBkere</option>
						<option value="Kanchipura">Kanchipura</option>
						<option value="Handpost">Handpost</option>
						<option value="Kellod">Kellod</option>

						<option value="Devigere">Devigere</option>
						<option value="Mavinakatte">Mavinakatte</option>
						<option value="Holalkerepost">Holalkerepost</option>
						<option value="Shivni">Shivni</option>

						<option value="Marikanive">Marikanive</option>
						<option value="Hiriyurpost">Hiriyurpost</option>
						<option value="Golralli">Golralli</option>
						<option value="Madhikatte">Madhikatte</option>

						<option value="Yalnodu">Yalnodu</option>
						<option value="Huliyarpost">Huliyarpost</option>
						<option value="HuliyarGate">HuliyarGate</option>
						<option value="Batrahalli">Batrahalli</option>




						<option value="Kallabella">Kallabella</option>
						<option value="Bukkapatna">Bukkapatna</option>
						<option value="Bukkapatanpost">Bukkapatanpost</option>
						<option value="Madhuri">Madhuri</option>

						<option value="Kunigal1Kudhurai">Kunigal1Kudhurai</option>
						<option value="Golla">Golla</option>
						<option value="KunigalTown">KunigalTown</option>
						<option value="Kunigalroad">Kunigalroad</option>


						<option value="GubbiRoad">GubbiRoad</option>
						<option value="NandhiRoad">NandhiRoad</option>
						<option value="GubbiTown">GubbiTown</option>
						<option value="Gubbigate">Gubbigate</option>

						<option value="KB Gate">KB Gate</option>
						<option value="ChikkanayakanahalliPost">ChikkanayakanahalliPost</option>

					</select>
				</div>

				<div class="col-md-3"
					style="padding-right: 100px; padding-left: 100px">
					<label class="form-lbl"> . </label>
					<button type="submit" class="form-control btn btn-primary">Go</button>
				</div>
			</div>

		</form>
		<br> <br>
		<form id="card" action="shdefault" method="post">

			<div class="row">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;

				<div class="col-md-3" style="width: 140px">
					<fieldset class="form-group">
						<label class="form-lbl">Surve Number</label> <select
							name="serveNumber" class="form-control" id="serveNumber">
							<option value="">SELECT A SURVE NUMBER</option>
							<c:forEach var="list" items="${view}">
								<option value="${list.serveNumber}">${list.serveNumber}</option>
							</c:forEach>
						</select>
					</fieldset>
				</div>

				<div class="col-md-3" style="width: 140px">
					<fieldset class="form-group">
						<label class="form-lbl">Hissa Number</label> <select
							name="hissaNumber" class="form-control" id="hissaNumber">
							<option value="">SELECT A HISSA NUMBER</option>
							<c:forEach var="list" items="${view}">
								<option value="${list.hissaNumber}">${list.hissaNumber}</option>
							</c:forEach>
						</select>
					</fieldset>
				</div>

				<div class="col-md-3"
					style="padding-right: 100px; padding-left: 100px">
					<label class="form-lbl"> . </label>
					<button type="submit" class="form-control btn btn-primary">Go</button>
				</div>
			</div>

		</form>
		<br>
		<center>
			<div class="col-md-2">
				<button type="button" class="form-control btn btn-primary"
					id="showCard" style="align-items: center;">Fetch</button>
			</div>
		</center>
	</div>
	<br>

	<center>
		<div class="card" id="myCard" style="display: none;">
			<div class="card-body" style="color: #000;">
			 <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Seal_of_Karnataka.svg/1200px-Seal_of_Karnataka.svg.png" alt="Karnataka Seal" style="max-width: 30%; height: 100px;">
				<h5 class="card-title">LAND OWNER DETAILS</h5>
				<h6 class="card-subtitle mb-2 text-muted" style="color: #000;">OWNER NAME:
					${forloop.ownerName}</h6>
				<h6 class="card-subtitle mb-2 text-muted" style="color: #000;">AADHAR NUMBER:
					${forloop.aadharNumber}</h6>
				<h6 class="card-subtitle mb-2 text-muted" style="color: #000;">MOBILE NUMBER:
					${forloop.mobileNumber}</h6>
				<h6 class="card-subtitle mb-2 text-muted" style="color: #000;">YEAR OF
					REGISTERATION: ${forloop.year}</h6>
			</div>
		</div>
	</center>



	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		document.getElementById("showCard").addEventListener("click",
				function() {
					$("#myCard").show();

					setTimeout(function() {
						$("#myCard").hide();
					}, 15000);

				});
	</script>

</body>
</html>
