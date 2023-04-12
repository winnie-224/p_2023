<?php
include('tabs.php');
include('checklogin.php');
include('db.inc');
$st2="select * from myinfo where uno=".$_SESSION['uno'];
$rst2=mysql_query($st2);
$row2=mysql_fetch_array($rst2);

$_SESSION['uno']=$row2['uno'];

$con=mysql_connect("localhost","root","");
$db=mysql_select_db("mobilestore");
$st="select * from phone_features where proid=".$_SESSION['proid'];
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
$x=$row[0];
$_SESSION['proid']=$x;
?>
<table style="border:1px groove red;" align=center cellpadding=0 cellspacing=15>
<?php echo "<tr><td width=130px style='vertical-align:top;'><br><img src='".$row['image']."' style='border:1px dotted;'/><td>"; ?>
<fieldset>
<legend><b>PHONE FEATURES</legend>
<table style="border:0px outset;" cellpadding=0 cellspacing=15>
<tr><td>Size<td><?php echo $row['size'];?></tr>
<tr><td>Weight<td><?php echo $row['weight'];?></tr>
<tr><td>Display Size<td><?php echo $row['dissize'];?></tr>
<tr><td>Display colour<td><?php echo $row['discol'];?></tr>
<tr><td>Call records<td><?php echo $row['calrec'];?></tr>
<tr><td>Ringtones<td><?php echo $row['ringtone'];?></tr>
<tr><td>Network standby<td><?php echo $row['ntwrkstandby'];?></tr>
<tr><td>Battery<td><?php echo $row['battery'];?></tr>
<tr><td>Games<td><?php echo $row['games'];?></tr>
<tr><td>Java<td><?php echo $row['java'];?></tr>
<tr><td>3G<td><?php echo $row['3g'];?></tr>
<tr><td>SMS<td><?php echo $row['sms'];?></tr>
<tr><td>MMS<td><?php echo $row['mms'];?></tr>
<tr><td>Email<td><?php echo $row['email'];?></tr>
<tr><td>WAP<td><?php echo $row['wap'];?></tr>
<tr><td>USB<td><?php echo $row['usb'];?></tr>
<tr><td>Operating System<td><?php echo $row['opsys'];?></tr>
<tr><td>Headset<td><?php echo $row['headset'];?></tr>
<tr><td>Speaker<td><?php echo $row['speaker'];?></tr>
<tr><td>Gps<td><?php echo $row['gps'];?></tr>


</table></fieldset>


<td style='vertical-align:top;'>

<fieldset><table><tr><td>
<legend><b>KEY FEATURES</legend>
<table style="border:0px outset;" cellpadding=0 cellspacing=15>
<tr><td>Camera<td><?php echo $row['camera'];?></tr>
<tr><td>Bluetooth<td><?php echo $row['bluetooth'];?></tr>
<tr><td>Music Player<td><?php echo $row['musicplayer'];?></tr>
<tr><td>FM Radio<td><?php echo $row['fmradio'];?></tr>
<tr><td>Gprs<td><?php echo $row['gprs'];?></tr>
<tr><td>Edge<td><?php echo $row['edge'];?></tr>
<tr><td>Web browser<td><?php echo $row['webbrowser'];?></tr>
<tr><td>Social networking<td><?php echo $row['socialnetworking'];?></tr>
<tr><td>Wifi<td><?php echo $row['wifi'];?></tr>
<tr><td>Phonebook<td><?php echo $row['phonebook'];?></tr>
<tr><td>Memory<td><?php echo $row['memory'];?></tr>
<tr><td>Talktime<td><?php echo $row['talktime'];?></tr>
<tr><td>Video<td><?php echo $row['video'];?></tr>



</table></fieldset></tr>

</table><tr><td colspan=3 align=center>
<form method=post action=addcart.php>&nbsp
<button type=Submit value='Add to My Cart' name=submit style="background-color:white;"><img src=images/ac.png></button></form>
</tr>
</tr></table>
