<h1>Notifications</h1>

<?php
    
    include("functions.php");

    $id = $_GET['msgid'];

    $query ="UPDATE `mails` SET `status` = 'read' WHERE `mailid` = $id";
    performQuery($query);

    $query = "SELECT * from `mails` where `mailid` = '$id'";
    if(count(fetchAll($query))>0){
        foreach(fetchAll($query) as $i){
            if($i['tyype']=='mail'){
                echo ucfirst($i['holdername'])." mailed. <br/>".$i['maildate'];
            }
        }
    }
    
?><br/>
<a href="index.php">Back</a>