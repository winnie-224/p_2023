<?php
$con=mysql_connect("localhost","root","");
$db=mysql_select_db("userinfo");
$fname=$_REQUEST['fname'];
$lname=$_REQUEST['lname'];
$gender=$_REQUEST['gender'];
$id=$_REQUEST['id'];
$pwd=$_REQUEST['pwd'];
$que=$_REQUEST['que'];
$ans=$_REQUEST['ans'];
$add=$_REQUEST['add'];
$pin=$_REQUEST['pin'];
$country=$_REQUEST['country'];
$d=$_REQUEST['date'];
$m=$_REQUEST['month'];
$y=$_REQUEST['year'];
$mno=$_REQUEST['mno'];
if($mno==="")
$mno=0000;
$dob=$y."-".$m."-".$d;
if($_FILES['image']['name']=="")
$img="images/imagesm.jpg";
else
$img="images/user/".$_FILES['image']['name'];
move_uploaded_file($_FILES['image']['tmp_name'],$img);
$st1="select max(uno) from myinfo";
$rst=mysql_query($st1);
$row=mysql_fetch_array($rst);
$uno= $row[0]+1;
$st="insert into myinfo(uno,fname,lname,gender,email,password,hQ,hA,address,pincode,country,dob,mobile,image) values
($uno,'$fname','$lname','$gender','$id','$pwd','$que','$ans','$add',$pin,$country,'$dob',$mno,'$img')";
mysql_query($st);
session_start();
$_SESSION['uno']=$uno;
$_SESSION['name']=$fname." ".$lname;
header("refresh:1;url=account.php?register");
?>