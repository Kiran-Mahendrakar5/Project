<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> save Records</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   
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

    </style>
 <script type="text/javascript">

function populateDropdowns() {
	var selectedState = document.getElementById("state");
    var districtDropdown = document.getElementById("district");
    var talukDropdown = document.getElementById("taluk"); // Fix this line
    var postDropdown = document.getElementById("post");
    var villageDropdown = document.getElementById("village");

  
	
    if (selectedState === "Karnataka") {
        populateDropdown(districtDropdown, [
        "--Select District--",
                  "Bangalore",
                  "Chitadurga",
                  "Tumkur",
            
            
        ]);
    }
	
    
    document.getElementById("district").addEventListener("change", function() {
        var selectedDistrict = this.value;
        var talukDropdown = document.getElementById("taluk");
        talukDropdown.innerHTML = ""; // Clear existing options 
        
        if (selectedDistrict === "Bangalore") {
           
            populateDropdown(talukDropdown, [
            "--Select Taluk--",
              "Yallanka",
              "BBMP",
              "Nelamangala",
              "Chikkabalapur"
                
            ]);

            
            
        } else if (selectedDistrict === "Chitadurga") {
            populateDropdown(talukDropdown, [
            "--Select Taluk--",
              "Hosadurga",
              "Holalkere",
              "Hiriyur",
              "Huliyar"
                
            ]);
           
        }

        else if (selectedDistrict === "Tumkur") {
            populateDropdown(talukDropdown, [
            "--Select Taluk--",
              "Sira",
              "Kunigal",
              "Gubbi",
              "Tiptur"
                
                
            ]);
            
        }
    });

    document.getElementById("taluk").addEventListener("change", function() {
    var selectedTaluk  = this.value;
    var postDropdown = document.getElementById("post");
    postDropdown.innerHTML =" ";
      
    if (selectedTaluk === "Yallanka") {
        populateDropdown(postDropdown, [
        "--Select Post--",
              "Yallanka1",
              "Yallanka2"
        ]);
       
    } else if (selectedTaluk === "BBMP") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "BBMP1",
              "BBMP2"
          ]);
      
    }  else if (selectedTaluk === "Nelamangala") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Nelamangala1",
              "Nelamangala2"
          ]);
    }  else if (selectedTaluk === "Chikkabalapur") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Chikkabalapur1",
              "Chikkabalapur2"
          ]);
    }
    
    else if (selectedTaluk === "Hosadurga") {
        populateDropdown(postDropdown, [
            "--Select Post--",
            "Hosadurga1",
            "Hosadurga2"
        ]);
  }

    else if (selectedTaluk === "Holalkere") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Holalkere1",
              "Holalkere2"
          ]);
    } else if (selectedTaluk === "Hiriyur") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Hiriyur1",
              "Hiriyur2"
          ]);
    }  else if (selectedTaluk === "Huliyar") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Huliyar1",
              "Huliyar2"
          ]);
    } else if (selectedTaluk === "Sira") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Sira1",
              "Sira2"
          ]); 
    } else if (selectedTaluk === "Kunigal") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Kunigal1",
              "Kunigal2"
          ]); 
    } else if (selectedTaluk === "Gubbi") {
          populateDropdown(postDropdown, [
              "--Select Post--",
              "Gubbi1",
              "Gubbi2"
          ]); 
    } else if (selectedTaluk === "Tiptur") {
          populateDropdown(postDropdown, [
              "--Select Post--",  
              "Tiptur2"
          ]); 
    }
});


document.getElementById("post").addEventListener("change", function() {
    var selectedPost  = this.value;
    var villageDropdown = document.getElementById("village");
    villageDropdown.innerHTML = ""; // Clear existing options

    if (selectedPost === "Yallanka1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Kodigehalli",
              "Sanjeeveni"
           
            
            
        ]);  
    }  else if (selectedPost === "Yallanka2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "MaruthiNagar",
              "Amrutha Halli"
        ]);  
    }else if (selectedPost === "BBMP1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Sadhashivnagar",
              "Mathikere"
        ]);  
    }else if (selectedPost === "BBMP2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "BEL",
              "Vidyaranyapura"
        ]);  
    }else if (selectedPost === "Nelamangala1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Dabaspete",
              "Jalahalli"
        ]);  
    }else if (selectedPost === "Nelamangala2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "8THmaili",
              "peenya"
        ]);  
    }else if (selectedPost === "Chikkabalapur1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Rajankunte",
              "Koratgere"
        ]);  
    }else if (selectedPost === "Chikkabalapur2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Gowribudhanur",
              "Gowripura"
          
        ]);  
    }else if (selectedPost === "Hosadurga1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "CBkere",
              "Kanchipura"
                            
        ]);  
    }else if (selectedPost === "Hosadurga2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Handpost",
              "Kellod"
                            
                            
        ]);  
    }else if (selectedPost === "Holalkere1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Devigere",
              "Mavinakatte"
                            
                            
        ]);  
    }else if (selectedPost === "Holalkere2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Holalkerepost",
              "Shivni"
                            
                            
        ]);  
    }else if (selectedPost === "Hiriyur1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Marikanive",
              "Hiriyurpost"
                            
                            
        ]);  
    }else if (selectedPost === "Hiriyur2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Golralli",
              "Madhikatte"
           
           
           
                            
        ]);  
    }else if (selectedPost === "Huliyar1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Yalnodu",
              "Huliyarpost"
                                   
                            
        ]);  
    }else if (selectedPost === "Huliyar2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "HuliyarGate",
              "Batrahalli"
                                   
                            
        ]);  
    }else if (selectedPost === "Sira1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Kallabella",
              "Bukkapatna"        
                            
        ]);  
    }else if (selectedPost === "Sira2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Bukkapatanpost",
              "Madhuri"
						 
                            
        ]);  
    }else if (selectedPost === "Kunigal1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "Kunigal1Kudhurai",
              "Golla"
						
                            
        ]);  
    }else if (selectedPost === "Kunigal2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "KunigalTown",
              "Kunigalroad"
             		
                            
        ]);  
    }else if (selectedPost === "Gubbi1") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "GubbiRoad",
              "NandhiRoad"
			
						
                            
        ]);  
    }else if (selectedPost === "Gubbi2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "GubbiTown",
              "Gubbigate"
						
                            
        ]);  
    }else if (selectedPost === "Tiptur2") {
          populateDropdown(villageDropdown, [
              "--Select Village--",
              "KB Gate",
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
<!-- Navbar -->
<nav class="navbar">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Navbar brand -->
        <a class="navbar-brand mt-2 mt-lg-0" href="AddResolver.jsp">
            <h5 class="pt-1">Home</h5>
        </a>
        

            
            <div class="d-flex align-items-center justify-content-start">
                <!-- Icon -->
                <a class="text-reset me-3" href="#">
                    <i class="fas fa-shopping-cart text-white"></i>
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
			<h1  align ="center">Bhoomi Online|Land Records|View</h1> 
			<br> 
			<br>
			<h3>Records of Rights,Tenancy & Crops(RTC) Form 16 | Mutation Register | Mutation Status</h3> 
			<br> 
			<form class="search" action="find" method="post">
		 		   <div  class="form-row">
		 			<div class="col"> 
		 				 
	 						<label    class="form-lbl">State</label> 
	 					 	<select    class="form-control" id="state" name="state"  onchange="populateDropdowns()" required>
                            <option value="">Select State</option>
                            <option value="Karnataka">Karnataka</option>
	 					 		 
	 					 	</select>
 					 	 
		 			</div> 
		 			<div class="col"> 
		 				 
	 						<label for="district"    class="form-lbl">District</label> 
	 					 	<select  id="district" class="form-control" name="district"  required  >
	 					 		 
	 					 		 <option value="">Select District</option>
	 					 	     	<option value="Bangalore">Bangalore</option>
                           <option value="Chitadurga">Chitadurga</option>
                            <option value="Tumkur">Tumkur</option>
                          
	 					 	</select>
 					 	 
		 			</div> 
		 			<div class="col"> 
		 				 
	 						<label  for="taluk"    class="form-lbl">Taluk</label> 
	 					 	<select id="taluk" class="form-control" name="taluk" required>
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
		 				 
	 						<label class="form-lbl" for="post"> Post</label> 
	 					 	<select class="form-control" name="post" id="post" required>
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
		 				 
	 						<label class="form-lbl" for="village">Village</label> 
	 					 	<select class="form-control select2" name="village" id="village" required>
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
		 			
		 			&nbsp;&nbsp;
		 			 <button type="submit" id="custom-button" class="btn btn-success" >GO</button>
		 			</div> 
		 			 </form>
		 			 
</div>
		 		
			
			
			
			<br>
			  <table class="table table-bordered table-striped" style="background-color: transparent;">

  <thead class="table" style="background-color: transparent;">
  <tr>
       
      <th scope="col">Owner Name</th>
      <th scope="col">Mobile Number</th>
      <th scope="col">Hissa Number</th>
      <th scope="col">Aadhar Number</th>
      <th scope="col">Serve Number</th>
      <th scope="col">Year</th>
      
    </tr></thead>
  
  <tbody>     
    <c:forEach var="record" items="${vill}">
<tr>
 
<td>${record.ownerName}</td>
<td>${record.mobileNumber}</td>
<td>${record.aadharNumber}</td>
<td>${record.hissaNumber}</td>
<td>${record.serveNumber}</td>
<td>${record.year}</td>
<td> <a class="btn btn-primary" href="Update.jsp" role="button">EDIT</a>
       &nbsp; &nbsp;</td>
      
    <td> <a class="btn btn-danger" id="dlete" href="Delete.jsp" role="button">DELETE</a></td>

</tr>

</c:forEach>
  </tbody>
  
  </tbody>
</table>
			
<!--<div class="but">
		 <a class="btn btn-primary" href="Update.jsp" role="button">EDIT</a>
       &nbsp; &nbsp;
      
      <a class="btn btn-danger" id="dlete" href="Delete.jsp" role="button">DELETE</a>
		 </div> -->


 
    <!-- Include Bootstrap and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

    
 
 
 
 
  


</body>

</html>
