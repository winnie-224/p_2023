<?php
include("tabs.php");
?>
<script>
var i,avt;
i=1;
function next()
{
if(i>17)
i=1;
document.getElementById("cont").innerHTML="<img src=images/avatars/a"+i+".bmp width=205 height=397>";
//document.getElementById("cont").innerHTML="<input type=text name=avatar id="aaaa" value=images/avatars/a"+i+".bmp>";

document.form1.avatar.value="images/avatars/a"+i+".bmp";
//abc();
i++;
}
/*function abc()
{
alert(document.form1.avatar.value);

}*/
function prev()
{
if(i<1)
i=17;
document.getElementById("cont").innerHTML="<img src=images/avatars/a"+i+".bmp width=205 height=397>";
document.form1.avatar.value="images/avatars/a"+i+".bmp";
i--;
}
function derr()
{
document.getElementById("err").innerHTML="Form must be filled complete";
}

function validateForm()
{
//alert(document.form1.agree.checked);


//return false;

if(document.form1.uname.value=="" || document.form1.fname.value=="" || document.form1.lname.value=="")
{
derr();
return false;
}
if(document.form1.id.value=="")
{
derr();
return false;
}
if(document.form1.pwd.value=="")
{
derr();
return false;
}
if(document.form1.pwd.value!=document.form1.cpwd.value)
{
document.getElementById("err").innerHTML="Passwords do not match!";
return false;
}

return true;
}
</script>
<div id="err" width=100% style='background-color:'lightyellow'; border:1px solid;border-color:#CC3300;' ></div>
<table width=100% border=0 cellpadding=0 cellspacing=0>
<td width=60%>
<br><br>
<form name="form1" method=post action="reg.php" onSubmit="return validateForm();" enctype=multipart/form-data>
<fieldset>
<legend><b>User Registration</legend>
<!--src=images/body_top_bg.gif>-->
<table border=0 cellpadding=8 cellspacing=0 width=100%>
<tr><td colspan=2 width=100% style="background-color:lightyellow;"><font color="black" ><b>Account Details</tr>
<tr><td>User Name</td><td><input type=text name=uname></tr>
<tr><td>First Name</td><td><input type=text name=fname></tr>
<tr><td>Last Name</td><td><input type=text name=lname></tr>
<tr><td>Gender</td><td><input type=radio name=gender value=Mr>Male<input type=radio name=gender value=Ms>Female</tr>
<tr><td>Email Id</td><td><input type=text name=id></td></tr>
<tr><td>Password</td><td><input type=password name=pwd></td></tr>
<tr><td>Re-enter password</td><td><input type=password name=cpwd></td><td></td></tr>
<tr><td>Country<td><select name=country>
<?php
include('db.inc');
$st="select * from country_database";
$rst=mysql_query($st);
while($row=mysql_fetch_array($rst))
{
echo "<option value=".$row[0].">".$row[1]."</option>";
}
?>
</select></tr>
<?php 
echo "<tr><td>Date of Birth<td><select name=date><option value=00>Date</option>";
for($d=1;$d<=31;$d++)
echo "<option value=".$d.">".$d."</option>";
echo "</select><select name=month><option value=00>Month</option>";
for($m=1;$m<13;$m++)
echo "<option value=".$m.">".$m."</option>";
echo "</select><select name=year><option value=0000>Year</option>";
$y=1960;
while($y<2012)
echo "<option value=".$y.">".$y++."</option>";
echo "</select></tr>";
?>
<tr><td>Mobile Number<td><input type=text name=mno><br></tr>
<tr><td>Select your Avatar:
<td>
<table>
<tr><td><button type=button onclick="next()" style="background-color:white"><img src=images/next.png></button>
<td><div id="cont"><img src=images/avatars/a1.bmp></div>
<input type=hidden name=avatar id="aaaa" value="images/avatars/a1.bmp">
<td><button type=button onclick="prev()" style="background-color:white"><img src=images/prev.png></button></tr></table>
<tr><td colspan=2 align=center><input type=checkbox value=agree>I Accept the terms and conditions.<br></tr>
<tr><td colspan=2 align=center><input type=Submit value=Register name=reg><br><br></tr>
</table>
</form>

</tr></table>

