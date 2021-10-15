<?php
    session_start();
    include 'configuration.php';
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
                        <li class="active"><a href="userprofile.php">My profile</a></li>
                        <li><a href="logout.php">Logout</a></li>
                        <li><a href="cart.php"><i class="fab fa-opencart"></i></a></li>
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
                            <label>Name:</label>
                        </div>
                        
                    	<div class="form-group">
                    	    <label>Email:</label>
                    	</div>
                    	<div class="form-group">
                    	    <label>Contact Number:</label>
                    	</div>
                    	
                    </div>
                    <div class="col-md-6">
                    	<div class="form-group">
                            <label><?php echo $row["username"]; ?></label>
                        </div>
                    
                    	<div class="form-group">
                    	    <label><?php echo $row["email"]; ?></label>
                    	</div>
                    	
                    	<div class="form-group">
                    	    <label><?php echo "+880".$row["contact"]; ?></label>
                    	</div>
                    	
                    </div>
                    <div class="col-md-6">
                        <br><br><br><br><br>
                    <button  class="button button-block"/><a href="updateprofile.php">UPDATE PROFILE</button>
                    </div>
            	</div>
            	<?php   
                    }
                ?> 
            </div>
         </div>
    </section>

</body>
</html>