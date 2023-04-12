<?php
include('tabs.php');
include('checklogin.php');
include('db.inc');
$st="select * from transaction where uno=".$_SESSION['uno'];
$rst=mysql_query($st);
?>
<fieldset>
<legend>MY TRANSACTION</legend>
<?php
while($row=mysql_fetch_array($rst))
{
echo "<table style='border:1px outset;' cellpadding=0 cellspacing=15 width=100%>";
include('db2.inc');
$st2="select * from mobileinfo where proid=".$row['proid'];
$rst2=mysql_query($st2);
$row2=mysql_fetch_array($rst2);
echo "<tr><td><img src=".$row2[6]." style='border:1px dotted black;'><td><b>Model : ".$row2[1]."<br>Company : ".$row2[2]."<td><b>Status : ".$row['Status']."<td><b>Purchase Date : ".$row['purdate'];

echo "</table><br>";
}
?>

<tr><td colspan=2>To get more details about your transaction log onto <a href=transaction.php>www.inmobi-mytransaction.com</a></tr>


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