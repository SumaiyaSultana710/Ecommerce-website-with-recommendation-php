<?php
    session_start();
    include 'configuration.php';
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
                    <li><a href="http://localhost/productrecommendation/producttable.php">Products</a></li>
                    <li><a href="requestproduct.php">Request Product</a></li>
                    <li><a href="http://localhost/productrecommendation/productadd.php">Add Product</a></li>
                    <li><a href="producttable.php">Accounts<span class="caret"></span></a>
                        <ul>                
                            <li><a href="http://localhost/productrecommendation/details.php">Buyer</a></li>
                            <li><a href="http://localhost/productrecommendation/details2.php">Supplier</a></li>                                            
                        </ul>
                    </li>
                    <li class="active"><a href="mails.php"><i class="far fa-envelope"></i></a></li>
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