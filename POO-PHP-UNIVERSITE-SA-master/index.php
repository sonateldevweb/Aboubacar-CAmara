<!DOCTYPE html>
<html lang="en">
<head>
  <title>Gestion Université</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("page/images/bbim.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" style="margin-bottom:0px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand"  href="#">SA Université</a>
    </div>
    <ul class="nav navbar-nav">
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Find All
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="page/findall.php">Etudiant</a></li>
          <li><a href="page/boursierall.php">Boursier</a></li>
          <li><a href="page/noboursierall.php">Non Boursier</a></li>
          <li><a href="page/logerall.php">Loger</a></li>
        </ul>
      </li>
      <li >
        <a  href="page/find.php">Find</a>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="page/add.php">Add
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="page/add.php">Etudiant</a></li>
        
        </ul>
      </li>
      <li><a href="#">Check Statut</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </div>
</nav> 
  
<div class="bg"></div>



</body>
</div>

<?php
include 'page/footer.php';
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>
