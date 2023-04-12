
<head>
<style>
#a{font-family:Minya Nouvelle;}
</style>
</head>
<?php
include('tabs.php');
?>
<br>
<?php
if(isset($_GET['expire']))
echo "<div style='background-color:yellow;border:2px solid green;'>Login Required!</div>";
?>
<table width=100% border=0 cellpadding=0 cellspacing=0 align=center>
<tr><td width=15%>
<div class="left" id="a">

<table border=1 cellpadding=0 cellspacing=0>
<tr><td><form method=post action=advancedsearch.php>

<table border=0 cellpadding=0 cellspacing=0 style="font-size:15;">
<tr style="background-image:url(images/n1.gif); width:100%"><td align=center>Advanced Search</tr>
<tr><td>Price Range</tr>
<tr><td><input type=radio name=radio value=1>All Prices</tr>
<tr><td><input type=radio name=radio value=2>Rs.1,000-Rs.5,000</tr>
<tr><td><input type=radio name=radio value=3>Rs.5,000-Rs.10,000</tr>
<tr><td><input type=radio name=radio value=4>Rs.10,000-Rs.15,000</tr>
<tr><td><input type=radio name=radio value=5>Rs.15,000-above</tr>
</table>
</tr>
<tr>
<td>Brands<br>
<select name=brand>
<option value="all">SELECT</option>
<option value="apple">Apple</option>
<option value="blackberry">Blackberry</option>
<option value="LG">LG</option>
<option value="motorola">Motorola</option>
<option value="Micromax">Micromax</option>
<option value="nokia">Nokia</option>
<option value="samsung">Samsung</option>
<option value="sony">Sony Ericsson</option>
</select>
</tr>
<tr><td>
<table border=0 cellpadding=0 cellspacing=0><tr><td>Features</tr>
<tr><td><input type="checkbox">Camera</tr>
<tr><td><input type="checkbox">Bluetooth</tr>
<tr><td><input type="checkbox">Music Player</tr>
<tr><td><input type="checkbox">FM Radio</tr>
<tr><td><input type="checkbox">GPRS/EDGE</tr>
<tr><td><input type="checkbox">Web Browser</tr>
<tr><td><input type="checkbox">Social Networking</tr>
<tr><td align=center><button type="submit" name="GO" value="submit" style="font-size:12;">Go</button></tr>
</table>

</tr>
</table>
</div></form>
<td width=50%>
<table width=100% border=0><tr><td colspan=5><?php
include('aaa.html');
?></tr>
<tr style='background-image:url(images/n1.gif);width:100%;'><td colspan=5 align=center style='color:#FECCC3;'>LATEST ADDITIONS</tr>
<tr><span style:"border=1px solid;"><?php 
include('db2.inc');
$st="select max(proid) from mobileinfo";
$r=mysql_fetch_array(mysql_query($st));
$x=$r[0];
for($i=$r[0];$i>$r[0]-5;$i--)
{
$st1="select mobname,image,mobcompany from mobileinfo where proid=".$i;
$r1=mysql_query($st1);
while($rst=mysql_fetch_array($r1))
{
echo "<td><img src='".$rst[1]."'><br><br>".$rst[2]." ".$rst[0]."</td>";
}
}
?></tr></span></table>
<td>
<table border=0 cellspacing=0 cellpadding=0 align=center width=100%>
<tr><td align=center><img src=images/signtop.jpg width=300px height=200px></tr>
<tr><td align=center>
<table border=0 cellspacing=5 cellpadding=0 align=center width=80% style="border:1px solid darkred;">
<form method=post action="signin.php?index">
<tr style="background-image:url(images/n1.gif);width:100%;"><td colspan=2 align=center style="color:#FECCC3;">Sign In</tr>
<tr><td>User Id:<td><input type=text name=name></tr>
<tr><td>Password:<td><input type=Password name=pwd></tr>
<tr><td colspan=2 align=center><input type=submit value="Submit"></tr>
</form>
<tr><td colspan=2 align=center><font color="darkred">Not a user? <a href="reg.php">Register Now!</a></font></tr>
<tr><?php
if(isset($_GET['status']))
{
echo"<td colspan=2><div id=error style='border:1px solid red;'><div style='font-weight:bold;color:red;border=1px solid; border-color:orange;width:100%;' align=center>User  NOT FOUND!</div></div>";
}
?></tr>
<!--<tr><img src=images/></tr>
<tr><img src=images/></tr>
<tr><img src=images/></tr>
<tr><img src=images/></tr>-->
</table>
</tr></table>

</tr></table>

  
  
  <!--<tr style='background-image:url(images/n1.gif);width:100%;'><td colspan=2 align=center style='color:#FECCC3;'>LATEST ADDITIONS</tr>-->
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
</footer>
