<?php
session_start();
    include_once 'configuration.php'; 
?>

<html>
<head>
	<title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/reg.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body class="load">
	<header >
    <div class="main">
            <div class="top-nav-bar">
            	<img src="img/pppp.png" class="logo">
                <div class="menu-bar">
                <ul>
                  <li><a href="product.php">Products</a></li>
                    <li><a href="http://localhost/productrecommendation/index.php">Home</a></li>
                    <li><a href="http://localhost/productrecommendation/index.php#gallery">Gallery</a></li>
                    <li class="active"><a href="http://localhost/productrecommendation/buyerlogin.php">Buyer</a></li>
                    <li><a href="http://localhost/productrecommendation/index.php#about">About</a></li>
                    <li><a href="http://localhost/productrecommendation/index.php#contact">Contact</a></li>
                  
                </ul>
            </div>
            </div>
        </div>
    </header>

    <section>
    	<div class="main-header">
            <div class="wrapper">
                <div class="image-holder"></div>
    		    <div class="form">
                    <ul class="tab-group">
                        <li class="active"><a href="http://localhost/productrecommendation/buyerlogin.php">Log In</a></li>
                        <li ><a href="http://localhost/productrecommendation/buyerreg.php">Sign Up</a></li>
                    </ul>  
                    <h1>Welcome Back!</h1>
                    <form action="buyerlogin.php" method="post">
          
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" placeholder="Enter Email" name="email" required>
                        </div>
                        <div class="form-group" >
                            <label>Password:</label>
                            <input type="password" placeholder="Enter password" name="password" required>
                        </div>
                        <p class="forgot"><a href="#">Forgot Password?</a></p>
                        <button type="submit" class="button button-block" name="submit"/>Log In</button>
                    </form>

                    <?php

                        if (isset($_POST['submit'])) 
                        {
                            $username=$_POST['email'];
                            $password=$_POST['password'];
                            
                            if($username=="admin" && $password=="admin")
                            {
                                   echo"<script>alert('Admin login');
                                      </script>";
                                      header("location:http://localhost/productrecommendation/productadd.php");
                                      exit();
                                
                            }
                            else
                            {
                            $query="select * from buyer where email='$username' AND password='$password'";
                            $check=mysqli_query($con,$query);
                            if (mysqli_num_rows($check) == 1) 
                            {
                                $row = mysqli_fetch_array($check);
                                $_SESSION["uid"] = $row["id"];
                                $_SESSION["username"] = $row["username"];
                                $_SESSION["email"] = $row["email"];
                                header("location:http://localhost/productrecommendation/profile.php");
                                    exit();
	                            
                            } 
                            else 
                            {
	                             echo"<script>alert('Connection Failed');
                                        windows.location.href='http://localhost/productrecommendation/buyerlogin.php';
                                      </script>";
	                            exit();
                            }
                            }
                        }


                        ?>

                </div>
            </div>
        </div>
    </section>

   </body>
</html>