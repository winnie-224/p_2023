<?php
include('db.inc');
$uname=$_REQUEST['uname'];
$fname=$_REQUEST['fname'];
$lname=$_REQUEST['lname'];
$gender=$_REQUEST['gender'];
$eid=$_REQUEST['id'];
$pwd=$_REQUEST['pwd'];
$country=$_REQUEST['country'];
$d=$_REQUEST['date'];
$m=$_REQUEST['month'];
$y=$_REQUEST['year'];
$mno=$_REQUEST['mno'];
if($mno==="")
$mno="Not Entered";
$dob=$y."-".$m."-".$d;
$avatar=$_REQUEST['avatar'];

$st="select max(id) from userdb";
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
$id= $row[0]+1;
$st="insert into userdb(id,uname,fname,lname,email,password,dob,gender,contact,country,avatar) values
($id,'$uname','$fname','$lname','$eid','$pwd','$dob','$gender','$mno','$country','$avatar')";
mysql_query($st);
session_start();
$_SESSION['uname']=$uname;
$_SESSION['id']=$id;
header("refresh:1;url=index.php?registered");
?>