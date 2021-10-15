<?php
    include 'configuration.php';
    include("functions.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Online Shopping BD</title>    
    <link rel="shortcut icon" type="image/png" href="img/pppp.png">
    <link rel="stylesheet" type="text/css" href="css/productadd.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body class="load">
    <header class="main-header" id="header">
        <div class="main">
        <div class="load">
        </div>

            <div class="top-nav-bar">
                <img src="img/pppp.png" class="logo">
                    
                <div class="menu-bar">
                <ul>
                    <li><a href="http://localhost/productrecommendation/producttable.php">Products</a></li>
                   
                    <li class="active"><a href="http://localhost/productrecommendation/productadd.php">Add Product</a></li>
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
        <div class="container">
            <div class="row">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="tm-block-title d-inline-block">Add Product</h2>
                            </div>
                        </div>
            <div class="row">
                <div class="col-md-12">
                    <form action="productadd.php"method="post" enctype="multipart/form-data">
                        <div class="col-md-12">
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label for="name">Product Name</label>
                                    <input id="name" name="name" type="text"required/>
                                </div>
                                <div class="form-group">
                                    <label for="category">Category</label>
                                    <select name="category" id="category" class="category">
                                        <option selected>Select category</option>
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
                                </div>
                                <div class="form-group">
                                   <label>Price</label>
                                   <input id="price" name="price" type="text" required />
                                </div>
                                <div class="form-group">
                                   <label>Stock</label>
                                   <input id="stock" name="stock" type="text" required />
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="desc" rows="3" type="text"  required></textarea>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="photo">
                                   <img id="Image"src="img/gray.jpg" height="500px" width="450px">
                                </div>
                                <div>
                                    <input id="file" type="file"name="image" style="display:none;" onchange="readURL(this)" accept="img/*"/>
                                    <br><br><br><br><br>
                                    <input type="button" id="files" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE" onclick="document.getElementById('file').click();" />
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" name="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
                            </div>
                        </div>
                    </form>
                    
                    <?php

                        if (isset($_POST['submit']))
                            {
                                $title=$_POST["name"];
                                $count=0;
                                $cat=$_POST['category'];
                                $price=$_POST['price'];
                                $stock=$_POST['stock'];  
                                $desc=$_POST['desc'];
                                $file=$_FILES['image'];

                                print_r($file);
                                print_r($title);
                                print_r($cat);
                                print_r($price);print_r($desc);
                                print_r($stock);


                                $fileName=$_FILES['image']['name'];
                                $fileTmpName=$_FILES['image']['tmp_name'];
                                $fileSize=$_FILES['image']['size'];
                                $fileError=$_FILES['image']['error'];
                                $fileType=$_FILES['image']['type'];

                                $fileExt=explode('.',$fileName );
                                $fileActualExt =strtolower(end($fileExt));
                                $allowed = array('jpg','jpeg','png','PNG');

                                if (in_array($fileActualExt, $allowed)) 
                                {
                                    $fileDestination='photos/'.$fileName;
                                    move_uploaded_file( $fileTmpName, $fileDestination);
                                }
                                else
                                {
                                }
                                                
                                $insertion="insert into products (product_title, product_cat,product_price,stock,product_desc,product_image,count) values('$title','$cat','$price','$stock','$desc','$fileDestination','$count')";
                                $run=mysqli_query($con,$insertion);
                                if($run)
                                {
                                    echo "<script>alert('product successfully added!');
                                                  windows.location.href='productadd.php';
                                            </script>";
                                            $sql = "SELECT * FROM products as p , catagories as c  where p.product_title='$title' and c.cat_id=p.product_cat ";
                                            $display = mysqli_query($con,$sql);
                                            while($row= mysqli_fetch_array($display))
                                            {
                                                if(file_exists('productcat.json'))
                                                {
                                                $currentdata= file_get_contents('productcat.json');
                                                $array=json_decode($currentdata,true);
                                                $extra= array(
                                                'product' => $row["product_id"], 
                                                'category' => $row["cat_title"] 
                                                 );
                                                $array[]=$extra;
                                                $final=json_encode($array);
                                                if (file_put_contents('productcat.json', $final)) {
                                                }
                                                }
                                            }
                                }
                                else
                                {
                                echo"<script>alert('Connection Failed');
                                                    windows.location.href='buyerreg.php';
                                     </script>";
                                }


                               /* if(file_exists('search.json'))
                                {
                                    $currentdata= file_get_contents('search.json');
                                    $array=json_decode($currentdata,true);
                                    $extra= array(
                                        'product' => $_SESSION["uid"], 
                                        'category' => $row["product_id"] 
                                    );
                                    $array[]=$extra;
                                    $final=json_encode($array);
                                    if (file_put_contents('search.json', $final)) {
                                    # code...
                                    }
                                }*/
                            }
                        ?>


                </div>
            </div>
        </div>
        </div>
    </section>
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
                    .width(400)
                    .height(450);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

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