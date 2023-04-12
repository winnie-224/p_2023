<?php session_start();
include('db.inc');
?>
<style>
#notepad{
  display:block;
  text-align: center;
  font: normal 15px;
  color:;
 
width:250px;
  text-shadow: white 1px 1px 0px;
  overflow:hidden;
  background-color:#F0FFF0;

opacity:0.6;
  border: 2px solid white;
  -webkit-box-shadow: 0 0 5px #888;
  -moz-box-shadow: 0 0 5px #888;
  box-shadow: 2px 2px 2px #000;
  }

#A {
   display: block;
  text-align: center;
  font: normal 36px French Script MT;
  color:darkred;
   height:150px;
width:150px;
  text-shadow: white 1px 1px 0px;
  overflow:hidden;
  background:yellow;
  border: 2px solid white;
  -webkit-box-shadow: 0 0 5px #888;
  -moz-box-shadow: 0 0 5px #888;
  box-shadow: 2px 2px 2px #000;
  -webkit-transform: rotate(6deg);
  -moz-transform: rotate(6deg);
  -o-transform: rotate(6deg);

}
#B {
background-color:yellow;
width:100%;
 -moz-box-shadow: -5px -5px 5px #888;
 -webkit-box-shadow: -5px -5px 5px #888;
 box-shadow: -5px -5px 5px #888;
 }

<!--50-->
 </style>
<img src=images/headBg.jpg width=100%>
<table></table>
<?php
echo "My Communities"; 

?>
<table border=0px style="border:0px solid red;background:" cellpadding=7px>
<?php
if(isset($_REQUEST['add']))
{
//echo $_SESSION['id'];
echo "<tr><td style='vertical-align:top' width=20%>";
echo "<table border=0><tr><td>";
echo "<form method=post action='wall1.php?wall&&add=save&&to-do'>";
echo "<textarea  name=note style='border:10px solid #FFFF66;background-color:#FFFF66;height:200px; width:200px;''></textarea></div>"; 
echo "<a href='wall1.php?wall&&add=no&&to-do' style='text-decoration:none;'><img src='images/delete.png' style='position:relative;left:-10px;top:-180px;'></a>";
echo "<input type=image src='images/ok.png' style='position:relative;left:190px;top:-5px;'></form>";
echo "</tr>";
echo "<tr><td>";

if($_REQUEST['add']=='fail')
echo "<span style='border:1px dotted red'><b>Please Enter Text</span>";
if($_REQUEST['add']=='no')
echo " <span style='border:1px dotted red'><b>Note discarded!</span>";
echo"</table>";
//echo $_REQUEST['note'];
if($_REQUEST['add']=='save')
{
if($_REQUEST['note']=="")
header("Location:wall1.php?wall&&add=fail&&to-do");
else
{
echo " <br>Note Saved!";
$st="select max(note_id) from sticky_notes"; 
$row=mysql_fetch_array(mysql_query($st));
//echo $row[0];
$x=$row[0]+1;
$note=$_REQUEST['note'];
//echo $note,$_SESSION['id'];
$id=$_SESSION['id'];
$st="insert into sticky_notes values($x,$id,'$note',CURDATE(),CURTIME())";
mysql_query($st);
header('Location:wall1.php?wall&&add&&to-do');
}
}
echo "<td width=60%><table border=0px cellpadding=7>";
$st="select * from sticky_notes where user_id=".$_SESSION['id'];
$rst=mysql_query($st);
$i=0;
while($row=mysql_fetch_array($rst))
{
//100
if($i==4)
{
echo  "<tr>";
$i=0;
}
echo "<td><a href=wall1.php?wall&&add=del&&noteid=".$row['note_id']."&&to-do><img src=images/del.png></a><span id='A'><b>".$row['note']."</span><br>";
$i++;
}
echo "</table>";
if($_REQUEST['add']=='del')
{
if(isset($_REQUEST['noteid']))
$x=$_REQUEST['noteid'];
$st="delete from sticky_notes where note_id=".$x;
mysql_query($st);
header('Location:wall1.php?wall&&add&&to-do');
}
}
?>

<?php
echo "<td style='vertical-align:top'>";
if(isset($_REQUEST['to-do']))
{
echo "<div id=notepad>";
$st="select * from tasks where user_id=".$_SESSION['id']." and date=CURDATE()";
echo "<b>Planner<hr>";
$rst=mysql_query($st);
while($row=mysql_fetch_array($rst))
echo $row['content']."<hr>";
//echo "</ul>";
echo "<a href='wall1.php?wall&&add&&to-do=add' style='text-decoration:none;color:red'>Add new</a>";
if($_REQUEST['to-do']=='add')
echo "<form method=post action='wall1.php?wall&&add&&to-do=save'>To-do<input type=text name=task><br>On-date(dd/mm/yyyy):<input type=text  name=date style='width:20px'>-<input type=text  name=month style='width:20px'>-<input type=text  name=year style='width:35px'><br><input type=submit value=go></form></div>";
if($_REQUEST['to-do']=='error')
echo "<br>Incorrect Input";
if($_REQUEST['to-do']=='save')
{
$task=$_REQUEST['task'];
if($task=="")
header('Location:wall1.php?wall&&add&&to-do=error');
$dt=$_REQUEST['year']."-".$_REQUEST['month']."-".$_REQUEST['date'];
echo $dt;
$st="select max(tid) from tasks"; 
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
$x=$row[0]+1;
$id=$_SESSION['id'];
$st="insert into tasks values($x,$id,'$task','$dt')";
mysql_query($st);
header('Location:wall1.php?wall&&add&&to-do');
}
}
?>
</table>