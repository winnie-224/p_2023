<?php
include('tabs.php');
$con=mysql_connect("localhost","root","");
$db=mysql_select_db("mobilestore");
$brand=$_REQUEST['brand'];
$radio=$_REQUEST['radio'];
if($brand=='all')
{

switch($radio)
{
case 1:
$st1="select * from mobileinfo";
$rst=mysql_query($st1);
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
break;

case 2:
$st1="select * from mobileinfo where ofprice between 1000 and 5000";
$rst=mysql_query($st1);
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
break;
case 3:

$st1="select * from mobileinfo where ofprice between 5000 and 10000";
$rst=mysql_query($st1);
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
}break;
case 4:

$st1="select * from mobileinfo where ofprice between 10000 and 15000";
$rst=mysql_query($st1);
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
}break;
case 5:

$st1="select * from mobileinfo where ofprice>=15000";
$rst=mysql_query($st1);
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
}break;
}
}

else
{
switch($radio)
{
case 1:
$st1="select * from mobileinfo where mobcompany like '%$brand%'";
$rst=mysql_query($st1);
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

break;
case 2:
$st1="select * from mobileinfo where mobcompany like '%$brand%' and ofprice between 1000 and 5000";
$rst=mysql_query($st1);
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

break;
case 3:

$st1="select * from mobileinfo where mobcompany like '%$brand%' and ofprice between 5000 and 10000";
$rst=mysql_query($st1);
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
break;
case 4:

$st1="select * from mobileinfo where mobcompany like '%$brand%' and ofprice between 10000 and 15000";
$rst=mysql_query($st1);
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
}break;
case 5:

$st1="select * from mobileinfo where mobcompany like '%$brand%' and ofprice>=15000";
$rst=mysql_query($st1);
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
break;
}

}

?>
