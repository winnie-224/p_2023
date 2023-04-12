<?php
include('db.inc');
//session_start();
$uname=$_REQUEST['uname'];
$fname=$_REQUEST['fname'];
$lname=$_REQUEST['lname'];
$email=$_REQUEST['email'];
$pwd=$_REQUEST['password'];
$dob=$_REQUEST['dob'];
$contact=$_REQUEST['contact'];
if($contact=="")
$contact="Not Entered";
//echo $pwd,$dob,$contact;
/*$st="select * from userdb where id=".$_SESSION['id'];
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
echo $row[0],$row[3];*/
$st="update userdb set uname= '$uname', fname='$fname',lname='$lname',email='$email',password='$pwd',dob='$dob',contact='$contact' where id=".$_SESSION['id'];
mysql_query($st);
echo $_SESSION['id'];
header('Location:account.php?profile&&update=true');
?>