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
                    <li class="active" ><a href="http://localhost/productrecommendation/ordertable.php">Order Details</a></li>
                    <li><a href="producttable.php">Accounts<span class="caret"></span></a>
                        <ul>                
                            <li><a href="http://localhost/productrecommendation/details.php">Buyer</a></li>
                                                               
                        </ul>
                    </li>
                    <li>
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
                 <h1>Order Details</h1>
            </div>
                    <table>
                        <thead>
                            <tr class="head">
                                <th class="column1">order id</th>
                                <th class="column2">Buyer</th>
                                <th class="column3">Products</th>
                                <th class="column4">Quantity</th>
                                <th class="column5">Price</th>
                                <th class="column6">total</th>
                                <th class="column7">status</th>
                                <th class="column7">Order date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if ($con->connect_error) {
                                   die("Connection failed: " . $con->connect_error);
                                } 
                                $sql = "SELECT * FROM products AS p , buyer AS b,buyerorder2 AS o WHERE o.proid=p.product_id AND b.id=o.userid ";
                                $display = mysqli_query($con,$sql);
                                while($row= mysqli_fetch_array($display))
                                {
                                    
                                    ?>
                                        <tr><td> <?php echo $row["order"];?></td>
                                            <td> <?php echo $row["product_title"]; ?></td>
                                            <td> <?php echo $row["qnty"]; ?></td> 
                                            <td> <?php echo $row["product_price"]; ?></td>
                                            <td> <?php echo $row["ttl"]; ?></td>
                                            <td> <?php echo "Processing"; ?></td>
                                            <td> <?php echo $row["date"]; ?></td>                  
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