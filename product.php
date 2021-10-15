<?php
    include 'configuration.php';
    session_start();
    include("functions.php");
    include 'recommend.php';
    $products = mysqli_query($con,"SELECT * FROM rate");
    $matrix=array();
    while ($product=mysqli_fetch_array($products)) {
        $matrix[$product['uname']][$product['pname']]=$product['prate'];
    }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Online Shopping BD</title>    
	<link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/product.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
	<header >
		<div class="main">
            <div class="top-nav-bar">
                
                    <i class="fa fa-bars" id="menu-btn" onclick="openmenu()"></i>
                    <i class="fa fa-times" id="close-btn" onclick="closemenu()"></i>
                    <img src="img/pppp.png" class="logo">
                
                <?php 
                if (isset($_POST['search'])) 
                        {
                            $search=$_POST['search'];
                            echo "<script>window.location.href='http://localhost/productrecommendation/search.php?search=$search';
                                </script>";
                        }
                 ?>
                <div class="menu-bar">
                <ul>
                	
                    <li><a href="http://localhost/productrecommendation/profile.php">Home</a></li>
                    <li class="active"><a href="product.php">Products</a></li>
                    <li><a href="#">Profile</a>
                        <ul>                
                            <li><a href="userprofile.php">My Profile</a></li>
                            <li><a href="http://localhost/productrecommendation/logout.php">Logout</a></li>                                         
                        </ul>
                    </li>
                    <li><a href="http://localhost/productrecommendation/profile.php#about">About</a></li>
                    <li><a href="http://localhost/productrecommendation/profile.php#contact">Contact</a></li>
                    <li><a href="cart.php"><i class="fab fa-opencart"></i></a></li>
                     <li>
                        <a class="nav-link" href="http://localhost/web/bnot.php" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-envelope"></i> 
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
                      <li><form class="navbar-form  navbar-left"action="product.php" method="post">
                        <div class="form-group">
                         <input type="text" class="form-control" placeholder="Search" id="search" name="search">
                         
                        </div>
                        
                    </form></li>
                </ul>
            </div>
            </div>
        </div>
    </header>

    <section class="main-header" id="header">
    	<div class="main">
        <div class="side-menu" id="side-menu">
            <ul>
                <li><a href="allproducte.php">Consumer Electronics<i class="fa fa-angle-right"></i></a>
                    <ul>
                        <li><a href="allproducte.php#M">Mobile</a></li>
                        <li><a href="allproducte.php#C">Camera</a></li>
                        <li><a href="allproducte.php#L">Laptop</a></li>
                    </ul>
                </li>
                
                <li><a href="allproduct.php">Women<i class="fa fa-angle-right"></i></a>
                    <ul>
                        <li><a href="allproduct.php#WF">Formal</a></li>
                        <li><a href="allproduct.php#WC">Casual</a></li>
                        <li><a href="allproduct.php#WW">Watch</a></li>
                        <li><a href="allproduct.php#WJ">Jewellaries</a></li>
                        <li><a href="allproduct.php#WO">Others</a></li>
                    </ul>
                </li>
                <li><a href="allproductk.php">Kids <i class="fa fa-angle-right"></i></a>
                    <ul>
                        <li><a href="allproductk.php#B">Boy</a></li>
                        <li><a href="allproductk.php#G">Girl</a></li>
                        <li><a href="allproductk.php#A">Accessories</a></li>
                    </ul>
                </li>
                <li><a href="allproducth.php">Home & Kitchen<i class="fa fa-angle-right"></i></a>
                    <ul>
                        <li><a href="allproducth.php#HD">Home decor</a></li>
                        <li><a href="allproducth.php#KD">Kitchen,Dining</a></li>
                        <li><a href="allproducth.php#S">Storage</a></li>
                    </ul>
                </li>
                <li><a href="allproducth.php#SB">Seagrass Busket</a>
                </li>
                <li class="active"><a href="product.php">All Category<i class="fa fa-angle-right"></i></a>
                </li>
        </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="gallery-box">
                     <h1>Popular Products</h1>
                    <div class="col-md-11">
                 <?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products  order by count desc limit 4";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                    
                ?>
                <div class="col-sm-3">
                    <div class="product-top">
                        <a href="product.php?show=<?php echo $row["product_id"];?>" > <img src="<?php echo $row["product_image"]; ?>" class="imgheight" ></a>
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
        </div>
                
        </div>
</section>
<section class="section-padding" id="catagory-2">
    	<div class="container">
    		<h2><a href="allproducte.php">Consumer Electronics</a></h2>
    		<div class="row">
                <?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products  where product_cat=16 or product_cat=17 or product_cat=18 limit 4";
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

    <section class="section-padding" id="catagory-1">
        <div class="container">
            <h2><a href="#">Apparel</a></h2>
            <div class="row">
                <?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products  where product_cat between 1 and 9 limit 4";
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
        </div>
        
    </section>

    <section class="section-padding" id="catagory-2">
    	<div class="container">
    		<h2><a href="#">Home & Kitchen</a></h2>
    		<div class="row">
    			<?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products  where product_cat between 13 and 15 limit 4";
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
    	</div>
    	
    </section>

    <section class="section-padding" id="catagory-1">
    	<div class="container">
    		<h2><a href="#">Seagrass Busket</a></h2>
    		<div class="row">
    			<?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products  where product_cat=19 limit 4";
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

    <section class="section-padding" id="catagory-2">
        <div class="container">
            <h2><a href="#">Recommended</a></h2>
            <div class="row">
                  
                <?php

                    $user=$_SESSION["username"] ;
                    $recom=array();
                    $recom=getRecommendation($matrix,$user);
                    
                    foreach (array_slice($recom, 0, 7) as $product=> $rating) 
                    {
                    
                        $name=$product;
                        $sql = "SELECT * FROM products  where product_title='$product'";
                        $display = mysqli_query($con,$sql);
                        
                        while ($row= mysqli_fetch_array($display))
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
            }

                ?>
                    </div>
                </div>


    </section>


    <footer  id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 footer-copyright">
                    ©SR Export Import- All rights reserved
                </div>
            </div>
        </div>
    </footer>

    <script>
    	function openmenu()
    	{
    		document.getElementById("side-menu").style.display="block";
    		document.getElementById("menu-btn").style.display="none";
    		document.getElementById("close-btn").style.display="block";
    	}
    	function closemenu()
    	{
    		document.getElementById("side-menu").style.display="none";
    		document.getElementById("menu-btn").style.display="block";
    		document.getElementById("close-btn").style.display="none";
    	}
    </script>

</body>
</html>