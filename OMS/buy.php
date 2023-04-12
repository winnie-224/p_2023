<?php
include('tabs.php');
include('checklogin.php');
include('db.inc');
$st="select * from mycart where uno=".$_SESSION['uno']." and status='Pending'";
$rst=mysql_query($st);
?>
<fieldset>
<legend>MY CART</legend>
<table style="border:1px outset;" cellpadding=0 cellspacing=15 align=center>
<?php 
while($row=mysql_fetch_array($rst))
{
$x=$row['proid'];
include('db2.inc');
$st2="select * from mobileinfo where proid=".$x;
$rst2=mysql_query($st2);
while($row2=mysql_fetch_array($rst2))
{
echo "<tr><td align=center><img src=".$row2[6]."><br>Model : ".$row2[1]."<br>Manufacturer : ".$row2[2]."<td>MRP : ".$row2[3]."<br><b>Offer Price : ".$row2[4];
echo "<td><form method=post action='confirm.php?dd=".$x."'><button type=submit style='background-color:white;'><img src='images/but1.png'><br>Click if recieved!</button></form>";
}
}
?>
<tr><td colspan=2>Dear customer, please log on  <a href=buy.php>www.inmobi-getmobile.com</a> and kindly enter your userid and product id to proceed your transaction!!!</tr>


</table></fieldset>
<footer>
<br><br>
<marquee onmouseover="this.stop()"
direction="left" onmouseout="this.start()" 
scrollamount="8" style="border:1px solid black;">
<a href="#><img src="images/foot_1.gif"></a>
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
</footer>