<?php
include('db.inc');
$fname=$_REQUEST['fname'];
$lname=$_REQUEST['lname'];
$eid=$_REQUEST['eid'];
$contact=$_REQUEST['contact'];
$subject=$_REQUEST['subject'];
$order=$_REQUEST['order'];
$fd=$_REQUEST['fd'];
$st1="select max(formno) from feedback";
$rst=mysql_query($st1);
$row=mysql_fetch_array($rst);
$fno= $row[0]+1;
echo $row[0];
mysql_query("insert into feedback(formno,fname,lname,email,contact,subject,order,feedback) values('$fno','$fname','$lname','$eid','$contact','$subject','$order','$fd')");
header('location:nextfeed.php');
?>