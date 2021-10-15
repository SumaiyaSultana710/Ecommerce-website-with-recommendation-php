<?php
    include 'configuration.php';
    include("functions.php");
    include 'recommend.php';
    $products = mysqli_query($con,"SELECT * FROM rate");
    $matrix=array();
    while ($product=mysqli_fetch_array($products)) {
        $matrix[$product['uname']][$product['pname']]=$product['prate'];
    }
    echo "<pre>";
print_r($matrix);
    echo "</pre>";
    var_dump(getRecommendation($matrix,"topu"));
?>