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
    <link rel="stylesheet" type="text/css" href="css/userprofile.css">
    <link rel="stylesheet" type="text/css" href="css/product.css">
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
                        <li class="active"><a href="profile.php">Home</a></li>
                        <li><a href="http://localhost/productrecommendation/product.php">Products</a></li>
                        <li><a href="showproduct.php"><?php echo "Hi,".$_SESSION["username"]; ?></a>
                            <ul>                
                                <li><a href="userprofile.php">My Profile</a></li>
                                <li><a href="http://localhost/productrecommendation/logout.php">Logout</a></li>                                         
                            </ul>
                        </li>
                        <li><a href="cart.php"><i class="fab fa-opencart"></i></a></li>
                        <li>
                        <a class="nav-link" href="http://localhost/productrecommendation/bnot.php" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-envelope"></i> 
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
                    <?php 
                if (isset($_POST['search'])) 
                        {
                            $search=$_POST['search'];
                            echo "<script>window.location.href='http://localhost/productrecommendation/search.php?search=$search';
                                </script>";
                        }
                 ?>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="main">
            <div>
                <h1>Product</h1>
                <?php
                    $id=$_SESSION['s'];
                    $uid=$_SESSION['uid'];
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products as p,catagories as c where  p.product_cat=c.cat_id and p.product_id=$id";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                ?>
                <div class="box col-md-12">
                    <div class="col-md-3">
                        <div class="photo">
                            <img id="Image"src=" <?php echo $row['product_image']; ?>"height="350px" width="315px">
                        </div>
                        
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Product:</label>
                        </div>
                        <div class="form-group">
                            <label>Product catagory:</label>
                        </div>
                        <div class="form-group">
                            <label>Product price:</label>
                        </div>
                        <div class="form-group">
                            <label>Description:</label>
                        </div>
                        <div class="form-group">
                            <label>Rate:</label>
                        </div><br><br>
                        <div class="form-group">
                            <label>Quantity:</label>
                        </div>
                        
                    </div>
                    <form action="showproduct.php" method="post" enctype="multipart/form-data">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label><?php echo $row["product_title"];
                            $_SESSION['protitle']=$row["product_title"]; 
                            $_SESSION['cat']=$row["product_cat"];?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["cat_title"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["product_price"]; 
                                    $_SESSION['price']= $row["product_price"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["product_desc"]; ?></label>
                        </div>
                        <div class="form-group">
                            <input type="number" name="rate" />
                        </div><br>
                        <div class="form-group">
                            <input type="number" name="order" required />
                        </div>
                        
                        <button type="submit" name="submit" class="btn btn-primary btn-block text-uppercase">Order</button>
                        
                    </div>
                    </form>
                </div>
                <?php  
                    
                    $s1=time();
                    $s2=date("d-m-y",$s1);
                        if (isset($_POST['submit']))
                            {
                                $inc=1;
                                $rate=$_POST['rate'];
                                $pid=$_SESSION['s'];
                                $uid=$_SESSION['uid'];
                                $title=$_SESSION['protitle'];
                                $uname=$_SESSION["username"];
                                $quantity=$_POST['order'];
                                $total=$_SESSION['price']*$_POST['order']; 
                                print_r($total);
                                $insertion="insert into buyerorder (pid, uid,quantity,total) values('$pid','$uid','$quantity','$total')";
                                $insertion3="insert into buyerorder2 (proid, userid,qnty,ttl,date) values('$pid','$uid','$quantity','$total', CURRENT_TIMESTAMP)";
                                $insertion2="UPDATE products SET count=count+'$inc'where product_id=$pid";
                                $run=mysqli_query($con,$insertion);
                                $run3=mysqli_query($con,$insertion3);
                                $run2=mysqli_query($con,$insertion2);
                                if($run)
                                {                                           
                                     echo "<script>alert('Order done!');
                                            windows.location.href='product.php';
                                        </script>";

                                }
                                if($rate<=5)
                                {                                           
                                     $rating="insert into rate (uname, pname,prate) values('$uname','$title','$rate')";
                                     $run3=mysqli_query($con,$rating);
                                     echo "<script>
                                            windows.location.href='product.php';
                                        </script>";
                                }
                                else
                                {                                           
                                     echo "<script>alert('Rate within 5!');
                                            windows.location.href='showproduct.php';
                                        </script>";
                                    }

                            }
                        }
                ?> 
            </div>
         </div>
    </section>
    <section class="section-padding" id="catagory-2">
        <div class="container">
            <h2><a href="#">Recommended</a></h2>
            <div class="row">
                  
                <?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    }
                    $cat=$_SESSION["cat"]; 
                    $sql = "SELECT * FROM products  where product_cat=$cat AND product_id NOT IN ('$id') limit 4";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                ?>
                <div class="col-sm-3">
                    <div class="product-top">
                        <a href="product.php?show=<?php echo $row["product_id"]; ?>" > <img src="<?php echo $row["product_image"]; ?>" class="imgheight" ></a>
                    </div>
                    <div class="product-bottom text-center">
                        <h3><?php echo $row["product_title"]; ?></h3>
                        <h5>Price <?php echo $row["product_price"]; ?>TK</h5>   
                    </div>
                </div>
                <?php   
                    if (isset($_GET["show"])) 
                    {
                        $_SESSION["s"]=$_GET["show"];
                       
                            echo "<script>
                                 window.location.href='showproduct.php';
                                   </script>";
                    }
                }
                ?>
                    </div>
                </div>


    </section>
</body>
</html>