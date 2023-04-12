
<head>
<a href="index.php"><img src=images/log.gif></a></head>
<link rel="stylesheet" href="style.css" type="text/css" />
<table width=100% border=0 cellpadding=0 cellspacing=0>
<tr><td>
            <div class="white">
            <div id="w">
	<ul>
	<li><a href="feedback.php">Feedback</a></li>
	<li><a href="account.php">My Account</a></li>
	<li>
<?php session_start();
if(!isset($_SESSION['uno']))
echo "<a href='signinuser.php'>Sign in</a>";
else
echo "<a href='signout.php'>Sign out</a>";
?>
</li>
	<li><a href="index.php">Home</a></li>
                 <li><form method=post action=search.php><table border=0><tr><td colspan=2  width=auto align=left  style="font-size:12;"><b>Search</tr>

	<tr><td><input type=text name=item></td>
                <td align=center><button style="background-color:orange;" value="go"><b>Go</button></tr>
	</table></form></li>
	</ul>	
	</div></div></tr>
<tr><td>

<div class="mainmenu">

<ul>
      <li class="li_hc"><a href="#">Mobiles</a><ul class="ul_ch">
         <li class="li_nc"><a href="search.php?dd=blackberry">Blackberry</a></li>
         <li class="li_nc"><a href="search.php?dd=iphone">iPhone</a></li>
         <li class="li_nc"><a href="search.php?dd=lg">LG</a></li>
         <li class="li_nc"><a href="search.php?dd=micromax">Micromax</a></li>
         <li class="li_nc"><a href="search.php?dd=motorola">Motorola</a></li>
         <li class="li_nc"><a href="search.php?dd=nokia">Nokia</a></li>
         <li class="li_nc"><a href="search.php?dd=samsung">Samsung</a></li>
         <li class="li_nc"><a href="search.php?dd=sony">Sony Ericsson</a></li>
      </ul></li>

      <li class="li_hc"><a href="#" target="_self" >Accessories</a><ul class="ul_ch">
         <li class="li_nc"><a href="battery.php?dd=battery">Battery</a></li>
         <li class="li_nc"><a href="charger.php?dd=charger">Charger</a></li>
         <li class="li_nc"><a href="datacard.php?dd=datacard">Datacard</a></li>
         <li class="li_nc"><a href="handsfree.php?dd=handsfree">Handsfree</a></li>
      </ul></li>

      <li class="li_hc"><a href="#" target="_self" >Services</a><ul class="ul_ch">
         <li class="li_nc"><a href="warranty.php?dd=warranty">Warranty</a></li>
         <li class="li_nc"><a href="repair.php?dd=repair">Repair</a></li>
          </ul></li>

      <li class="li_hc"><a href="voucher.php" target="_self" >Gift Vouchers</a>

      <li class="li_hc"><a href="online.php" target="_self" >Online Shopping</a>
</ul>


</div>
</tr></table>

