
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
a:hover{color:red;text-decoration;underline;font-size:20px}
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
	width:1280px;
	height:41px;
	z-index:1;
	left: 13px;
	top: 137px;
}
#apDiv5 {
	position:absolute;
	width:1285px;
	height:38px;
	z-index:1;
	left: 22px;
	top: 13px;
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
	width:519px;
	height:321px;
	z-index:6;
	left: 60px;
	top: 253px;
}
#apDiv11 {
	position:absolute;
	width:260px;
	height:35px;
	z-index:7;
	left: 431px;
	top: 146px;
}
.vikram {
	font-family: "Times New Roman", Times, serif;
	font-size: 24px;
	font-style: normal;
	color: #F00;
	text-decoration: underline;
}
#apDiv12 {
	position:absolute;
	width:428px;
	height:133px;
	z-index:8;
	left: 707px;
	top: 264px;
}
</style>
</head>

<body background="../vivek/images/bg.png">
<div id="apDiv1" class="hhhh">G-Rail </div>
<div id="apDiv7">HUM MAI HAI RAFTAR..G RAILWAY TAKING YOUR DREAMS  FROM TRACK TO YOUR HOME</div>
<div id="apDiv10">
<form method="post" name="frmregistration" action="register.jsp">
<table width="516" border="0" cellpadding="1" cellspacing="0">
	<tbody>
	<tr>
			<td>UserName</td>
			<td><input type="text" name="rusername" size="20" maxlength="30"></td>
	  </tr>
		
		
		<tr>
			<td width="150">Password</td>
			<td width="366"><input type="password" name="rpass" size="20"></td>
		</tr>
		<tr>
			<td width="150">Confirm Password</td>
			<td width="366"><input type="password" name="confirmPass" size="20"></td>
		</tr>
		<tr>
			<td width="150">Security Question</td>
			<td width="366"><select name="SecurityQuestion">
				<option value="hello">Select question</option>
				<option value="What is the name of my first school">What is the name of my first school</option>
				<option value="Where was I born">Where was I born</option>
				<option value="2+2*2/2=">2+2*2/2=</option>
				<option value="My Favourite Food">My Favourite Food</option>
				<option value="My Pet's Name">My Pet's Name</option>
				<option value=""></option>
			</select></td>
		</tr>
		<tr>
			<td width="150">Answer</td>
			<td width="366"><input type="text" name="Answer" size="20"></td>
		</tr>
		<tr>
			<td width="150">First Name</td>
			<td width="366"><input type="text" name="fname" size="20"></td>
		</tr>
		<tr>
			<td width="150">Last Name</td>
			<td width="366"><input type="text" name="lname" size="20"></td>
		</tr>
		<tr>
			<td width="150">Gender</td>
			<td width="366"><select name="Gender">
				<option value="Gender">Gender</option>
				<option value="Male">Male</option>
				<option value="female" selected>Female</option>
			</select></td>
		</tr>
		<tr>
			<td width="150">Date of Birth</td>
			<td width="366"><select name="DD">
				<option value="00">DD</option>
				<option value="01">01</option>
				<option value="02">02</option>
				<option value="03">03</option>
				<option value="04">04</option>
				<option value="05">05</option>
				<option value="06">06</option>
				<option value="07">07</option>
				<option value="08">08</option>
				<option value="09">09</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select> <select name="Month">
				<option value="00">MM</option>
				<option value="Jan">January</option>
				<option value="Feb">February</option>
				<option value="Mar">March</option>
				<option value="Apr">April</option>
				<option value="May">May</option>
				<option value="Jun">June</option>
				<option value="Jul">July</option>
				<option value="Aug">August</option>
				<option value="Sep">September</option>
				<option value="Oct">October</option>
				<option value="Nov">November</option>
				<option value="Dec">December</option>
			</select> <select name="Year">
				<option value="00">YY</option>
				<option value="2011">2011</option>
				<option value="1992">1992</option>
				<option value="1991">1991</option>
				<option value="1990">1990</option>
				<option value="1989">1989</option>
				<option value="1988">1988</option>
				<option value="1987">1987</option>
			</select></td>
		</tr>
		<tr>
			<td width="150">Occupation</td>
			<td width="366"><select name="Occupation">
				<option value="00">Select Occupation</option>
				<option value="Architect">Architect</option>
				<option value="Teacher">Teacher</option>
				<option value="Private">Private Service</option>
				<option value="Business">Business</option>
				<option value="Agriculture">Agriculture</option>
				<option value="Engineer">Engineer</option>
				
			</select></td>
		</tr>
		<tr>
			<td width="150">Email</td>
			<td width="366"><input type="text" name="EmailId" size="35"></td>
		</tr>
		<tr>
			<td width="150">Mobile No.</td>
			<td width="366"><input type="text" name="MobileNo" size="20"></td>
		</tr>
		<tr>
			<td width="150">Address</td>
			<td width="366"><input type="text" name="Address"></td>
		</tr>
		<tr>
			<td width="150">Pincode</td>
			<td width="366"><input type="text" name="pincode" size="6"></td>
		</tr>
<tr>
			<td width="150">City</td>
			<td width="366"><input type="text" name="City" size="35"></td>
	  </tr>
		<tr>
			<td width="150">State</td>
			<td width="366"><input type="text" name="State" size="35"></td>
		</tr>
		<tr>
			<td width="150"></td>
			<td width="366"></td>
		</tr>
		
		<tr>
			<td width="150"></td>
			<td width="366"><input type="text" name="captcha" size="20"></td>
		</tr>
		<tr>
			<td width="150" align="right"><input type="checkbox" name="tnc" value="TnC"></td>
			<td width="366">I agree to the <a href="tnc.html" target="_blank">Terms of
			Services</a> and the <a href="privacy.html" target="_blank">Privacy
			Policy</a>.</td>
		</tr>
		
		<tr>
			<td width="150"></td>
			<td width="366"><input type="submit" name="Submit" value="Submit"></td>
		</tr>
		<tr>
			<td width="150"></td>
			<td width="366"></td>
		</tr>
		<tr>
			<td width="150"></td>
			<td width="366"></td>
		</tr>
	</tbody>
</table>
</form>
</div>
<div id="Layer2" style="position: absolute; z-index: 3; width: 250px; height: 130px; top: 262px; left: 975px;>
<% String rusername=request.getParameter("rusername");
  String Error="";
  String sud="";
   if(request.getParameter("rusername")!=null )
  {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from registrations where rusername=?");   
	   stmt.setString(1,request.getParameter("rusername"));
       ResultSet rs=stmt.executeQuery();
       if(rs.next())
	   
       { 
	   Error="user name exist";  
	   
	 
       } 
	   else
	   {
	     sud="user name available"; 
	   }
	        
  }

%>
</div>
<div id = "">
<form method="post" name="frmregistration">
<table border="0">
	<tbody>
	  
		<tr>
			<td>UserName</td>
			<td><input type="text" name="rusername" size="20" maxlength="30"></td>
		</tr>
		<tr>
			<td width="150"></td>
			<td width="366"><input type="submit" name="login" value="check"></td>
		</tr>
		
		<tr>
			<td colspan="2"><b><%=Error %></b></td>
			
		</tr>
		<tr>
			<td height="25" colspan="2"><b><%=sud %></b></td>
		</tr>
		
</tbody>
</table>
</form>

</div>


<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="../vivek/images/Untitled-2.png" width="899" height="118" /></div>
</div>
<div id="apDiv11" class="vikram">REGISTRATION FORM</div>
<img src="../vivek/images/Grail.jpg" width="195" height="138" />
</body></html>