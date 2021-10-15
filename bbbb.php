<?php
    session_start();
    include_once 'configuration.php';
    
?>

<!DOCTYPE html>
<html>
<head>
    <title>SOnline Shopping BD</title>    
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
                  <li><a href="product.html">Products</a></li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="index.html#gallery">Gallery</a></li>
                    <li class="active"><a href="http://localhost/productrecommendation/registration.php">Buyer </a></li>
                    <li><a href="index.html#about">About</a></li>
                    <li><a href="index.html#contact">Contact</a></li>
                    <li><a href="#cart"><i class="fab fa-opencart"></i></a></li>
                </ul>
            </div>
            </div>
        </div>
    </header>

    <section>
        <div class="main">

                <div class="form">
                    <ul class="tab-group">
                        <li class="active"><a href="http://localhost/productrecommendation/registration.php">Sign Up</a></li>
                        <li><a href="http://localhost/productrecommendation/registration2.php">Log In</a></li>
                    </ul>
                    <form action="bbbb.php" method="post" enctype="multipart/form-data">
          
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" placeholder="Enter name" name="username" required></input>
                        </div>
                        <div class="form-group">
                            <label>Company Name:</label>
                            <input type="text" placeholder="Enter company name"name="company_name"required></input>
                        </div>
                        <div class="form-group">
                            <label>Business E-mail:</label>
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
                            <label>Address:</label>
                            <input type="text" placeholder="Enter Address"name="address"required></input>
                        </div>
                        <div class="form-group">
                            <label>Contact Number:</label>
                            <input type="text" placeholder="Enter number"name="contact"required></input>
                        </div>
                        <div class="form-group">
                            <label>Include a Photo:</label>
                            <input type="file" name="logo" value="fileupload" id="fileupload" class="form-control" required></input>
                        </div>
                        <button type="submit" name="submit" class="button button-block"/>Sign Up</button>
                    </form>

                    <?php

                        if (isset($_POST['submit']))
                            {
                                $username=$_POST["username"];
                                $company_name=$_POST['company_name'];
                                $email=$_POST['email'];
                                $password=$_POST['password'];  
                                $address=$_POST['address'];
                                $contact=$_POST['contact'];
                                $cpass =$_POST['cpass'];
                                $file=$_FILES['logo'];

                                //print_r($file);

                                $fileName=$_FILES['logo']['name'];
                                $fileTmpName=$_FILES['logo']['tmp_name'];
                                $fileSize=$_FILES['logo']['size'];
                                $fileError=$_FILES['logo']['error'];
                                $fileType=$_FILES['logo']['type'];

                                $fileExt=explode('.',$fileName );
                                $fileActualExt =strtolower(end($fileExt));
                                $allowed = array('jpg','jpeg','png','PNG');

                                if (in_array($fileActualExt, $allowed)) 
                                {
                                    $fileDestination='photos/'.$fileName;
                                    move_uploaded_file( $fileTmpName, $fileDestination);
                                }

                                if ($password=$cpass) 
                                {
                                    $query="select * from buyer where email='$email'";
                                    $query_check=mysqli_query($con,$query);
                                        if ($query_check) 
                                        {
                                            if (mysqli_num_rows($query_check) > 0) 
                                            {
                                                echo "<script>alert('Email already in use!');
                                                            window.location.href='login.php';
                                                    </script>";
                                            }
                                            else
                                            {
                                                
                                                $insertion="insert into buyer (username, companyname,email,password,address,contact,img) values('$username','$company_name','$email','$password','$address','$contact','$fileDestination')";
                                                $run=mysqli_query($con,$insertion);
                                                if($run)
                                                {
                                                    echo "<script>alert('You are successfully registered!');
                                                              windows.location.href='login.php';
                                                              </script>";

                                                }
                                                else
                                                {
                                                    echo"<script>alert('Connection Failed');
                                                    windows.location.href='registration.php';
                                                    </script>";
                                                }
                                            }
                                        } 
                                        else
                                        {
                                            echo"<script>alert('Database Error!');
                                            windows.location.href='registration.php';
                                            </script>";
                                        }
                                    }
                                    else
                                    {
                                        echo"<script>alert('Password does not match');
                                        windows.location.href='registration.php';
                                        </script>";
                                    }

                                }
                                else
                                {

                                }
                        ?>
        </div>
    </section>

</body>
</html>