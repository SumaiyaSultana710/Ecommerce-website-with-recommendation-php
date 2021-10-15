<?php
    
    include 'configuration.php';
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/userprofile.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <header>
        <div class="main">
            <div class="top-nav-bar">
            
                    <img src="img/pppp.png" class="logo">
                
                <div class="menu-bar">
                    <ul>
                        <li><a href="profile.php">Home</a></li>
                        <li class="active"><a href="updateprofile.php">My profile</a></li>
                        <li><a href="logout.php">Logout</a></li>
                        <li><a href="cart.php"><i class="fab fa-opencart"></i></a></li></li>
                </ul>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="main">
            <div>
            	<h1>MY PROFILE</h1>
            	<?php
            	    $id=$_SESSION['uid'];
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM buyer where id=$id";
                    $display = mysqli_query($con,$sql);
                    
                    while($row= mysqli_fetch_array($display))
                    {
                       
                ?>
            	<div class="box col-md-12">
                    <div class="col-md-3">
                    	<div class="form-group">
                            <label style="padding-bottom: 10px;">Name:</label>
                        </div>
                    	<div class="form-group">
                    	    <label style="padding-bottom: 13px;">password:</label>
                    	</div>
                    	
                    	<div class="form-group">
                    	    <label style="padding-bottom: 13px;">Contact Number:</label>
                    	</div>
                    	
                    </div>
                    <form action="updateprofile.php" method="post" enctype="multipart/form-data">
                    <div class="col-md-6">
                    	<div class="form-group">
                            <input type="text" value="<?php echo $row['username']; ?>" name="username" required></input>
                        </div>
                    	<div class="form-group">
                    	    <input type="password" value="<?php echo $row['password']; ?>" name="password" required></input>
                    	</div>
                    	
                    	<div class="form-group">
                    	    <input type="text" value="<?php echo $row['contact']; ?>" name="contact" required></input>
                    	</div>
                    	
                    </div>
                    <div class="col-md-2">
                        
                        <div>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                            <button type="submit" name="update" class="btn btn-primary btn-block mx-auto"/>UPDATE</button>
                        </div>
                    </div>
                </form>
            	
            	<?php   
                    }
                    if (isset($_POST['update']))
                        {
                            $username=$_POST["username"];
                                $companyname=$_POST['companyname'];
                                $password=$_POST['password'];  
                                $address=$_POST['address'];
                                $contact=$_POST['contact'];

                                $update = "UPDATE buyer SET username='$username' ,password='$password',contact='$contact' WHERE id = '$id'";
                                $run=mysqli_query($con,$update);
                                if($run){
                                    echo "<script>alert('profile is updated');
                                            windows.location.href='http://localhost/web/userprofile.php';
                                    </script>";
                                }
                            }
                                exit();
                        ?> 
                    </div>
            </div>
            
         </div>
    </section>
    

</body>
</html>