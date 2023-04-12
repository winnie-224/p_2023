<?php
$con=mysql_connect("localhost","root","");
$db=mysql_select_db("mobilestore");
if(isset($_GET['dd']))
{
$searchid=$_GET['dd'];
}
else
{
$searchid=$_REQUEST['item'];
if($searchid=="")
header('location:index.php');
}
include("tabs.php");
$st="select * from mobileinfo where mobname like '%$searchid%' or mobcompany like '%$searchid%'";
$rst=mysql_query($st);
echo "<table width=100% align=center style='border:1px outset;'>";
$row=mysql_fetch_array($rst);
if($row=="")
echo "<tr><td colspan=2 align=center width=100%><span style='border:1px solid red;' >No Result Found!</span></tr>";
else
{
echo "<tr bgcolor=pink><td style='border:1px solid red;' width=20% align=center><td style='border:1px solid red;' width=20% align=center>Model<td width=20% align=center style='border:1px solid red;'>Manufacturer<td style='border:1px solid red;' width=20% align=center>MRP<td style='border:1px solid red;' width=20% align=center>Price now</tr>";
while($row=mysql_fetch_array($rst))
{
$x=$row[0];
$_SESSION['proid']=$x;
echo "<tr><td align=center><a href=details.php><img src=".$row[6]."></a><td align=center>".$row[1]."<td align=center>".$row[2]."<td align=center>".$row[3]."<td align=center>".$row[4]."</tr>";
}echo "</table>";
}
include('db.inc');
if(isset($_SESSION['uno']))
{
$st2="select * from myinfo where uno=".$_SESSION['uno'];
$rst2=mysql_query($st2);
$row2=mysql_fetch_array($rst2);
$_SESSION['uno']=$row2['uno'];
}
?>