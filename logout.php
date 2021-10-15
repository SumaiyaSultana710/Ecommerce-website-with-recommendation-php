<?php

session_start();

unset($_SESSION["uid"]);
unset($_SESSION["pid"]);

unset($_SESSION["username"]);

header("location:index.php");

?>