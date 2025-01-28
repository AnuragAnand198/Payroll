<!DOCTYPE html>
<title>Welcome to Payroll</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="css/font.css">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

<!-- Sidebar/menu -->
<?php
    include('navigation.php');
    ?>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Payroll system</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
  <div class="w3-main" style="margin-left:290px;margin-right:-10px;margin-top: -5px;margin-bottom: 0px">

  <!-- Header -->  
   <div class="w3-display-container w3-text-white">
  <img src="https://epay.fssai.gov.in/fps/bikramimages/banner11.jpg" alt="Lights" style="height:720px">
  <div class="w3-display-topleft w3-container"><p></p></div>
  <div class="w3-display-topright w3-container"><p></p></div>
  <div class="w3-display-bottomleft w3-container"><p></p></div>
  <div class="w3-display-bottomright w3-container"><p></p></div>
  <div class="w3-display-topmiddle" style="font-size: 20px"></div>
  <div class="w3-display-left w3-container"></div>
  <div class="w3-display-right w3-container"></div>
  <div class="w3-display-middle w3-large w3-text-black"></div>
  <div class="w3-display-bottommiddle"><p></p></div>
 
   </div>
      
          
  </div>

<!-- W3.CSS Container -->


<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>
