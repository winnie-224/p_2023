<?php
session_start();
$id=$_REQUEST['name'];
$pwd=$_REQUEST['pwd'];

if($id=="admin" && $pwd=="admin")
{
$_SESSION['uno']=0;
$_SESSION['name']="admin";
usercookie();
header('Location:adminpanel.php');
}
else
{
$con=mysql_connect("localhost","root","");
$db=mysql_select_db("userinfo");
$st="select * from myinfo where email='$id' and password='$pwd'";
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);

if(isset($_GET['index']))
{
if($row==0)
{
header('Location:index.php?status=invalid');
}
else
{
$x=$row[0];
$_SESSION['uno']=$x;
$_SESSION['name']=$row[1]." ".$row[2];
usercookie();
header('Location:account.php?user=00'.$x);
}
}
else
{
if($row==0)
{
header('Location:signinuser.php?status=invalid');
}
else
{
$x=$row[0];
$_SESSION['uno']=$x;
$_SESSION['name']=$row[1]." ".$row[2];
usercookie();
header('Location:account.php?user=00'.$x);
}}}

function usercookie()
{
setcookie("userid",$id,time()+3600);
setcookie("userpassword",$pwd,time()+3600);
}
?>