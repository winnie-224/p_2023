
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript">
<!--
//preload images
var image1=new Image()
image1.src="images/1.jpg"
var image2=new Image()
image2.src="images/2.jpg"
var image3=new Image()
image3.src="images/3.jpg"
var image4=new Image()
image4.src="images/4.jpg"
var image5=new Image()
image5.src="images/6.jpg"
var image5=new Image()
image5.src="images/5.jpg"
//-->
</script>



<style type="text/css">
a:hover{color:red;text-decoration;underline;font-size:16px}
#apDiv1 {
	position:absolute;
	width:289px;
	height:93px;
	z-index:1;
	left: 250px;
	top: 15px;
}
.hhhh {
	font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
	font-size: 80px;
	color: #FFF;
}
#apDiv2 {
	position:absolute;
	width:900px;
	height:115px;
	z-index:2;
	left: 235px;
	top: 7px;
}
#apDiv3 {
	position:absolute;
	width:266px;
	height:26px;
	z-index:3;
	left: 512px;
	top: 51px;
	font-size: 18px;
}
#apDiv4 {
	position:absolute;
	width:1320px;
	height:41px;
	z-index:1;
	left: 22px;
	top: 137px;
}
#apDiv5 {
	position:absolute;
	width:1285px;
	height:38px;
	z-index:1;
	left: 18px;
	top: 6px;
}
#apDiv6 {
	position:absolute;
	width:194px;
	height:111px;
	z-index:4;
	left: 22px;
	top: 254px;
	background-image: url(../vivek/images/login.png);
}
#apDiv7 {
	position:absolute;
	width:419px;
	height:21px;
	z-index:5;
	left: 624px;
	top: 88px;
	font-size: 9px;
	text-decoration: blink;
}
#apDiv8 {
	position:absolute;
	width:86px;
	height:23px;
	z-index:6;
	left: 345px;
	top: 353px;
	background-image: url(../vivek/images/login.png);
}
#apDiv9 {
	position:absolute;
	width:203px;
	height:38px;
	z-index:6;
	left: 9px;
	top: 325px;
	background-color: #CCC;
	background-image: none;
}
#apDiv10 {
	position:absolute;
	width:674px;
	height:321px;
	z-index:6;
	left: 60px;
	top: 253px;
}
#apDiv11 {
	position:absolute;
	width:383px;
	height:115px;
	z-index:6;
	left: 44px;
	top: 214px;
}
#apDiv12 {
	position:absolute;
	width:400px;
	height:275px;
	z-index:6;
	left: 34px;
	top: 274px;
}
#apDiv13 {
	position:absolute;
	width:346px;
	height:229px;
	z-index:1;
	left: 513px;
	top: -26px;
}
#apDiv14 {
	position:absolute;
	width:200px;
	height:134px;
	z-index:6;
	left: 919px;
	top: 216px;
}
#apDiv15 {
	position:absolute;
	width:261px;
	height:158px;
	z-index:6;
	left: 1025px;
	top: 220px;
}
#apDiv16 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:6;
	left: 20px;
	top: 10px;
}
#apDiv17 {
	position:absolute;
	width:444px;
	height:45px;
	z-index:7;
	left: 384px;
	top: 131px;
}
#apDiv18 {
	position:absolute;
	width:455px;
	height:529px;
	z-index:8;
	left: 106px;
	top: 228px;
}
</style>
</head>

<body background="../vivek/images/bg.png">
<%

  if(request.getParameter("trainno")!=null && request.getParameter("names")!=null)
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Shree");  	   
       PreparedStatement stmt=con.prepareStatement("insert into train(trainno,names,home,stationcode1,destination,stationcode2,distance,day,stoppage,stoppagea,stoppagek,time,zone,timek,zonek)values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
            stmt.setString(1,request.getParameter("trainno"));
             stmt.setString(2,request.getParameter("names"));
            stmt.setString(3,request.getParameter("home"));
			stmt.setString(4,request.getParameter("stationcode1"));
           stmt.setString(5,request.getParameter("destination"));
		   stmt.setString(6,request.getParameter("stationcode2"));
           stmt.setString(7,request.getParameter("distance"));
           stmt.setString(8,request.getParameter("day"));
           stmt.setString(9,request.getParameter("stoppage"));
           stmt.setString(10,request.getParameter("stoppagea"));
           stmt.setString(11,request.getParameter("stoppagek"));
           stmt.setString(12,request.getParameter("time"));
           stmt.setString(13,request.getParameter("zone"));
           stmt.setString(14,request.getParameter("timek"));
           stmt.setString(15,request.getParameter("zonek"));
          stmt.execute();   
	        
  }

%>
<div id="apDiv1" class="hhhh">G-Rail </div>
<div id="apDiv7">HUM MAI HAI RAFTAR..G RAILWAY TAKING YOUR DREAMS  FROM TRACK TO YOUR HOME</div>
<div id = ""></div>
<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="../vivek/images/Untitled-2.png" width="899" height="118" /></div>
<div id="apDiv16"></div>
<img src="images/Grail.jpg" width="216" height="116" />
<div id="apDiv17"><font size="+3" face="Papyrus"><b><U>TRAIN SCHEDULING</U></b></font></div>
<div id="apDiv18"><form method="post" name="frmregistration">
<table width="516" border="" cellpadding="" cellspacing="" align="center">
	<tbody><tr>
			<td width="150">TrainNumber</td>
			<td width="366"><input type="textfield" name="trainno" size="20"></td>
		</tr>
		<tr>
			<td width="150">TrainName</td>
			<td width="366"><input type="text" name="names" size="20"></td>
		</tr>
		<tr>
			<td width="150">station to</td>
			<td width="366"><select name="home">
				<option value="Varanasi">Varansi</option>
				<option value="New delhi">New Delhi</option>
                 <option value="Mumbai">Mumbai</option>
                  <option value="Banglore">Banglore</option>
                   <option value="Kolkata">Kolkata</option>
                    <option value="Gorakhpur">Gorakhpur</option>
				
</td><td><input type="text" name="stationcode1"></td>
</tr>

	<tr>
			<td width="150">station from</td>
			<td width="366"><select name="destination">
				<option value="Varanasi">Varansi</option>
				<option value="New delhi">New Delhi</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Banglore">Banglore</option>
				<option value="Kolkata">KOlkata</option>
				 <option value="Gorakhpur">Gorakhpur</option>
</td><td><input type="text" name="stationcode2"></td>
</tr><tr>
			<td width="150">Distance</td>
			<td width="366"><input type="text" name="distance" size="05"></td><td width="150"></td><td width="366"><input type="text" name="distance" size="01" value="km"></td>
			
		</tr>
   <tr><td width="150">Schedule</td>
			<td width="366"><select name="day">
				<option value="daily">daily</option>
				<option value="M,W,F,S">M,W,F,S</option>
				<option value="S,W">S,W</option>
				
</td>
</tr>
<tr>
			<td width="150">Stoppage</td>
			<td width="366"><input type="text" name="stoppage" size="20"></td>
		</tr>
<tr>
			<td width="150">Stoppage</td>
			<td width="366"><input type="text" name="stoppagea" size="20"></td>
		</tr>

<tr>
			<td width="150">Stoppage</td>
			<td width="366"><input type="text" name="stoppagek" size="20"></td>
		</tr>

<tr>
			<td width="150">Departure Time</td>
			<td width="366"><input type="text" name="time" size="05"></td>
   
                        <td width="50"></td>
			<td width="120"><select name="zone">
				<option value="pm">am</option>
				<option value="pm">pm</option>
				
</td>

			
				

		</tr><tr>
			<td width="150">Arrival Time</td>
			<td width="366"><input type="text" name="timek" size="05"></td>
   
                        <td width="50"></td>
			<td width="120"><select name="zonek">
				<option value="pm">am</option>
				<option value="pm">pm</option>
				
</td>

			
				

		</tr>
<tr>
			<td width="150"></td>
			<td width="366"><input type="submit" name="Submit" value="Submit"></td>
		</tr>
		
	</tbody>
</table>
</form>
</div>
</body></html>