<?php
session_start();
error_reporting(0);
include('include/dbconnection.php');

if(isset($_POST['login']))
  {
    $email=$_POST['email'];
    $password=md5($_POST['password']);
    $query=mysqli_query($con,"select ID from tbluser where  Email='$email' && Password='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['lduid']=$ret['ID'];
     header('location:dashboard.php');
    }
    else{
    $msg="Invalid Details.";
    }
  }
  ?>




<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Wash & Dry - Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <style>
  body {
  background-image: url('https://c4.wallpaperflare.com/wallpaper/225/365/217/anime-digital-digital-art-artwork-laundry-hd-wallpaper-preview.jpg');
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>

</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header font-weight-bold">Wash & Dry > User Login</div>
      <div class="card-body">
         <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>

        <form class="form-horizontal" action="" name="login"  method="post">
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="email" name="email" class="form-control border-dark"  required="required" >
              <label for="inputEmail">Email</label>
            </div>
          </div>

          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="password" name="password" class="form-control border-dark"  required="required">
              <label for="inputPassword">Password</label>
            </div>
          </div>
   
          <input type="submit" name="login" class="btn btn-dark btn-block rounded-pill" value="login">
        </form>

          <div class="text-center">
          <a class="d-block small mt-3" href="register.php">New User Register!! </a>
          <a class="d-block small" href="#">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
