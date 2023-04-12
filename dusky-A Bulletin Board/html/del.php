<?php
session_start();
if(isset($_REQUEST['feed']))
$id=$_REQUEST['feed'];
include('db.inc');
$st="update history set Status='delete' where feedid=".$id." and uid=".$_SESSION['id'];
mysql_query($st); 
echo $_SESSION['id'];
header('Location:account.php?history');
?>