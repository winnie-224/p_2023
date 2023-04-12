  <?php
include('tabs.php');
include('db2.inc');
$rst="select * from mobileinfo where proid=".$_SESSION['proid'];
$st=mysql_query($rst);
?>
<table align=center>
<tr><td height="255" style="vertical-align:top"><img src="images/myca.png" alt="CART" /></td>
<td>
<form method=post action="savecart.php">
<table width="525" height="253" border="0" align="center" style="border:1px outset;" cellpadding="4">
  <tr>
    <th height="27" colspan="2" bgcolor="#EE6363"><div align="left">ADD TO CART</div></th>
  </tr>
<tr><td>
<?php while($row=mysql_fetch_array($st))
      {
       echo "<img src=".$row[6]."><br><b>Model : ".$row[1]."<br><b>Manufacturer : ".$row[2]."<td>MRP : ".$row[3]."<br><b>Offer Price : ".$row[4];
      }
 ?></tr>
<tr><td height="51" colspan=2 align=center><button type=Submit value=Submit name=submit style="background-color:white;color:red;"><b>BUY<br><img src=images/buy.jpg></button><br><br></tr>
</table></form></td>
</tr></table>
<footer >
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
</body>
</html>
