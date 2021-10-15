<?php
    session_start();
    include 'configuration.php';
    include("functions.php");
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
                    <img src="img/pppp.png" class="logo">
                
                <div class="menu-bar">
                <ul>
                    
                    <li><a href="http://localhost/productrecommendation/profile.php">Home</a></li>
                    <li class="active"><a href="product.php">Products</a></li>
                    <li><a href="#">Profile</a>
                        <ul>                
                            <li><a href="#">My Profile</a></li>
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
                      <li><form class="navbar-form  navbar-left"action="search.php" method="post">
                        <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search" id="search" name="search">
                         
                    </div>
                        
                    </form></li>
                     <?php 
                        if (isset($_POST['search'])) 
                        {
                            $search=$_POST['search'];
                            echo "<script>window.location.href='http://localhost/productrecommendation/search.php?search=$search';
                                </script>";
                        }
                 ?>
                </ul>
            </div>
            </div>
        </div>
    </header>

    <section class="section-padding" id="M">
    	<div class="container">
            <div class="gallery-box">
            <div class="col-md-18">
    		    <div class="row">
                    <h2>Result for "<?php $SEARCH=$_GET["search"]; echo $SEARCH ?> "</h2>
                    <?php
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 

                    $sql = "SELECT * FROM products  where product_title LIKE '%$SEARCH' or '$SEARCH%' or '%$SEARCH%'or '$SEARCH'";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                        
                    ?>
                <div class="col-sm-3">
                    <div class="product-top">
                        <a href="product.php?show=<?php echo $row["product_id"]; ?>" > <img src="<?php echo $row["product_image"]; ?>" class="img-responsive" ></a>
                    </div>
                    <div class="product-bottom text-center">
                        <h3><?php echo $row["product_title"]; ?></h3>
                        <h5>Price <?php echo $row["product_price"]; ?>TK</h5>   
                    </div>
                </div>
                <?php 

                    if(file_exists('search.json'))
                        {
                            $currentdata= file_get_contents('search.json');
                            $array=json_decode($currentdata,true);
                            $extra= array(
                                'user' => $_SESSION["uid"], 
                                'product' => $row["product_id"] 
                            );
                        $array[]=$extra;
                        $final=json_encode($array);
                        if (file_put_contents('search.json', $final)) {
                            # code...
                           }
                        }

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

   
    
    <footer  id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 footer-copyright">
                    ©SR Export Import- All rights reserved
                </div>
            </div>
        </div>
    </footer>

</body>
</html>