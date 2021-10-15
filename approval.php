<?php
    session_start();
    include 'configuration.php';
    include("functions.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>SR Export Import</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/userprofile.css">
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
                        <li ><a href="http://localhost/productrecommendation/producttable.php">Products</a></li>
                        <li class="active"><a href="requestproduct.php">Request Product</a></li>
                        <li><a href="http://localhost/productrecommendation/productadd.php">Add Product</a></li>
                        <li><a href="#">Accounts<span class="caret"></span></a>
                            <ul>                
                                <li><a href="http://localhost/productrecommendation/details.php">Buyer</a></li>
                                <li><a href="http://localhost/productrecommendation/details2.php">Supplier</a></li>     
                            </ul>
                        </li>
                        <li>
                        <a class="nav-link" href="http://localhost/productrecommendation/mails.php" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-envelope"></i> 
                            <?php
                            $query = "SELECT * from mails where status = 'unread' AND tyype = 'mail' order by maildate DESC";
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
        </div>
    </header>
    <section>
        <div class="main">
            <div>
                <h3>Product Details</h3>
            	<?php
                    $aid=$_SESSION['aid'];
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM importproduct as p,supplier as s,catagories as c where  p.sid=s.s_id and p.icat=c.cat_id and  p.ipid=$aid";
                    $display = mysqli_query($con,$sql);
                    while($row= mysqli_fetch_array($display))
                    {
                        $s_id= $row["s_id"];
                ?>
            	
                <div class="box col-md-12">
                    <div class="col-md-3">
                        <div class="photo">
                            <img id="Image"src=" <?php echo $row['iimage']; ?>"height="350px" width="315px">
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
                            <label>Quantity:</label>
                        </div>
                        
                    </div>
                    <form action="approval.php" method="post" enctype="multipart/form-data">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label><?php echo $row["ititle"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["cat_title"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["iprice"]; 
                                    $_SESSION['price2']= $row["iprice"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["idetails"]; ?></label>
                        </div><br>
                        <div class="form-group">
                            <input type="number" name="order" placeholder="upto <?php echo $row["istock"]; ?>"/>
                        </div>

                    </div>
                    <div class="col-md-2"> 
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                        <button type="submit" name="submit" class="btn btn-primary btn-block text-uppercase">Order</button> 
                        <button type="submit" name="submit2" class="btn btn-primary btn-block text-uppercase">delete</button>    
                               
                    </div>
                    </form>
                </div><br>
                <div class="col-md-12"><h3>Supplier Details</h3></div>
                <div class="box col-md-12">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Name:</label>
                        </div>
                        <div class="form-group">
                            <label>Company name:</label>
                        </div>
                        <div class="form-group">
                            <label>Business Email:</label>
                        </div>
                        <div class="form-group">
                            <label>Address:</label>
                        </div>
                        <div class="form-group">
                            <label>Contact Number:</label>
                        </div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><?php echo $row["s_name"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["s_company_name"]; 
                            $_SESSION['cn']= $row["s_company_name"];?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["s_email"]; 
                            $_SESSION['se']= $row["s_email"];?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo $row["s_address"]; ?></label>
                        </div>
                        <div class="form-group">
                            <label><?php echo "+880".$row["s_contact"]; ?></label>
                        </div>
                        
                    </div>
                </div><br>
            	<?php  
                    }
                        if (isset($_POST['submit']))
                        {
                            $pid=$_SESSION['aid'];
                            $sid=$s_id;
                            $quantity=$_POST['order'];
                            $total=$_SESSION['price2']*$_POST['order'];  
                            $se = $_SESSION["se"];
                            $cn = $_SESSION["cn"];
                            $insertion="insert into importorder (productid,supplierid,quantity,total) values('$pid','$sid','$quantity','$total')";
                            $run=mysqli_query($con,$insertion);
                            $query ="INSERT INTO mails (msg,holdername, holderemail,subject, status,tyype, maildate) VALUES ('SR Export Import company approved and ordered the product', '$cn','$se', 'Order comfirmation','unread', 'not', CURRENT_TIMESTAMP)";
                            $run2=mysqli_query($con,$query);
                            if($run)
                            {                                           
                                echo "<script>alert('Order done!');
                                          windows.location.href='http://localhost/productrecommendation/requestproduct.php';
                                          </script>";

                            }
                        }
                        if (isset($_POST['submit2']))
                        {
                            $pid=$_SESSION['aid'];
                            $se = $_SESSION["se"];
                            $cn = $_SESSION["cn"];
                            $delete="DELETE FROM importproduct WHERE ipid ='$pid'";
                            $run=mysqli_query($con,$delete);
                            $query2 ="INSERT INTO mails (msg,holdername,holderemail,subject,status,tyype, maildate) VALUES ('SR Export Import company rejected the product', '$cn','$se', 'Order rejection','unread', 'not', CURRENT_TIMESTAMP)";
                            $run3=mysqli_query($con,$query2);
                            if($run)
                            {                                           
                                echo "<script>alert('Delete done!');
                                windows.location.href='http://localhost/productrecommendation/requestproduct.php';
                                          </script>";
                            }
                        }
                ?> 
            </div>
         </div>
    </section>

</body>
</html>