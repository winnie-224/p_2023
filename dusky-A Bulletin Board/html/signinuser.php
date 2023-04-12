<script>
function valid()
{
if(document.form1.name.value=="")
{
document.getElementById("err").innerHTML="Sorry ! Id cant be left blank";
document.getElementById("err").style.color="red";
document.getElementById("err").style.border="1px solid";
document.form1.name.focus();
return false;
}
if(document.form1.pwd.value=="")
{
document.getElementById("err").innerHTML="Sorry ! Password cant be left blank";
document.getElementById("err").style.color="red";
document.getElementById("err").style.border="1px solid";
document.form1.pwd.focus();
return false;
}
return true;
}
</script>
<?php
include('tabs.php');
if(isset($_GET['status']))
{
echo"<div style='font-weight:bold;color:red;border=1px solid; border-color:orange;width:100%;' align=center>User  NOT FOUND!</div>";
}
?>
<div id="err" style="background-color:#FFCCCC; border-color:#CC3300;" ></div>
<table border=0 cellpadding=15px width=60%   align=center>
<tr><td width=30%><img src="images/login.jpg" height=138px width=124px></td>

<td width=70% >
<form name=form1 method=post action="signin.php" onSubmit="return valid();">
<fieldset >
<legend>Sign in</legend>
<table border=0  align=center>
<tr><td>User Id<td><input type=text name="name"></tr>
<tr><td>Password<td><input type=password name="pwd"></tr>
<tr><td colspan=2 align=center><button type=submit value=Submit style="background-color:orange;" border=1><b>Sign in</button></tr>
</table>
</fieldset>
</form></tr></table>
<br><br><br><br><br><br><br><br><br>
<br><br>

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

