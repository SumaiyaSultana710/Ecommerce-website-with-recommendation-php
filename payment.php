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
    <link rel="stylesheet" type="text/css" href="css/payment.css">
    <link rel="stylesheet" type="text/css" href="css/reg.css">
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
                    <li><a href="#"><?php echo "Hi,".$_SESSION["username"]; ?></a>
                        <ul>                
                            <li><a href="#">My Profile</a></li>
                            <li><a href="http://localhost/productrecommendation/logout.php">Logout</a></li>
                        </ul>
                    </li>
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
        <div id="wrapper">
            <div class="row">
                <div class="col-xs-5">
                    <div id="cards">
                        <img src="http://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/Visa-icon.png">
                        <img src="http://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/Master-Card-icon.png">
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" for='card'>
                        <input id="card" class="form-check-input" type="checkbox" value=""><?php echo "pay $".$_SESSION["total"]; "with credit card"?>
                        </label>
                    </div>
                </div>
                <div class="col-xs-5">
                    <div id="cards">
                        <img src="http://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/Paypal-icon.png">
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" for='paypal'>
                        <input id="paypal" class="form-check-input" type="checkbox" value=""><?php echo "pay $".$_SESSION["total"]; "with PayPal"?>
                        </label>
                    </div>
                </div>
            </div>
           <form action="payment.php" method="post" enctype="multipart/form-data">
                <div class="col-md-12">
                    <div class="col-md-9">
                        <div class="form-group">
                            <i class="fa fa fa-user"></i>
                            <label for="cardholder">Cardholder's Name</label>
                            <input type="text" id="cardholder"name="cardholder"required>
                        </div>
                        <div class="form-group">
                            <i class="fa fa-credit-card-alt"></i>
                            <label for="cardnumber">Card Number</label>
                            <input type="text" id="cardnumber"name="cardnumber"required>
                        </div>
                        <div class="form-group">
                            <i class="fa fa-calendar"></i>
                            <label for="date">Validity</label>
                            <input type="date" placeholder="MM/YY" id="date"name="date"required>
                        </div>
                        <div class="form-group" >
                            <i class="fa fa-lock"></i>
                            <label for="date">CVV / CVC *</label>
                            <input type="text"name="cvv"required>
                        </div>
                        <div class="form-group" >
                            <div class="col-md-9">
                            <span class="small">* CVV or CVC is the card security code, unique three digits number on the back of your card seperate from its number.</span>
                            </div>
                            <div class="col-md-3">
                            <button type="submit" name="submit" class="button button-block"/>Done</button></div>
                            <?php

                        if (isset($_POST['submit']))
                            {
                                $cardholder=$_POST["cardholder"];
                                $cardnumber=$_POST['cardnumber'];
                                $valid=$_POST['date'];
                                $cvv=$_POST['cvv'];
                                $uid=$_SESSION["uid"];
                                $total=$_SESSION["total"]; 
                                $e = $_SESSION["email"];
                                $n = $_SESSION["username"]; 
                                $s1=time();
                                $s2=date("y-m-d",$s1);
                                $s3=strtotime('+ 7 months');
                                $s4=date("y-m-d",$s3);

                                if ($valid>$s4) 
                                {
                                    $insertion="insert into payment (cardholder, cardnumber,valid,cvv,amount) values('$cardholder','$cardnumber','$valid','$cvv','$total')";
                                    $run=mysqli_query($con,$insertion);
                                    if($run)
                                    {                
                                            echo "<script>alert('Peyment Successful!');
                                            windows.location.href='http://localhost/productrecommendation/profile.php';
                                                  </script>";
                                            
              
                                    }
                                    else
                                    {
                                        echo"<script>alert('Validity less than 1year');
                                        windows.location.href='http://localhost/productrecommendation/profile.php';
                                        </script>";
                                    }
                                    $delete="DELETE FROM buyerorder WHERE uid ='$uid'";
                                    $run2=mysqli_query($con,$delete);
                                    $insertion="INSERT INTO `notifications` (`buyer`, `amount`, `status`, `Date`) VALUES ('$uid', '$total','unread', CURRENT_TIMESTAMP)";
                                    $run3=mysqli_query($con,$insertion);
                                    $query ="INSERT INTO `mails` (`msg`, `holdername`, `holderemail`, `subject`, `status`,`tyype`, `maildate`) VALUES ('$msg', '$n','$e', 'Get order','unread', 'mail', CURRENT_TIMESTAMP)";
                                    $run4=mysqli_query($con,$query);
                                }
                            }
                        ?>
                    </div>
                </form>
            
        </div>
        </div>
    </section>

</body>
</html>