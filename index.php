<?php 
  ob_start();
  session_start(); 
?>
<!DOCTYPE html>
<html>
<head>
  <title>T-Shoes</title>
    <link href="webroot/font/Font Awesome/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="webroot/bootstrap4/css/bootstrap.css">
    <link rel="stylesheet" href="webroot/web.css">
    <link href="https://fonts.googleapis.com/css?family=Sen:400,700,800&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/cb2ec89b0c.js" crossorigin="anonymous"></script><link rel="stylesheet" href="./style.css">
    <script src="webroot/jquery/jquery.js"></script>
    <script src="webroot/bootstrap4/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <!-- tuyết rơi     <script type="text/javascript" src="webroot/tuyetroi.js"></script>  tuyết rơi   --> 

</head>
<body >

   
    <?php
          include_once 'config/database.php';
          include_once('view/element/header.php');
          include_once('controller/view-controller.php');
          include_once('view/element/footer.php');

	?>


</body>
</html>