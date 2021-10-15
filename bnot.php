<?php
include 'configuration.php';
include("functions.php");
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/details.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body  class="load">
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
            <div>
                 <h1>Messages</h1>
            </div>
                    <table>
                        <thead>
                            <tr class="head">
                                <th class="column1">Id</th>
                                <th class="column7">Mails</th>
                                <th class="column2">Date</th>
                                <th class="column2"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $b = $_SESSION["uid"];
                                if ($con->connect_error) {
                                   die("Connection failed: " . $con->connect_error);
                                } 
                                $sql = "SELECT * FROM notifications where status = 'unread' AND buyer='$b' order by `Date` DESC";
                                $display = mysqli_query($con,$sql);
                                while($row= mysqli_fetch_array($display))
                                {
                                    
                                    ?>
                                        <tr><td><b> <?php echo $row["nid"];
                                        $id=$row["nid"];?></b></td> 
                                            <td><b> Your Order Confirmed.</b></td> 
                                            <td><b> <?php echo $row["Date"]; ?></b> </td>
                                            <td><a href="bnot2.php?show_id=<?php echo $row["nid"]; ?>" >Show</a>/
                                                        <a href="bnot.php?delete_id=<?php echo $row["nid"]; ?>" >Delete </a></td>
                                                    <?php 
                                                        if (isset($_GET["delete_id"])) 
                                                        {
                                                            $id=$_GET["delete_id"];
                                                            $sql4 = "DELETE FROM notifications WHERE nid ='$id'";
                                                            if(mysqli_query($con,$sql4))
                                                            {
                                                                echo "<script>alert('message is deleted!');
                                                                     window.location.href='http://localhost/productrecommendation/bnot.php';
                                                                       </script>";
                                                                exit();
                                                            }
                                                        } 
                                                    ?>       
                                        </tr>
                                <?php   
                                }
                                $sql2 = "SELECT * FROM notifications where status = 'read'AND buyer='$b' order by `Date` DESC";
                                $display2 = mysqli_query($con,$sql2);
                                while($row2= mysqli_fetch_array($display2))
                                {
                                    
                                    ?>
                                        <tr><td> <?php echo $row2["nid"];
                                        $id=$row2["nid"];?></td> 
                                            <td> Your Order confirmed</td> 
                                            <td><?php echo $row2["Date"]; ?> </td> 
                                            <td><a href="bnot2.php?show_id=<?php echo $row2["nid"]; ?>" >Show</a>/
                                                        <a href="bnot.php?delete_id=<?php echo $row2["nid"]; ?>" >Delete </a></td>
                                                    <?php 
                                                    
                                                        if (isset($_GET["delete_id"])) 
                                                        {
                                                            $id=$_GET["delete_id"];
                                                            $sql3 = "DELETE FROM notifications WHERE nid ='$id'";
                                                            if(mysqli_query($con,$sql3))
                                                            {
                                                                echo "<script>alert('mail is deleted!');
                                                                     window.location.href='http://localhost/productrecommendation/bnot.php';
                                                                       </script>";
                                                                exit();
                                                            }
                                                        } 
                                                    ?>      
                                        </tr>
                                <?php   
                                }
                             ?>

                        </tbody>
                    </table>            
            </div>
    </section>
</body>
</html>