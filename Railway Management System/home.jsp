
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
	left: 249px;
	top: 206px;
	background-image: url(images/login.png);
}
.main_menu {
	text-align:center;
	alignment-adjust:central;
	font-family: "Adobe Garamond Pro";
	font-size: 18px;
	color: #FFF;
	text-decoration: overline;
	background-color: #B30000;
	font-weight: normal;
	font-style: normal;
	font-variant: normal;
	text-transform: none;
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
	background-image: url(images/login.png);
}
#apDiv9 {
	position:absolute;
	width:203px;
	height:38px;
	z-index:6;
	left: 4px;
	top: 344px;
	background-color: #CCC;
	background-image: none;
}
</style>
</head>

<body background="images/bg.png">
<div id="apDiv1" class="hhhh">G-Rail </div>
<div id="apDiv7">HUM MAI HAI RAFTAR..G RAILWAY TAKING YOUR DREAMS  FROM TRACK TO YOUR HOME</div>
<div id="apDiv6"></div>
<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="images/Untitled-2.png" width="899" height="118" /></div><div id="Layer2" style="position: absolute; z-index: 3; width: 208px; height: 180px; top: 212px; left: 1px;">
 <% String rusername=request.getParameter("rusername");
  String Error="";
  if(request.getParameter("rusername")!=null && request.getParameter("rpass")!=null)
  {
  
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from registrations where rusername=? and rpass=?");   
	   stmt.setString(1,request.getParameter("rusername"));
	   stmt.setString(2,request.getParameter("rpass"));   
       ResultSet rs=stmt.executeQuery();
       if(rs.next())
       {  session.setAttribute("rusername",rusername);
          response.sendRedirect("profile.jsp");
       } 
	   else
	   {
	     Error="please try again";
	   }
	        
  }

%>
<form  name="frmlogin" method="post">
<table width="200" height="118" border="0">
	<tbody>
	  
		<tr>
			<td>UserName</td>
			<td><input type="text" name="rusername" size="20" maxlength="30"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="rpass" size="20" maxlength="30"></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" name="submit" value="Go" class="main_menu">
			</td>
		</tr>
		<tr>
			<td colspan="2"><b><%= Error %></b></td>
			
		</tr>
</tb>

		
</tbody>
</table>
</form>
</div>
<div id="apDiv4"><img src="images/Untitled-3.png" width="1321" height="49" />
  <div id="apDiv5">
    <table width="1127" border="0">
      <tr>
        <td width="46"><a href="index.jsp">HOME</td>
        <td width="41">SIGN IN</a></td>
        <td width="41"><a href="signup.jsp">SIGN UP</td>
        <td width="61"><a href="notlogin.jsp">TRAIN SEARCH</td>
        <td width="111"><a href="notlogin.jsp">CITY INFORMATION</td>
        <td width="76"><a href="notlogin.jsp">RAILWAY HISTORY</td>
        <td width="76"><a href="notlogin.jsp">RAILWAY BUDGET</td>
      </tr>
    </table>
  </div>
</div>
<img src="images/Grail.jpg" width="195" height="138" />
<div id="apDiv9">
  <table width="138" height="50" border="0">
    <tr>
      <td width="115"><a href="forgot.jsp"> Password forgot</a></td>
    </tr>
  </table>
</div>
</body></html>