<?php
include('tabs.php');
?>
<div id="contentWrap">
 <div id="contentPanel">
  <div id="leftPanel">
   <div class="toplinks">
   <h2>My world</h2>
   <h3></h3>
   <p>Welcome to the world of Dusky...</p>
<?php 
//session_start();
include('db.inc');
$st="select * from userdb where  id=".$_SESSION['id'];
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
echo "<img src=".$row[10]." style='border:1px dotted'>";
?>
    <ul>
     <li><a href="account.php?profile">Profile</a></li>
     <li><a href="account.php?notes">Notes</a></li>
      <li><a href="account.php?community">Communities</a></li>
     <li><a href="account.php?bookmarks">Bookmarks</a></li>
     <li><a href="account.php?history">History</a></li>
     <li><a href="account.php?settings">Settings</a></li>
 <li><a href="wall1.php?wall&&add&&to-do">My Wall</a></li>


    </ul>
   </div></div>
  <div id="middlePanel">
   <div class="top">

<?php 
if(isset($_REQUEST['profile']))
{
if(isset($_REQUEST['update']))
{
if($_REQUEST['update']=='true')
echo "<script>alert('Profile updated Successfully!');</script>";
else 
echo "<script>alert('Changes discarded!');</script>";
}
echo " <h2>My Profile!</h2><p><table>";
echo "<tr><td><b>Username:<td><i><b>". $row[1];
echo "<tr><td><b>Name:<td><i><b>".$row[7]." ". $row[2]." ".$row[3];
echo "<tr><td><b>Email:<td><i><b>". $row[4];
echo "<tr><td><b>Password:<td><i><b>". $row[5];
echo "<tr><td><b>Date of Birth:<td><i><b>". $row[6];
echo "<tr><td><b>Contact:<td><i><b>". $row[8];
echo "<tr><td><b>Country:<td><i><b>". $row[9];
}

if(isset($_REQUEST['notes']))
{
include('wall1.php');
}

if(isset($_REQUEST['community']))
{
echo " <h2>My Communities!</h2><p><table>";
echo "<tr><td><b>Username:<td><i><b>". $row[1];
echo "<tr><td><b>Name:<td><i><b>".$row[7]." ". $row[2]." ".$row[3];
echo "<tr><td><b>Email:<td><i><b>". $row[4];
echo "<tr><td><b>Password:<td><i><b>". $row[5];
echo "<tr><td><b>Date of Birth:<td><i><b>". $row[6];
echo "<tr><td><b>Contact:<td><i><b>". $row[8];
echo "<tr><td><b>Country:<td><i><b>". $row[9];
}

if(isset($_REQUEST['bookmarks']))
{
echo " <h2>My Bookmarks!</h2><p><table>";
echo "<tr><td><b>Username:<td><i><b>". $row[1];
echo "<tr><td><b>Name:<td><i><b>".$row[7]." ". $row[2]." ".$row[3];
echo "<tr><td><b>Email:<td><i><b>". $row[4];
echo "<tr><td><b>Password:<td><i><b>". $row[5];
echo "<tr><td><b>Date of Birth:<td><i><b>". $row[6];
echo "<tr><td><b>Contact:<td><i><b>". $row[8];
echo "<tr><td><b>Country:<td><i><b>". $row[9];
}

if(isset($_REQUEST['history']))
{
echo " <h2>My History!</h2><table width=100% style='border:1px dotted;'><tr style=' font-family:Arial;font-weight:bold; font-size:12px;color:#005b7f; '><td>Feed<td>Time<td>Date<td>Remove</tr>";
$st="select * from history where  uid=".$_SESSION['id'];
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
while($row=mysql_fetch_array($rst))
{
if($row['Status']=='avail')
{
$st1="select * from feeds where feedid=".$row[1];
$rst1=mysql_query($st1);
$row1=mysql_fetch_array($rst1);
echo "<tr><td>".$row1[1]."<td>".$row[2]."<td>".$row[3];
echo "<td><a href=del.php?feed=".$row1[0].">Delete</a></tr>";
}}}
if(isset($_REQUEST['settings']))
{
echo "<form method=post action=save.php?edit>";
echo " <h2>Settings</h2><p><table>";
echo "<tr><td><b>Change Username:<td><i><b><input type=text name=uname value=". $row[1].">";
echo "<tr><td><b>Change First Name:<td><i><b><input type=text name=fname value=".$row[2].">";
echo "<tr><td><b>Change Last Name:<td><i><b><input type=text name=lname value=".$row[3].">";
echo "<tr><td><b>Change Email:<td><i><b><input type=text name=email value=". $row[4].">";
echo "<tr><td><b>Change Password:<td><i><b><input type=text name=password value=". $row[5].">";
echo "<tr><td><b>Date of Birth:<td><i><b><input type=text name=dob value=". $row[6].">";
echo "<tr><td><b>Contact:<td><i><b><input type=text name=contact value='". $row[8]."'>";
//echo "<tr><td><b>Country:<td><i><b>". $row[9];
echo "<tr><td align=right><input type=submit  value=Save></form><td><form method=post action=account.php?profile&&update=false><input type=submit  value=Discard>";
echo "</form>";
}
?>
</div></div>
<div style="position:absolute;top:350px;left:875px;">
<div id="rigtPanel">
   <div class="services">
<h2><i>Communities</h2>
<br>
<table>
<?php 
$st="select * from community";
$rst=mysql_query($st);
$i=0;
while($row=mysql_fetch_array($rst))
{
if($i<5)
{
echo "<tr><td><img src=".$row['logo']." height=30 width=30><td><a href=community.php?view=".$row['comm_id']."&&members>".$row['name']."</a></tr>";
$i++;
}
}
?>
</table>
<h3>Create Community</h3>
<a href=community.php?create>Create</a>
</div>
  