<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
 <p>
   <?php
include('tabs.php');
?>
</p>
<table align=center><tr><td><table width="660" height="361" border="0" align="center" style="border:1px outset;">
  <tr>
    <th height="36" colspan="3" bgcolor="#EE6363" ><div align="left">Handsfree</div></th>
  </tr>
  <tr><td><?php 
include('db2.inc');
$st="select * from mobileinfo where Category='Handsfree'";
$rst=mysql_query($st);
if($row=mysql_fetch_array($rst)=="")
echo "<tr><td colspan=3 align=center><b>Product Not Available!!!</tr>";

while($row=mysql_fetch_array($rst))
{
$_SESSION['proid']=$row['proid'];
echo "<td><img src=".$row['image']."></td>";
echo "<td width=402><table width=404 height=237 border=1><tr><th width=394 height=44><div align=left>".$row['mobcompany']." Battery, ".$row['mobname']."</div></th>";
echo "<tr><td height=44>Price : ".$row['mrp']."<br><b>Price now: ".$row['ofprice']."</td><tr><td height=42>";
echo "<form method=post action=addcart.php><button type=Submit value='Add to My Cart' name=submit style='background-color:white;'><img src=images/ac.png></button></form></tr>";
 }?></tr>
    </table></td>
  </tr>
</table>
</table>
</tr>
<tr><td width=100% colspan="2"><footer>
<br><br>
<marquee onmouseover="this.stop()"
direction="left" onmouseout="this.start()" 
scrollamount="8" style="border:1px solid black;">
<a href="#>
<img src="images/foot_1.gif"></a>
<img src=images/foot_2.jpg>
<img src=images/foot_3.gif>
<img src=images/foot_4.jpg>
<img src=images/foot_5.gif>
<img src=images/foot_7.jpg>
<img src=images/foot_8.jpg>
<img src=images/foot_9.jpg>
<img src=images/foot_10.jpg>
<img src=images/foot_11.jpg>
<img src=images/foot_12.jpg>
<img src=images/foot_13.jpg>
<img src=images/foot_14.jpg>
<img src=images/foot_15.jpg>
<img src=images/foot_16.jpg>
<img src=images/foot_17.jpg>
<img src=images/foot_18.jpg>
<img src=images/foot_19.jpg>
<img src=images/foot_20.jpg>
<img src=images/foot_21.jpg>
<img src=images/foot_22.jpg>
<img src=images/foot_23.jpg>
<img src=images/foot_24.jpg>


</marquee>
</footer></tr></table>
</body>
</html>
