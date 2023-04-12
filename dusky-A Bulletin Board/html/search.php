<?php
include('tabs.php');
include('db.inc');
//session_start();
if(isset($_REQUEST['feed']))
{
$cat=$_REQUEST['feed'];
$st="select * from feeds where Category='".$cat."'";
$rst=mysql_query($st);
echo "<h3>".$cat."</h3>";
echo "<table>";
while($row=mysql_fetch_array($rst))
echo "<tr><td><b><a href='search.php?id=".$row[0]." '>".$row[1]."</a>";
echo "</div></div>";
}
if(isset($_REQUEST['id']))
{
$x=$_REQUEST['id'];
$st="select * from feeds where feedid=".$x;
$rst=mysql_query($st);
while($row=mysql_fetch_array($rst))
{
echo "<h2>".$row[1]."</h2>";
if($row['images']!="")
echo "<img src=".$row['images'].">";
echo "<p>".$row[2];
echo "<br><b>Posted by-";
if($row['posted_by']==0)
echo "Admin";
else 
echo $row['posted_by'];
echo "<br>".$row['date']."<br>".$row['time'];
}
}
?>