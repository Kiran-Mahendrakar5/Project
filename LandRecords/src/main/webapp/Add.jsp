<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Land Records</title>
<link
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
rel="stylesheet">
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
crossorigin="anonymous">
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
crossorigin="anonymous"></script>


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
background-size: cover;
height: 300%;
margin: 0;
padding: 0;
display: flex;
flex-direction: column;
min-height: 100vh;
}

header {
/*background-color: black;*/
color: green;
text-align: center;
padding: 10px;
}

header a {
color: white;
text-decoration: none;
}

.topic {
color: white;
}

.content-wrapper {
padding-top: 30px;
flex-grow: 2;
background: transparent;
display: flex;
justify-content: center;
align-items: center;
}

.content {
padding: 50px;
border: 3px solid rgb(217, 235, 235);
border-radius: 3.5rem;
max-width: 200vh;
}

input[type="text"], input[type="number"], select {
width: 100%;
border: 1px solid white;
color: black;
background-color: white;
padding: 5px;
flex-grow: 2;
margin-bottom: 10px;
}

.ownerName {
margin-top: 20px;
}

footer {
/*background-color: black;*/
color: white;
text-align: center;
padding: 10px;
}

#footerButton {
/*background-color: #000;*/
color: #fff;
padding: 10px 20px;
text-align: center;
}

#footerButton a {
/*color: #fff;*/
text-decoration: none;
}

a:link, a:visited {
background-color: rgb(5, 236, 224);
color: white;
padding: 14px 20px;
text-align: center;
text-decoration: none;
display: inline-block;
}

a:hover, a:active {
background-color: rgb(4, 192, 239);
}
</style>

<script>
  function populateDropdowns() {
      var selectedState = document.getElementById("state").value;
      var districtDropdown = document.getElementById("district");
      var talukDropdown = document.getElementById("taluk"); // Fix this line
      var postDropdown = document.getElementById("post");
      var villageDropdown = document.getElementById("village");

      talukDropdown.innerHTML = ""; // Clear existing options
      districtDropdown.innerHTML = "";
      postDropdown.innerHTML = "";
      villageDropdown.innerHTML = "";

      if (selectedState === "Karnataka") {
          populateDropdown(districtDropdown, [
              "--Select District--",
              "Bangalore",
              "Chitadurga",
              "Tumkur",
            
          ]);
      }
      
// Add an event listener to populate the taluk dropdown when the district changes
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
  var selectedTaluk = this.value;
  var postDropdown = document.getElementById("post");
  postDropdown.innerHTML = ""; // Clear existing options

                  // Coimbatore

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
  }
  else if (selectedTaluk === "Nelamangala") {
      populateDropdown(postDropdown, [
          "--Select Post--",
          "Nelamangala1",
          "Nelamangala2"
      ]);
  }
  else if (selectedTaluk === "Chikkabalapur") {
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
  }
  else if (selectedTaluk === "Hiriyur") {
      populateDropdown(postDropdown, [
          "--Select Post--",
          "Hiriyur1",
          "Hiriyur2"
      ]);
  }
  else if (selectedTaluk === "Huliyar") {
      populateDropdown(postDropdown, [
          "--Select Post--",
          "Huliyar1",
          "Huliyar2"
      ]);
  }
                  
  else if (selectedTaluk === "Sira") {
      populateDropdown(postDropdown, [
          "--Select Post--",
          "Sira1",
          "Sira2"
      ]);
  }
  else if (selectedTaluk === "Kunigal") {
      populateDropdown(postDropdown, [
          "--Select Post--",
          "Kunigal1",
          "Kunigal2"
      ]);
  }
  else if (selectedTaluk === "Gubbi") {
      populateDropdown(postDropdown, [
          "--Select Post--",
          "Gubbi1",
          "Gubbi2"
      ]);
  }
  else if (selectedTaluk === "Tiptur") {
      populateDropdown(postDropdown, [
          "--Select Post--",  
          "Tiptur2"
      ]);
  }

});

// Add an event listener to populate the "Village" dropdown based on the selected "Post"
document.getElementById("post").addEventListener("change", function() {
  var selectedPost = this.value;
  var villageDropdown = document.getElementById("village");
  villageDropdown.innerHTML = ""; // Clear existing options

  if (selectedPost === "Yallanka1") {
      populateDropdown(villageDropdown, [
          "--Select Village--",
          "Kodigehalli",
          "Sanjeeveni"
      ]);
  } else if (selectedPost === "Yallanka2") {
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
  } else if (selectedPost === "Sira1") {
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
  } else if (selectedPost === "Tiptur2") {
      populateDropdown(villageDropdown, [
          "--Select Village--",
          "KB Gate",
          "ChikkanayakanahalliPost"
      ]);
  }
});

}
function populateDropdown(dropdown, options) {
      for (var i = 0; i < options.length; i++) {
          var option = document.createElement("option");
          option.value = options[i];
          option.text = options[i];
          dropdown.appendChild(option);
      }
  }


</script>


</head>
<body>

<header>
  <div class="d-flex justify-content-between">
    <div class="topic"></div>

    <a href="AddResolver.jsp">Home</a>
  </div>
</header>
<div class="content-wrapper">
  <div class="content">
    <form action="savingrec" method="post">

      <label for="state">Enter state:</label> <select name="state" id="state"
        onchange="populateDropdowns()" aria-placeholder="Select State">
        <option>Select State</option>
        <option value="Karnataka">Karnataka</option>
        
        



      </select><br> <label for="district">Enter district:</label> <select
        name="district" id="district" aria-placeholder="Select State">
        <option value="--Select District--">Select District</option>
                

      </select><br> <label for="taluk">Enter taluk:</label> <select name="taluk"
        id="taluk" aria-placeholder="Select State">
        <option value="--Select District--">Select Taluk</option>
        





      </select><br> <label for="post">Enter post:</label> <select name="post"
        id="post" aria-placeholder="Select State">
        


      </select><br> <label for="village">Enter village:</label> <select
        name="village" id="village" aria-placeholder="Select State">
        <option>Select Village</option>
        


      </select><br> <label for="ownerName" class="ownerName">Enter ownerName
        :</label> <input type="text" name="ownerName"
        id="ownerName"><br>
        
        <label for="mobileNumber">Enter mobileNumber:</label> 
        <input type="number" name="mobileNumber" id="mobileNumber"><br> 
        
        
        <label for="aadharNumber">Enter aadharNumber:</label> <input type="number"
        name="aadharNumber" id="aadharNumber"><br>
        

      <label for="hissaNumber">Enter hissaNumber:</label> <input type="number"
        name="hissaNumber" id="hissaNumber"><br>
        
      <label for="serveNumber">Enter serveNumber:</label> <input
        type="number" name="serveNumber" id="surveNumber"><br>
        
      <label for="year">Enter year:</label> <input type="number" name="year"
      id="year"><br>
      
      <button type="submit" class="btn btn-primary" name="action"
        value="addrecord">Add</button>
      <button type="reset" class="btn btn-danger" name="action"
        value="addrecord">RESET</button>
    </form>
  </div>
</div>

<footer id="footerButton">
  <p>
    &copy; 2023 <a href="mailto:your-email@example.com">kiranms.xworkz@gmail.com</a>
  </p>
</footer>

</body>
</html>
