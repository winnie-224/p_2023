<?php
session_start();
include('db.inc');
$uno=$_SESSION['uno'];
$pro=$_SESSION['proid'];
$name=$_SESSION['name'];
$x=0;
$st="select uno from mycart where proid=".$pro." AND status='Pending'";
$rst=mysql_query($st);
while($row=mysql_fetch_array($rst))
{
if($row[0]==$uno)
$x=1;
}
if($x==0)
{
$y=date("Y-m-d");
echo $y;
$st="insert into mycart(uno,name,proid) values($uno,'$name',$pro)";
mysql_query($st);
$st="insert into transaction(proid,uno,purdate) values($pro,$uno,'$y')";
mysql_query($st);
header('Location:account.php');

}
else 
{
echo "<tr><td align=center><b>Item Already Added to the cart!!</tr><a href=buy.php>Click to view cart</a>";
}
?>