<?php
    session_start();
    include 'configuration.php';
    include("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/mail.css">
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
                    <li><a href="http://localhost/productrecommendation/supplyprod.php">Products</a></li>
                    <li><a href="http://localhost/productrecommendation/supplyord.php">order</a></li>
                    <li><a href="http://localhost/productrecommendation/supplyproduct.php">Add Product</a></li>
                    <li><a href="#"><?php echo $_SESSION["sname"]; ?></a>
                        <ul>                
                            <li><a href="http://localhost/productrecommendation/supplierprofile.php">My Profile</a></li>
                            <li><a href="http://localhost/productrecommendation/logout2.php">Logout</a></li>                                         
                        </ul>
                    </li>
                    <li class="active">
                        <a class="nav-link" href="http://localhost/productrecommendation/mails2.php" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-envelope"></i> 
                            <?php
                            $query = "SELECT * from mails where status = 'unread' AND tyype = 'not' order by maildate DESC";
                            if(count(fetchAll($query))>0){
                            ?>
                            <span class="badge badge-light"><?php echo count(fetchAll($query)); ?></span>
                          <?php
                            }
                                ?>
                          </a>
                      </li>
                </ul>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="main">
            <div class="box">
            	<h1>Mail</h1>
            	<?php
                $id = $_GET['show_id'];
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    
                    $query ="UPDATE `mails` SET `status` = 'read' WHERE `mailid` = $id";
                    $run = mysqli_query($con,$query);

                    $sql = "SELECT * from `mails` where `mailid` = '$id'";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                    
                ?>
            	
                <label>Date & time:<?php echo $row["maildate"]; ?></label><br>
                <label>From:</label><?php echo $row["holderemail"]; ?><br>
                <label>Subject:</label><?php echo $row["subject"]; ?><br>
                <label>Message:</label><h4><?php echo $row["msg"]; ?></h4>
            <?php 
        } ?>
            </div>
         </div>
    </section>

</body>
</html>