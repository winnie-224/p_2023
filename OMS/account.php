<?php
include('tabs.php');
include('checklogin.php');
?>
<fieldset>
<legend>My Account</legend>
<table border=0>
<tr>
<td width=30%>
<img src=images/ad2.gif>
<img src=images/ad55.jpg><td>
</td>
<td >
<table border=0 cellpadding=0 cellspacing=0>
<tr><td>
<?php
include('db.inc');
$st="select * from myinfo where uno=".$_SESSION['uno'];
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
$img=$row['image'];
if(isset($_GET['register']))
echo "<br><br><div width=100%>Registered Succesfully!</div></tr>";
echo "<tr><td width=30% align=center style='border:1px dotted black;'><img src=".$img." alt='account' width='128' height='128'/></td><td>";?>

<table width=400 height="200" style="border:1px double red;" align="left"  cellpadding="0" cellspacing="7">
 <tr><td colspan=2 align=center style="border:1px dashed red; color:darkred; background-color:#FFCCCC">Welcome<?php echo " ".$_SESSION['name'];?></tr>
<tr><td align=center style="border:1px dotted red;" width=50%><a href="profile.php" style="color:darkred;text-decoration:none;"><img src="images/mypro.png"/><br>My Profile</a></td>
<td align=center style="border:1px dotted red;"><a href="edit.php" style="color:darkred;text-decoration:none;" ><img src="images/ep.png"/><br>Edit My Profile</a></td>
  </tr>
  <tr><td colspan=2 align=center style="border:1px dashed red;background-color:#FFCCCC">My Shopping</tr>
  <tr>
    <td align=center style="border:1px dotted red;width=50%"><a href="buy.php" style="color:darkred;text-decoration:none;" ><img src="images/mycart.png"/><br>My Cart</a></td>
    <td align=center style="border:1px dotted red;"><a href="transaction.php" style="color:darkred;text-decoration:none;" ><img src="images/trans.jpg"/><br>My Transactions </a></td>
  </tr>
</table></tr></table>
</td>

</table>
</fieldset>
