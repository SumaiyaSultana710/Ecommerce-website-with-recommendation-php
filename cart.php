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
    <header >
        <div class="main">
            <div class="top-nav-bar">
                
                    <img src="img/pppp.png" class="logo">
                
                <div class="menu-bar">
                <ul>
                    
                    <li><a href="http://localhost/productrecommendation/profile.php">Home</a></li>
                    <li><a href="product.php">Products</a></li>
                    <li><a href="#"><?php echo "Hi,".$_SESSION["username"]; ?></a>
                        <ul>                
                            <li><a href="#">My Profile</a></li>
                            <li><a href="http://localhost/productrecommendation/logout.php">Logout</a></li>                                         
                        </ul>
                    </li>
                    <li class="active"><a href="cart.php"><i class="fab fa-opencart"></i></a></li>
                    <li><a class="nav-link" href="http://localhost/productrecommendation/bnot.php" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-envelope"></i> 
                            <?php
                            $dd = $_SESSION["uid"];
                            $query = "SELECT * from notifications where status = 'unread' and buyer='$dd' order by `Date` DESC";
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
                                <th class="column1">order no.</th>
                                <th class="column2">Image</th>
                                <th class="column3">Title</th>
                                <th class="column4">Price</th>
                                <th class="column5">Quantity</th>
                                <th class="column6">Total</th>
                                <th class="column7">Remark</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                        $uid=$_SESSION['uid'];
                        $totaltotal=0;
                            if ($con->connect_error) {
                               die("Connection failed: " . $con->connect_error);
                            } 
                            $sql = "SELECT * FROM products AS p , buyerorder AS b WHERE p.product_id=b.pid and b.uid=$uid";
                            $display = mysqli_query($con,$sql);
                            $a=0;
                            while($row= mysqli_fetch_array($display))
                            {
                                $a++;
                        ?>
                            <tr><td><?php echo $a; ?></td>
                                <td> <img src=" <?php echo $row["product_image"]; ?>" height="120px" width="150px"></td>
                                <td> <?php echo $row["product_title"]; ?></td>
                                <td> <?php echo "Tk".$row["product_price"]; ?></td>
                                <td> <?php echo $row["quantity"]; ?></td> 
                                <td> <?php echo "Tk".$row["total"]; 
                                $totaltotal=$totaltotal+$row["total"];?></td>
                                <td>
                                    <a href="cart.php?delete_id=<?php echo $row["product_id"]; ?>"> Remove </a></td>
                                <?php 
                                if (isset($_GET["delete_id"])) 
                                {
                                    $id=$_GET["delete_id"];
                                    $sql2 = "DELETE FROM buyerorder WHERE pid ='$id'";
                                    $sql3 = "DELETE FROM buyerorder2 WHERE proid ='$id'";
                                    $run = mysqli_query($con,$sql3);
                                    if(mysqli_query($con,$sql2))
                                    {
                                        $a--;
                                        echo "<script>alert('product is deleted!');
                                             window.location.href='http://localhost/productrecommendation/cart.php';
                                               </script>";
                                        exit();
                                    }
                                } 
                            }
                         ?>  
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><b>Total</b></td> 
                                <td> <?php echo "Tk".$totaltotal; 
                                $_SESSION['total']=$totaltotal;?></td>
                                <td><div class="col-md-3">    </div>
                                    <div class="col-md-5">
                                        <H2><a  href="payment.php">Checkout</a></H2>
                                    </div>
                                </td>  
                            </tr>   
                        </tbody>
                    </table>            
            </div>
    </section>
</body>
</html>