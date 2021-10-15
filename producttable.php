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
                    <li class="active" ><a href="http://localhost/productrecommendation/producttable.php">Products</a></li>
                   
                    <li><a href="http://localhost/productrecommendation/productadd.php">Add Product</a></li>
                    <li><a href="http://localhost/productrecommendation/ordertable.php">Order Details</a></li>
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
                 <h1>Product Details</h1>
            </div>
                    <table>
                        <thead>
                            <tr class="head">
                                <th class="column1">id</th>
                                <th class="column2">Image</th>
                                <th class="column3">Title</th>
                                <th class="column4">Catagory</th>
                                <th class="column5">Price</th>
                                <th class="column6">Stock</th>
                                <th class="column7">Description</th>
                                <th class="column7">Edit/Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if ($con->connect_error) {
                                   die("Connection failed: " . $con->connect_error);
                                } 
                                $sql = "SELECT * FROM products AS p , catagories AS c WHERE p.product_cat=c.cat_id order by c.cat_id";
                                $display = mysqli_query($con,$sql);
                                while($row= mysqli_fetch_array($display))
                                {
                                    
                                    ?>
                                        <tr><td> <?php echo $row["product_id"];
                                         $id=$row["product_id"];?></td>
                                            <td> <img src=" <?php echo $row["product_image"]; ?>" height="120px" width="150px"></td>
                                                    <td> <?php echo $row["product_title"]; ?></td>
                                                    <td> <?php echo $row["cat_title"]; ?></td>
                                                    <td> <?php echo $row["product_price"]; ?></td> 
                                                    <td> <?php echo $row["stock"]; ?></td>
                                                    <td> <?php echo $row["product_desc"]; ?></td>
                                                    <td><a href="producttable.php?edit_id=<?php echo $row["product_id"]; ?>" >Edit </a>/
                                                        <a href="producttable.php?delete_id=<?php echo $row["product_id"]; ?>" >Delete </a></td>
                                                    <?php 
                                                        if (isset($_GET["edit_id"])) 
                                                        {
                                                            $_SESSION["pid"]=$_GET["edit_id"];
                                                           
                                                                echo "<script>
                                                                     window.location.href='http://localhost/productrecommendation/updateproduct.php';
                                                                       </script>";
                                                        }
                                                        if (isset($_GET["delete_id"])) 
                                                        {
                                                            $id=$_GET["delete_id"];
                                                            $sql2 = "DELETE FROM products WHERE product_id ='$id'";
                                                            if(mysqli_query($con,$sql2))
                                                            {
                                                                echo "<script>alert('product is deleted!');
                                                                     window.location.href='http://localhost/productrecommendation/producttable.php';
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