<?php
session_start();
include('checklogin.php');
echo "You are being logged off!";
session_destroy();
header("refresh:2;url=index.php");
echo "Please wait...";
?>