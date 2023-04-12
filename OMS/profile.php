<?php
include('tabs.php');
include('checklogin.php');
include('db.inc');
$st="select * from myinfo where uno=".$_SESSION['uno'];
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
if(isset($_GET['update']))
echo "<div width=100% style='border:1px solid red;'>Your Profile has been updated successfully!!!</div>"
?>
<br><br>
<table style="border:1px groove red;" align=center>
<?php echo "<tr><td border=1 width=130px style='vertical-align:top;'><br><img src='".$row['image']."' height=100 width=120 style='border:1px dotted;'/><td>"; ?>
<fieldset>
<legend>My Profile</legend>
<table style="border:1px outset;" cellpadding=0 cellspacing=15>
<tr><td>Title<td><?php echo $row['gender'];?></tr>
<tr><td>First Name<td><?php echo $row['fname'];?></tr>
<tr><td>Last Name<td><?php echo $row['lname'];?></tr>
<tr><td>Email<td><?php echo $row['email'];?></tr>
<tr><td>Password<td><?php echo $row['password'];?></tr>
<tr><td>Address<td><?php echo $row['address'];?></tr>
<tr><td>Pin Code<td><?php echo $row['pincode'];?></tr>
<tr><td>Country<td><?php 
			include('db.inc');
                                                    $st1="select * from countries where id=".$row['country'];
			$rst1=mysql_query($st1);
			$row1=mysql_fetch_array($rst1);
                                                    echo $row1[2];?></tr>
<tr><td>Date of Birth<td><?php if($row['dob']=='0000-00-00')
                                                     echo "Not Entered";
else echo $row['dob'];?></tr>
<tr><td>Mobile<td><?php if($row['mobile']==0)
			echo "Not Entered ";
else echo $row['mobile'];?></tr>

</table></fieldset></tr></table>