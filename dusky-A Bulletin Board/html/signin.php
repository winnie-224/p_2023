<?php
session_start();
$uname=$_REQUEST['name'];
$pwd=$_REQUEST['password'];

if($uname=="admin" && $pwd=="admin")
{
$_SESSION['id']=0;
$_SESSION['uname']="admin";
//usercookie();
header('Location:adminpanel.php');
}
else
{
include('db.inc');
$st="select * from userdb where uname='$uname' and password='$pwd'";
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
if($row==0)
{
header('Location:index.php?status=invalid');
}
else
{
$_SESSION['id']=$row[0];
$_SESSION['uname']=$uname;
//usercookie();
header('Location:index.php?user='.$row[0]);
}
}
/*function usercookie()
{
setcookie("userid",$_SESSION['uname'],time()+3600);
setcookie("userpassword",$pwd,time()+3600);
}*/
?>