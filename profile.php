<?php
session_start();
    include("functions.php");
    include 'configuration.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script src="js/jquery.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    
</head>
<body>
    <header class="main-header" id="header">
        <div class="main">
        <div class="load">
        </div>

            <div class="top-nav-bar">
                <img src="img/pppp.png" class="logo">
                    
                <div class="menu-bar">
                <ul>

                    <li class="active"><a href="#header">Home</a></li>
                    <!---<li><a href="#catagory">Catagories</a></li> -->
                    <li><a href="http://localhost/productrecommendation/product.php">Products</a></li>
                    <!---<li><a href="#gallery">Gallery</a></li> --->
                    <li><a href="#"><?php echo "Hi,".$_SESSION["username"]; ?></a>
                        <ul>                
                            <li><a href="userprofile.php">My Profile</a></li>
                            <li><a href="http://localhost/productrecommendation/logout.php">Logout</a></li>                                         
                        </ul>
                    </li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
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
                    <li><form class="navbar-form  navbar-left"action="profile.php" method="post">
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
            <div class="col">
                <h2 class="sub-title">Online Shopping BD</h2>
                <h4 class="top-title">Always The Right Choice</h4> 
            </div>
        </div>
    </header>


    <section id="catagory" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="section-title">
                        <h2 class="head-title">Category</h2>
                        <hr class="line">
                        <p>These Catagories are available for export</p>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="col-md-6">
                        <div class="icon">
                            <i class="fas fa-laptop"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl"><a href="product.php#catagory-1">Consumer Electronics</a></h3>
                            <p class="txt-para">Mobile,Camera, Laptop related products</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="icon">
                            <i class="fab fa-pied-piper-hat"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl"><a href="product.php#catagory-2">Apparel</a></h3>
                            <p class="txt-para">Clothings for Men,Women and Kids</p>
                        </div>
                    </div>
                    <div class="col-md-6 ">
                        <div class="icon">
                            <i class="fa fa-paint-brush"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl"><a href="product.php#catagory-4">Home & Kitchen</a></h3>
                            <p class="txt-para">Different home decor products etc.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="icon">
                           <i class="fas fa-shopping-basket"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl"><a href="product.php#catagory-6">Seagrass Busket</a></h3>
                            <p class="txt-para">Buskets made by Seagrass</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-padding" id="gallery">
        <div class="container">
            <div class="row">     
                <div class="section-title">
                    <h2 class="head-title">Gallery</h2>
                    <hr class="line">
                    <p>Some pictures of our products</p>
                </div>                
                <div class="col-md-3 col-sm-4">
                    
                    <div class="gallery-box design">
                        <img src="project/vase.png" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    
                    <div class="gallery-box design">
                        <img src="project/s1.png"class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    
                    <div class="gallery-box design">
                        <img src="project/k1.PNG"class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    
                    <div class="gallery-box design">
                        <img src="project/k4.PNG" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    
                    <div class="gallery-box design">
                        <img src="project/s3.png" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="gallery-box design">
                        <img src="project/pot.png" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="gallery-box design">
                        <img src="project/w2.PNG" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="gallery-box design">
                        <img src="project/w4.PNG" class="img-responsive">
                    </div>
                </div>
                <a href="gallery.html">more</a>
            </div>
        </div>
    </section>

     <section class="section-padding" id="about">
        <div class="container">
            <div class="row">

                <div class="section-title">
                    <h2 class="head-title">About Us</h2>
                    <hr class="line">
                    <p>SR Export Import is a Bangladesh based international trade company.
             Our motto is bringing the best quality to customer. Just once coming to us, you will be at the top of satisfactory.
             We export wordlwide on a profesional way all your orders.
             Our Customer is been treated under the slogan of QUALITY AT ITS BEST.
             We are new open Import export firm in Bangladesh. We can supply products based on customer demand. 
             We belive in longterm relationship with Customer. 
             SR Export Import is registered and legal exporter and importer.We would also like to import the best quality product .
             So,please contact with us for any kind of query.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-padding" id="contact">
        <div class="container">
            <div class="row">

                <div class="section-title">
                    <h2 class="head-title">Contact Us</h2>
                    <hr class="line">
                    <p>We would be delighted to serve you with our services, just use the form below or choose the services you are interested in and we will be in touch with you in few hours..</p>
                </div>
                <div class="col-md-12 col-sm-12">
                    <div class="col-md-4 col-sm-6">
                        <h3 class="cont-title">Email Us</h3>
                        <div class="contact-info">
                            <form action="profile.php" method="post" role="form" class="contactForm">
                                <div class="form-group">
                                    <label>Name: <?php echo $_SESSION["username"]; ?></label>
                                </div>
                                <div class="form-group">
                                    <label>Email: <?php echo $_SESSION["email"]; ?></label>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                </div>
                                <button type="submit" name="submit"class="btn btn-send">Send</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                       <h3 class="cont-title">Visit Us</h3>
                       <div class="location-info">
                            <p class="white"><span aria-hidden="true" class="fa fa-map-marker"></span>cuet</p>
                            <p class="white"><span aria-hidden="true" class="fa fa-phone"></span>Phone: +8801914437824, +8801797563739</p>
                            <p class="white"><span aria-hidden="true" class="fa fa-envelope"></span>Email:<a href="" >srexportimport@gmail.com</a></p>
                        </div>
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