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
    <header class="main-header" id="header">
        <div class="main">
        <div class="load">
        </div>

            <div class="top-nav-bar">
                <img src="img/pppp.png" class="logo">
                    
                <div class="menu-bar">
                <ul>
                    <li><a href="http://localhost/productrecommendation/producttable.php">Products</a></li>
                   
                    <li><a href="http://localhost/productrecommendation/productadd.php">Add Product</a></li>
                    <li><a href="http://localhost/productrecommendation/ordertable.php">Order Details</a></li>
                    <li><a href="producttable.php">Accounts<span class="caret"></span></a>
                        <ul>                
                            <li><a href="http://localhost/productrecommendation/details.php">Buyer</a></li>
                                                               
                        </ul>
                    </li>
                    <li class="active" >
                        <a class="nav-link" href="http://localhost/productrecommendation/mails.php" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-envelope"></i> 
                            <?php
                            $query = "SELECT * from `mails` where `status` = 'unread' AND tyype = 'mail' order by `maildate` DESC";
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
            <div>
                 <h1>Messages</h1>
            </div>
                    <table>
                        <thead>
                            <tr class="head">
                                <th class="column1">Id</th>
                                <th class="column3">Mails</th>
                                <th class="column7"></th>
                                <th class="column5"></th>
                                <th class="column2">Date</th>
                                <th class="column2"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if ($con->connect_error) {
                                   die("Connection failed: " . $con->connect_error);
                                } 
                                $sql = "SELECT * from `mails` where `status` = 'unread' AND `tyype` = 'mail' order by `maildate` DESC";
                                $display = mysqli_query($con,$sql);
                                while($row= mysqli_fetch_array($display))
                                {
                                    
                                    ?>
                                        <tr><td><b> <?php echo $row["mailid"];?></b></td> 
                                            <td><b> Email: <?php echo $row["holderemail"]; ?></b></td> 
                                            <td><b><br><br> Subject: <?php echo $row["subject"]; ?><br>
                                                <?php echo $row["holdername"];?> <?php echo " mailed ." ?></b></td> 
                                            <td></td> 
                                            <td><b> <?php echo $row["maildate"]; ?></b> </td>
                                            <td><a href="showmail.php?show_id=<?php echo $row["mailid"]; ?>" >Show</a>/
                                                        <a href="mails.php?delete_id=<?php echo $row["mailid"]; ?>" >Delete </a></td>
                                                    <?php 
                                                        if (isset($_GET["delete_id"])) 
                                                        {
                                                            $id=$_GET["delete_id"];
                                                            $sql4 = "DELETE FROM mails WHERE mailid ='$id'";
                                                            if(mysqli_query($con,$sql4))
                                                            {
                                                                echo "<script>alert('mail is deleted!');
                                                                     window.location.href='http://localhost/productrecommendation/mails.php';
                                                                       </script>";
                                                                exit();
                                                            }
                                                        } 
                                                    ?>       
                                        </tr>
                                <?php   
                                }
                                $sql2 = "SELECT * FROM mails where `status` = 'read' AND `tyype` = 'mail' order by `maildate` DESC";
                                $display2 = mysqli_query($con,$sql2);
                                while($row2= mysqli_fetch_array($display2))
                                {
                                    
                                    ?>
                                        <tr><td> <?php echo $row2["mailid"];
                                        $id=$row2["mailid"];?></td> 
                                            <td> Email: <?php echo $row2["holderemail"]; ?></td> 
                                            <td><br><br> Subject: <?php echo $row2["subject"]; ?><br>
                                                <?php echo $row2["holdername"];?> <?php echo " mailed ." ?></td> 
                                            <td></td> 
                                            <td><?php echo $row2["maildate"]; ?> </td> 
                                            <td><a href="showmail.php?show_id=<?php echo $row2["mailid"]; ?>" >Show</a>/
                                                        <a href="mails.php?delete_id=<?php echo $row2["mailid"]; ?>" >Delete </a></td>
                                                    <?php 
                                                    
                                                        if (isset($_GET["delete_id"])) 
                                                        {
                                                            $id=$_GET["delete_id"];
                                                            $sql3 = "DELETE FROM mails WHERE mailid ='$id'";
                                                            if(mysqli_query($con,$sql3))
                                                            {
                                                                echo "<script>alert('mail is deleted!');
                                                                     window.location.href='http://localhost/productrecommendation/mails.php';
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