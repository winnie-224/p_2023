<?php
session_start();

if(isset($_GET['dd']))
{
$x=$_GET['dd'];
}
include('db.inc');
$st="UPDATE `mycart` SET `status` = 'delivered' WHERE `proid` =".$x;
mysql_query($st);
$st="UPDATE `transaction` SET `Status` = 'delivered' WHERE `proid` =".$x." and `uno`=".$_SESSION['uno'];
mysql_query($st);
echo $_SESSION['uno'];
header('location:buy.php');
 
?>

