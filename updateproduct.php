<?php
include 'configuration.php';
session_start();
?>  
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Online Shopping BD</title>    
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
                        <li><a href="producttable.php">Products</a></li>
                        <li class="active"><a href="upddateproduct.php">update</a></li>
                        <li><a href="producttable.php">Accounts<span class="caret"></span></a>
                        </li>
                        <li><a href="#"><i class="far fa-envelope"></i></a></li>
                </ul>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="main">
            <div>
            	
            	<?php
                $id=$_SESSION['pid'];
                    if ($con->connect_error) {
                        die("Connection failed: " . $con->connect_error);
                    } 
                    $sql = "SELECT * FROM products AS p , catagories AS c WHERE p.product_cat=c.cat_id AND product_id=$id";
                    $display = mysqli_query($con,$sql);
                    
                    while($row= mysqli_fetch_array($display))
                    {
                ?>
                <h1>Product: <?php echo $row['product_title']; ?></h1>
            	<div class="box col-md-12">
                    <div class="col-md-3">
                    	<div class="form-group">
                            <label style="padding-bottom: 10px;">Product Title:</label>
                        </div>
                        <div class="form-group">
                    	    <label style="padding-bottom: 13px;">Product Catagory:</label>
                    	</div>
                    	<div class="form-group">
                    	    <label style="padding-bottom: 13px;">Product Price:</label>
                    	</div>
                    	<div class="form-group">
                        	<label style="padding-bottom: 13px;">Stock:</label>
                        </div>
                    	<div class="form-group">
                    	    <label style="padding-bottom: 13px;">Description:</label>
                    	</div>
                    	
                    </div>
                    <form action="updateproduct.php" method="post" enctype="multipart/form-data">
                    <div class="col-md-6">
                    	<div class="form-group">
                            <input type="text" value="<?php echo $row['product_title']; ?>"  name="product_title" required></input>
                        </div>
                        <div class="form-group">
                    	    <select name="catagory" height="40px" width="100px"required>
                                <option selected>Select category</option>
                                        <option value="1">Men Casual</option>
                                        <option value="2">Men Formal</option>
                                        <option value="3">Men Watch</option>
                                        <option value="4">Men Others</option>
                                        <option value="5">Women Casual</option>
                                        <option value="6">Women Formal</option>
                                        <option value="7">Women Watch</option>
                                        <option value="8">Jewellaries</option>
                                        <option value="9">Women Others</option>
                                        <option value="10">girl</option>
                                        <option value="11">Boy</option>
                                        <option value="12">Kids Accessories</option>
                                        <option value="13">Home decor</option>
                                        <option value="14">Kitchen</option>
                                        <option value="15">Storage</option>
                                        <option value="16">Mobile</option>
                                        <option value="17">Laptop</option>
                                        <option value="18">Camera</option>
                                        <option value="19">Seagrass Busket</option>
                            </select>
                    	</div><br>
                    	<div class="form-group">
                    	    <input type="text" value="<?php echo $row['product_price']; ?>" name="product_price" required ></input>
                    	</div>
                    	<div class="form-group">
                        	<input type="text" value="<?php echo $row['stock']; ?>" name="stock" required ></input>
                        </div>
                    	<div class="form-group">
                    	    <input type="text" value="<?php echo $row['product_desc']; ?>"  name="product_desc" required></input>
                    	</div>
                    	
                    </div>
                    <div class="col-md-2">
                        <div class="photo">
                            <img id="Image"src=" <?php echo $row['product_image']; ?>"height="250px" width="215px">
                        </div>
                        <div>
                            <input id="file" type="file"name="logo" style="display:none;height='250px' ;" onchange="readURL(this)" accept="photos/*"/><br><br><br>
                            <button type="submit" name="submit" class="btn btn-primary btn-block mx-auto"/>UPDATE</button>
                        </div>
                    </div>
                </form>
            	
            	<?php   
                    

                    if (isset($_POST['submit']))
                        {                           
                        
                            $title=$_POST["product_title"];
                            $cat=$_POST["catagory"];
                                $price=$_POST['product_price'];  
                                $stock=$_POST['stock'];
                                $desc=$_POST['product_desc'];

                                $update = "UPDATE products SET product_title='$title',product_cat='$cat' ,product_price='$price',stock='$stock',product_desc='$desc' WHERE product_id ='$id'";
                                $run=mysqli_query($con,$update);
                                if($run){
                                     echo "<script>alert('profile is updated');
                                            windows.location.href='http://localhost/productrecommendation/producttable.php';
                                    </script>";
                                   unset($_SESSION["pid"]);
                                }
                            
                            exit();
                            }
                            }
                        ?> 
                    </div>
            </div>
            <script>
        function readURL(input)
        {
            if (input.files && input.files[0]) 
            {
                var reader= new FileReader();
                reader.onload =function(e)
                {
                    $('#Image')
                    .attr('src',e.target.result)
                    .width(215)
                    .height(250);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
         </div>
    </section>
    

</body>
</html>