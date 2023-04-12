<?php 
include('tabs.php');
include('checklogin.php');
include('db.inc');
$st2="select * from myinfo where uno=".$_SESSION['uno'];
$rst2=mysql_query($st2);
$row2=mysql_fetch_array($rst2);
?>
<fieldset width=60%><legend>Edit Profile</legend>
<form method=post action=save.php><table style="border:2px outset;">
<?php 
echo "<tr><td>First Name<td><input type=text name=fname value=".$row2['fname']."></tr><tr><td>Last Name<td><input type=text name='lname' value=".$row2['lname']."></tr><tr><td>Email<td><input type=text name=email value=".$row2['email']."></tr><tr><td>Password<td><input type=text name=pwd value=".$row2['password']."></tr><tr><td>Address<td><input type=text name=add value=".$row2['address']."></tr><tr><td>Pin Code<td><input type=text name=pin value=".$row2['pincode']."></tr>
<tr><td>Country<td><select name='country'><option>Select</option>";
$stc="select * from countries";
$rstc=mysql_query($stc);
while($rowc=mysql_fetch_array($rstc))
{
echo "<option value=".$rowc[0].">".$rowc[2]."</option>";
}
echo "</select></tr>";
echo "<tr><td>Date of Birth<td><input type=text name=dob value=".$row2['dob']."></tr>
<tr><td>Mobile<td><input type=text name=mno value=".$row2['mobile']."></tr>";
?>
<tr><td colspan=2 align=center><button type=submit style="background-color:white;"><img src="images/save.jpg" width=100%></button</tr>
</table>
</form>
</fieldset>
