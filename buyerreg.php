<?php
    session_start();

    include_once 'configuration.php';
    
?>
<!DOCTYPE html>
<html>
<head>
    <title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/reg.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/js" href="js/registration.js">
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
                    <li class="active"><a href="http://localhost/productrecommendation/buyerreg.php">Buyer </a></li>
                    <li><a href="http://localhost/productrecommendation/index.php#about">About</a></li>
                    <li><a href="http://localhost/productrecommendation/index.php#contact">Contact</a></li>
                </ul>
                </div>
            </div>
        </div>
    </header>

    <section>
        <div class="main"> 
            <div class="wrapper">
                <ul class="tab-group">
                    <li><a href="http://localhost/productrecommendation/buyerlogin.php">Log In</a></li>   
                    <li class="active"><a href="http://localhost/productrecommendation/buyerreg.php">Sign Up</a></li>
                </ul>
                <form action="buyerreg.php" method="post" enctype="multipart/form-data">
                    <div class="col-md-12">
                        <div class="col-md-9">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" placeholder="Enter name" name="username" required></input>
                            </div>
                        <div class="form-group">
                            <label>E-mail:</label>
                            <input type="email" placeholder="Enter E-mail" name="email"required></input>
                        </div>
                        <div class="form-group" >
                            <label>Set a Password:</label>
                            <input type="password" placeholder="Enter password" name="password"required></input>
                        </div>
                        <div class="form-group" >
                            <label>Again enter Password:</label>
                            <input type="password" placeholder="Enter password" name="cpass"required></input>
                        </div>
                        <div class="form-group">
                            <label>Contact Number:</label>
                            <input type="text" placeholder="Enter number"name="contact"required></input>
                        </div>
                        <button type="submit" name="submit" class="button button-block"/>Sign Up</button>
                        </div>
                    </div>
                </form>
            </div>
                    <?php

                        if (isset($_POST['submit']))
                            {
                                $username=$_POST["username"];
                                $email=$_POST['email'];
                                $password=$_POST['password'];  
                                $contact=$_POST['contact'];
                                $cpass =$_POST['cpass'];
                                //print_r($file);
                                if ($password=$cpass) 
                                {
                                    $query="select * from buyer where email='$email'";
                                    $query_check=mysqli_query($con,$query);
                                        if ($query_check) 
                                        {
                                            if (mysqli_num_rows($query_check) > 0) 
                                            {
                                                echo "<script>alert('Email already in use!');
                                                            window.location.href='http://localhost/productrecommendation/buyerreg.php';
                                                    </script>";
                                            }
                                            else
                                            {
                                                
                                                $insertion="insert into buyer (username,email,password,contact) values('$username','$email','$password','$contact')";
                                                $run=mysqli_query($con,$insertion);
                                                if($run)
                                                {                
                                                        echo "<script>alert('You are successfully registered!');
                                                              </script>";
                                                               header("location:http://localhost/productrecommendation/buyerlogin.php");
                                                        
                          
                                                }
                                                else
                                                {
                                                    echo"<script>alert('Connection Failed');
                                                    windows.location.href='http://localhost/productrecommendation/buyerreg.php';
                                                    </script>";
                                                }
                                            }
                                        } 
                                        else
                                        {
                                            echo"<script>alert('Database Error!');
                                            windows.location.href='http://localhost/productrecommendation/buyerreg.php';
                                            </script>";
                                        }
                                    }
                                    else
                                    {
                                        echo"<script>alert('Password does not match');
                                        windows.location.href='http://localhost/productrecommendation/buyerreg.php';
                                        </script>";
                                    }

                                }
                                else
                                {

                                }
                        ?>

    <script>
        function readURL(input)
        {
            if (input.files && input.files[0]) 
            {
                var reader= new FileReader();
                reader.onload =function(e)
                {
                    $('#Image')
                    .attr('src',e.target.result)
                    .width(215)
                    .height(250);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>        
        </div>
    </section>

</body>
</html>