<?php
include('tabs.php');
include('db.inc');
//session_start();
if(isset($_REQUEST['create']))
{
echo "<h2 align=center>Create Community</h2>";
echo "<form method=post action=community.php?save enctype=multipart/form-data><table align=center>";
echo "<tr><td>Name<td><input type=text name=cname></tr>";
echo "<tr><td>Details<td><textarea name=details>Enter some information about community</textarea></tr>";
echo "<tr><td>Logo<td><input type=file name=image>";
echo "<tr><td colspan=2 align=right><input type=submit></tr><table>";
}
if(isset($_REQUEST['save']))
{
//$x=$_REQUEST['create'];
//if($x=='save')

$st="select max(comm_id) from community";
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
$x=$row[0];
if($_FILES['image']['name']=="")
$img="images/undefined.jpg";
else
$img="images/".$_FILES['image']['name'];
//echo $img;
$cname=$_REQUEST['cname'];

$details=$_REQUEST['details'];
$st="insert into community values($x+1,'$cname','details','0','$img')";
$rst=mysql_query($st);
$x+=1;
header('Location:community.php?view='.$x);
}
if(isset($_REQUEST['view']))
{
$x=$_REQUEST['view'];
$y=$_SESSION['id'];
$st="select * from community where comm_id=".$x;
$rst=mysql_query($st);
while($row=mysql_fetch_array($rst))
{
echo "<table  border=1 style='border:2px outset #ffddd5;'><tr><td><img src=".$row['logo']."  style='border:2px outset white;'><tr><td><h2 style='color:#00ac69;font-family:Constantia'><i>".$row['name']."</h2></tr>";
echo "<tr><td align=center><i>".$row['details'];
echo "<tr><td align=right>";
$st1="select * from comm_mem where user_id=".$y." and comm_id=".$x;
$rst1=mysql_query($st1);
$row1=mysql_fetch_array($rst1);
if($row1=="")
echo "<a href= community.php?join=".$x." style='text-decoration:none;color:#11ac69'><b>Join Here</a>";
echo "<tr><td><a href=community.php?view=".$row['comm_id']."&&members style='text-decoration:none;color:#11ac69;'>Members:</a> ".$row['users'];
//echo "<tr><td>View all</a>";
}
if(isset($_REQUEST['members']))
{
$st="select * from comm_mem where comm_id=".$x;
$rst=mysql_query($st);
echo "<br><table border=1 cellpadding=5><tr>";
$i=0;
while($row=mysql_fetch_array($rst))
{
$st1="select * from userdb where id=".$row['user_id']; 
if($i==4)
echo "<tr>";
$rst1=mysql_query($st1);
$row1=mysql_fetch_array($rst1);
echo "<td width=20px><a href=view.php?user=".$row1[0]." style='text-decoration:none;color:black'><img src=".$row1['avatar'];
echo " border=1px height=60px><br>".$row1['uname']."</a></td>";
$i++;
}
}
}
echo "</table>";
if(isset($_REQUEST['join']))
{
$x=$_REQUEST['join'];
$y=$_SESSION['id'];
$st="insert into comm_mem values($x,$y)";
mysql_query($st);
$st="select users from community where comm_id=".$x;
$row=mysql_fetch_array(mysql_query($st));
$z=$row[0]+1;
$st="update  community set users=".$z." where comm_id=".$x;
mysql_query($st);
header('Location:community.php?view='.$x.'&&members');
}
?>
</table>
<br><br>
<div style='border:;position:absolute;top:350px;right:10px;background:#fffcd5 url(images/contentBg.jpg) repeat-x'>

<?php 
echo "<form name=f1 method=post action=community.php?view=".$_REQUEST['view']."&&members&&post_topic><textarea name=topic style='height:200px;width:600px;border:2px outset #ffddd5;'></textarea><br><input type=submit value=post></form>";
if(isset($_REQUEST['post_topic']))
{
$st="select max(post_id) from posts";
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
$x=$row[0]+1;
$name=$_SESSION['uname'];
$cid=$_REQUEST['view'];
$uid=$_SESSION['id'];
$post=$_REQUEST['topic'];
if($post=="")
echo "ERROR!";
else
{
$st="insert into posts values($x,$cid,$uid,'$name',CURDATE(),'$post')";
mysql_query($st);
header('Location:community.php?view='.$_REQUEST['view'].'&&members');
}
}
echo "</div>";
$st="select * from posts where comm_id=".$_REQUEST['view'];
$rst=mysql_query($st);
echo "<table border=1px style='border:1px outset green' width=100%>";
while($row=mysql_fetch_array($rst))
{
echo "<tr><td><a href=view.php?user=".$row['user_id'].">".$row['user_name']."</a>&nbsp&nbsp<i>".$row['content']."<br>".$row['date'];
$x=$row['post_id'];
$st1="select * from comments where post_id=".$x;
$rst1=mysql_query($st1);
//$row1=mysql_fetch_array($rst1);
while($row1=mysql_fetch_array($rst1))
{
echo "<br><a href=view.php?user=".$row['user_id'].">".$row1['user_name']."</a>&nbsp&nbsp".$row1['content'];
}
//}


echo "<br><form method=post action=communty.php?save_comment><input type=text name=comment><input type=submit value=Comment>";

}
echo "</table>";
?>

