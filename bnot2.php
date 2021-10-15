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
                    <li><a href="profile.php">Home</a></li>
                    <li><a href="http://localhost/productrecommendation/product.php">Products</a></li>
                    <li><a href="#"><?php echo "Hi,".$_SESSION["username"]; ?></a>
                        <ul>                
                            <li><a href="http://localhost/productrecommendation/userprofile.php">My Profile</a></li>
                            <li><a href="http://localhost/productrecommendation/logout.php">Logout</a></li>                                         
                        </ul>
                    </li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="cart.php"><i class="fab fa-opencart"></i></a></li>
                    <li class="active"><a href="bnot.php"><i class="far fa-envelope"></i></a></li>
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
                $buyer = $_SESSION["uid"];
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    
                    $query ="UPDATE notifications SET status = 'read' WHERE nid = '$id'";
                    $run = mysqli_query($con,$query);

                    $sql = "SELECT * from notifications where nid= $id";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                ?>
                <label>Date & time:<?php echo $row["Date"]; ?></label><br>
                <label>From:<?php echo "srexportimport@gmail.com"; ?></label><br>
                <label>Subject:</label><h4><?php echo "Order Confirmation"; ?></h4><br>
                <label>Message:</label><h4><?php echo "We Confirm your order which are"?><br><br>
                    <?php
                    echo" Total amount $"; echo $row["amount"];
}
                    $sql2 = "SELECT * from buyerorder2 AS b, products AS p ,notifications AS n where b.proid=p.product_id and n.buyer=b.userid and n.nid= $id order by b.proid";
                    $display2 = mysqli_query($con,$sql2);
                    while($row2= mysqli_fetch_array($display2))
                    {
                    
                         echo $row2["product_title"];?><?php echo" ,price ";echo $row2["product_price"];echo"$   ,amount ";echo $row2["qnty"]; echo"$  "; ?><br>
            <?php
           }
                ?><br></h4>
            </div>
         </div>
    </section>

</body>
</html>