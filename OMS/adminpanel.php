<?php
include('db.inc');
?>
<head>
<img src=images/log.gif></head>
<link rel="stylesheet" href="style.css" type="text/css" />
<div class="white">
            <div id="w">
	<ul>
	
	<li><a href="adminpanel.php?myaccount">My Account</a></li>
	<li><a href="signout.php">Sign out</a></li>
	<li><a href="adminpanel.php">Home</a></li>
	</ul>	
	</div></div></tr>
</table>
<br><br>

<fieldset>
<legend>Admin Page</legend>
<table style="border:1px outset grey;" width=100%><tr><td style='vertical-align:top;'>
<tr><td>
<table style="border:1px dotted red;height:80%;"cellspacing=8 width=100%>
<td align=center><a href="adminpanel.php?viewuser" style="text-decoration:none;"><img src=images/User.png><br>View User Info</a>
<td align=center><a href="adminpanel.php?viewproducts" style="text-decoration:none;"><img src=images/pro.png><br>View Products</a>
<td align=center><a href="adminpanel.php?transactions" style="text-decoration:none;"><img src=images/trans.png><br>View Transactions</a>
<td align=center><a href="adminpanel.php?searchuser" style="text-decoration:none;"><img src=images/search.png><br>Search User</a>
<td align=center><a href="adminpanel.php?searchproduct" style="text-decoration:none;"><img src=images/searchp.png><br>Search Product</a>
<td align=center><a href="adminpanel.php?addproduct" style="text-decoration:none;"><img src=images/add.png><br>Add Product</a>
<td align=center><a href="adminpanel.php?editproduct" style="text-decoration:none;"><img src=images/edit.png><br>Edit Product</a>
<td align=center><a href="adminpanel.php?deleteproduct" style="text-decoration:none;"><img src=images/deletep.png><br>Delete Product</a></tr>
</table></tr>
<tr><td align=center>
<table width=100% cellpaddinng=5 cellspacing=30 align=center>

<?php if(isset($_GET['viewuser']))
{
echo "<tr style='border:1px outset red;'><td>UserNO<td>First name<td>Last Name<td>Email<td>Password<td>Address<td>Pincode<td>Country<td>Dob<td>Mobile<td>Image</tr>";
$a1="select * from myinfo";
$b1=mysql_query($a1);

while($r=mysql_fetch_array($b1))
{
echo "<tr><td>".$r[0]."</td>";
echo "<td>".$r[1]."</td>";
echo "<td>".$r[2]."</td>";
echo "<td>".$r[4]."</td>";
echo "<td>".$r[5]."</td>";
echo "<td>".$r[8]."</td>";
echo "<td>".$r[9]."</td>";
$rst=mysql_query("select * from countries where id=".$r[10]);
$r22=mysql_fetch_array($rst);
echo "<td>".$r22[2]."</td>";
echo "<td>".$r[11]."</td>";
if($r[12]==0)
echo "<td>Not Entered";
else
echo "<td>".$r[12]."</td>";
echo "<td><img src=".$r[13]." height=30px width=30px></td>";
echo "</tr>";
}
}
 if(isset($_GET['transactions']))
{
echo "<tr ><td>Transaction Id<td>Product Id<td>User Id<td>Purchase Date<td>Status</tr>";
$a2="select * from transaction";
$b2=mysql_query($a2);
while($r=mysql_fetch_array($b2))
{
echo "<tr><td>".$r[0]."</td>";
echo "<td>".$r[1]."</td>";
echo "<td>".$r[2]."</td>";
echo "<td>".$r[3]."</td>";
echo "<td>".$r[4]."</td>";
echo "</tr>";
}
}
if(isset($_GET['searchuser']))
{
if($_GET['searchuser']=='notfound')
echo "<tr><td style='border:1px dotted red;'>User Name should not be left blank!!!</tr>";
}
 if(isset($_GET['searchuser']))
{
echo "<form name=frm1 method=post action='adminpanel.php?searchu'><tr><td>Enter User Name:</td><td><input type=text name=user></tr><tr><td colspan=2><button type=submit style='background-color:white;border:0'><img src='images/searchBtn.gif' width=100%></button></form>";
}
if(isset($_GET['searchu']))
{
if($_REQUEST['user']=="")
header('location:adminpanel.php?searchuser=notfound');
else 
{
echo "Results for ".$_REQUEST['user'];
include('db.inc');
echo "<tr ><td>UserNO<td>First name<td>Last Name<td align=center>Email<td>Password<td>Address<td>Pincode<td>Country<td>Dob<td>Mobile<td>Image</tr>";
$a1="select * from myinfo where email like '%".$_REQUEST['user']."%'";
$b1=mysql_query($a1);
while($r=mysql_fetch_array($b1))
{
echo "<tr><td>".$r[0]."</td>";
echo "<td>".$r[1]."</td>";
echo "<td>".$r[2]."</td>";
echo "<td>".$r[4]."</td>";
echo "<td>".$r[5]."</td>";
echo "<td>".$r[8]."</td>";
echo "<td>".$r[9]."</td>";
$rst=mysql_query("select * from countries where id=".$r[10]);
$r22=mysql_fetch_array($rst);
echo "<td>".$r22[2]."</td>";
echo "<td>".$r[11]."</td>";
if($r[12]==0)
echo "<td>Not Entered";
else
echo "<td>".$r[12]."</td>";
echo "<td><img src=".$r[13]." height=30px width=50px></td>";
echo "</tr>";

}
}
}
if(isset($_GET['searchproduct']))
{
if($_GET['searchproduct']=='notfound')
echo "<tr><td style='border:1px dotted red;'>Product Name should not be left blank!!!</tr>";
}
if(isset($_GET['searchproduct']))
{
echo "<form name=frm2 method=post action='adminpanel.php?searchp'><tr><td>Enter Product Name:</td><td><input type=text name=pro></tr><tr><td colspan=2><button type=submit style='background-color:white;border:0'><img src='images/searchBtn.gif' width=100%></button></form>";
}
if(isset($_GET['searchp'])) 
{
if($_REQUEST['pro']=="")
header('location:adminpanel.php?searchproduct=notfound');
else 
{
echo "Results for ".$_REQUEST['pro'];
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");
echo "<tr><td>Product ID<td>Name<td>Manufacturer<td>MRP<td>Offer Price<td>Image</tr>";
$pro="select * from mobileinfo where mobname like '%".$_REQUEST['pro']."%'";
$pro1=mysql_query($pro);
while($pror=mysql_fetch_array($pro1))
{
echo "<tr><td>".$pror['proid'];
echo "<td>".$pror['mobname'];	
echo "<td>".$pror['mobcompany']; 	
echo "<td>".$pror['mrp'];
echo "<td>".$pror['ofprice'];
echo "<td><img src=".$pror['image']."></tr>";
}
}
}
if(isset($_GET['addproduct']))
{
if($_GET['addproduct']=='null')
echo "<tr><td>Form must be filled completely!!</tr>";
echo "<form name=frm3 method=post action=adminpanel.php?addproduct=insert enctype=multipart/form-data><tr><td>Enter Product Name<td><input type=text name=mobname></tr>";
echo "<tr><td>Enter Manufacturer Name<td><input type=text name=mobcompany></tr>";
echo "<tr><td>Enter M.R.P.<td><input type=text name=mrp></tr>";
echo "<tr><td>Enter Offer Price<td><input type=text name=ofprice></tr>";
echo "<tr><td>Enter Category<td><select name=cat><option value=Mobile>Mobile</option><option value=Battery>Battery</option><option value=Datacard>Datacard</option><option value=Handsfree>Handsfree</option><option value=Charger>Charger</option></select></tr>";
echo "<tr><td>Upload Image<td><input type=file name=image></tr>";
echo "<tr><td colspan=2 align=center><button style='margin:0;border:0;background:white;'><img src=images/go.gif></button></tr></form>";

if(($_GET['addproduct']=='insert'))
{
if($_REQUEST['mobname']==""||$_REQUEST['mobcompany']==""||$_REQUEST['mrp']==""||$_REQUEST['ofprice']=="")
header('location:adminpanel.php?addproduct=null');
else
{
$i1=$_REQUEST['mobname'];
$i2=$_REQUEST['mobcompany'];
$i3=$_REQUEST['mrp'];
$i4=$_REQUEST['ofprice'];
$i5=$_REQUEST['cat'];
if($_FILES['image']['name']=="")
$img="images/m1.jpg";
else
$img="images/mobile/".$_FILES['image']['name'];
move_uploaded_file($_FILES['image']['tmp_name'],$img);
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");

$stt=mysql_query("select max(proid) from mobileinfo");
$rstt=mysql_fetch_array($stt);
$i=$rstt[0];

$i++;
mysql_query("insert into mobileinfo(proid,mobname,mobcompany,mrp,ofprice,image,Category) values('$i','$i1','$i2','$i3','$i4','$img','$i5')");
header('location:adminpanel.php');

}}}

if(isset($_GET['editproduct']))
{
if($_GET['editproduct']=='null')
echo "<tr><td>Product ID Must be Entered!!</tr>";
echo "<form name=frm4 method=post action=adminpanel.php?editp><tr><td>Enter Product ID<td><input type=text name=pro1></tr><tr><td colspan=2><button type=submit style='background-color:white;border:0'><img src='images/searchBtn.gif' width=100%></button></form>";
}
if(isset($_GET['editp']))
{
if($_REQUEST['pro1']=="")
{
header('location:adminpanel.php?editproduct=null');
}
else
{
$s=$_REQUEST['pro1'];
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");
$st="select * from mobileinfo where proid=".$s;
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
echo "<form name=frm8 method=post action=adminpanel.php?ins><td><input type=hidden name=proid value=".$row[0]."></tr><TD> Name<TD><input type=text value=".$row[1]." name=i1></tr><TD>Manufacturer<TD><input type=text value=".$row[2]." name=i2></tr><TD>Price<TD><input type=text value=".$row[3]." name=i3></tr><TD>Offer Price<TD><input type=text value=".$row[4]." name=i4>";
echo "<tr><td colspan=2 align=center><button style='margin:0;border:0;background:white;'><img src=images/go.gif></button></tr></form>";

}
}
if(isset($_GET['ins']))
{
$i=$_REQUEST['proid'];

$i1=$_REQUEST['i1'];
$i2=$_REQUEST['i2'];
$i3=$_REQUEST['i3'];
$i4=$_REQUEST['i4'];
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");
$st2="update mobileinfo set mobname='".$i1."',mobcompany='".$i2."',mrp='".$i3."',ofprice='".$i4."' where proid='".$i."'";
mysql_query($st2);
header('location:adminpanel.php');

}

if(isset($_GET['deleteproduct']))
{
if($_GET['deleteproduct']=='null')
echo "<tr><td>Product ID Must be Entered!!</tr>";
echo "<form name=frm9 method=post action=adminpanel.php?delp><tr><td>Enter Product ID<td><input type=text name=pro1></tr><tr><td colspan=2><button type=submit style='background-color:white;border:0'><img src='images/searchBtn.gif' width=100%></button></form>";
}
if(isset($_GET['delp']))
{
if($_REQUEST['pro1']=="")
{
header('location:adminpanel.php?deleteproduct=null');
}
else
{
$s=$_REQUEST['pro1'];
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");
$st="select * from mobileinfo where proid=".$s;
$rst=mysql_query($st);
$row=mysql_fetch_array($rst);
echo "<form name=frm91 method=post action=adminpanel.php?del><td><input type=hidden name=proid value=".$row[0]."></tr><TD> Name<TD>".$row[1]."</tr><TD>Manufacturer<TD>".$row[2]."</tr><TD>Price<TD>".$row[3]."</tr><TD>Offer Price<TD>".$row[4]."</tr>";
echo "<tr><td colspan=2 align=center><button style='margin:0;border:0;background:white;'><img src=images/go.gif></button></tr></form>";

}

}
if(isset($_GET['del']))
{
$i=$_REQUEST['proid'];
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");
$st="update mobileinfo set Status='delete' where proid=".$i;
mysql_query($st);

}
if(isset($_GET['viewproducts']))
{
echo "<tr><td>Product List</tr>";
$conn=mysql_connect("localhost","root","");
$db1=mysql_select_db("mobilestore");
$st="select * from mobileinfo where Status='Available'";
$rst=mysql_query($st);
echo "<tr><td>Product ID<td>Name<td>Manufacturer<td>MRP<td>Offer Price<td>Image</tr>";
while($row=mysql_fetch_array($rst))
echo"<tr><td>".$row[0]."<td>".$row[1]."<td>".$row[2]."<td>".$row[3]."<td>".$row[4]."<TD><img src=".$row[6]." height=30px width=30px></tr>";
}

?>
</table>
</div>
</tr>
</table>
</fieldset>