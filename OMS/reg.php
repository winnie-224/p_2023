<?php
include("tabs.php");
?>
<script>
function derr()
{
document.getElementById("err").innerHTML="Form must be filled complete";
}

function validateForm()
{
if(document.form1.name.value=="")
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
if(document.form1.que.value==""||document.form1.ans.value==""||document.form1.add.value==""||document.form1.country.value=="")
{
derr();
return false;
}
return true;
}
</script>
<div id="err" width=100% style='background-color:#FFCCCC; border:1px solid;border-color:#CC3300;' ></div>
<table width=100% border=0 cellpadding=0 cellspacing=0>
<tr><td width=15% style="vertical-align:top;"><br><br><img src=images/reg.jpg >
<td width=60%>
<br><br>
<form name="form1" method=post action="reguser.php" onSubmit="return validateForm();" enctype=multipart/form-data>
<fieldset>
<legend><b>User Registration</legend>
<table border=0 cellpadding=8 cellspacing=0 width=100%>
<tr><td colspan=2 width=100% style="background-color:lightgrey;"><font color="black" ><b>Account Details</tr>
<tr><td>First Name</td><td><input type=text name=fname></tr>
<tr><td>Last Name</td><td><input type=text name=lname></tr>
<tr><td>Gender</td><td><input type=radio name=gender value=Mr>Male<input type=radio name=gender value=Ms>Female</tr>
<tr><td>Email Id</td><td><input type=text name=id></td></tr>
<tr><td>Password</td><td><input type=password name=pwd></td></tr>
<tr><td>Re-enter password</td><td><input type=password name=cpwd></td><td></td></tr>
<tr><td>Hint Question</td><td><select name=que>
<option value=1a>What is your Favourite Color?</option>
<option value=2a>What is your Favourite Place?</option>
<option value=3a>What is your nick name?</option>
<option value=4a>What is your first phone number?</option>
<option value=5a>What is your pet's name?</option>
</select>
</td></tr>
<tr><td>Hint answer</td><td><input type=text name=ans></td></tr>
<tr><td colspan=2 style="background-color:lightgrey;"><font color="black"><b>
Contact Details</font></tr>
<tr><td>Address</td><td><textarea name=add></textarea></td></tr>
<tr><td>Pin Code:<td><input type=text name=pin></tr>
<tr><td>Country<td><select name="country"><option>Select</option>
<?php
include('db.inc');
$st="select * from countries";
$rst=mysql_query($st);
while($row=mysql_fetch_array($rst))
{
echo "<option value=".$row[0].">".$row[2]."</option>";
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
<tr><td>Upload Picture:</td><td><input type=file name=image></td></tr>
<tr><td colspan=2 align=center><input type=checkbox value=agree>I Agree<br></tr>
<tr><td colspan=2 align=center><input type=Submit value=Register name=reg><br><br></tr>
</table></fieldset>
</form>
<td>
<table width=100%>
<tr><td align=center>
<img src=images/freeShippingBanner.jpg></tr></table>

