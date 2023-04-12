<?php
include('tabs.php');
include('checklogin.php');
include('db.inc');
$fname=$_REQUEST['fname'];
$lname=$_REQUEST['lname'];
$email=$_REQUEST['email'];
$pwd=$_REQUEST['pwd'];
$add=$_REQUEST['add'];
$pin=$_REQUEST['pin'];
$country=$_REQUEST['country'];
$dob=$_REQUEST['dob'];
$mno=$_REQUEST['mno'];
$st3="update myinfo set fname='$fname', lname='$lname',email='$email',password='$pwd',address='$add',pincode=$pin,country=$country,dob='$dob',mobile=$mno where uno=".$_SESSION['uno'];
mysql_query($st3);
$_SESSION['name']=$fname." ".$lname;
echo "Your changes are being saved...";
header('refresh:2;url=profile.php?update=true');

?>