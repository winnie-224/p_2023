
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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
	width:159px;
	height:40px;
	z-index:6;
	left: 1100px;
	top: -73px;
}
</style>
</head>

<body background="../vivek/images/bg.png">
<div id="apDiv1" class="hhhh">G-Rail </div>
<div id="apDiv7">HUM MAI HAI RAFTAR..G RAILWAY TAKING YOUR DREAMS  FROM TRACK TO YOUR HOME</div>
<div id = ""></div>
<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="../vivek/images/Untitled-2.png" width="899" height="118" /></div>
<div id="apDiv4"><img src="../vivek/images/Untitled-3.png" width="1321" height="49" />
  <div id="apDiv5">
          <div id="apDiv14"><% String myname = (String)session.getAttribute("rusername");
if(myname!=null) {
out.println("hello "+myname);
}
 else{response.sendRedirect("home.jsp");}
 
%>
<a href="logout.jsp" >sign out</a>
</div><table width="1127" border="0">
      <tr>
        <td width="166"><a href="planmytravel.jsp">PLAN MY TRAVEL</td>
        <td width="136"><a href="searchbynum.jsp">  TRAIN SEARCH</td>
        <td width="166"><a href="ticket.jsp">TICKET BOOKING</td>
         <td width="166"><a href="city.jsp">CITY INFORMATION</td>
        <td width="183"><a href="history.jsp"><a href="Brief_History_security_icf.pdf">RAILWAY HISTORY</a></td>
        <td width="148"><a href="EHighlights_2012-13.pdf">RAILWAY BUDGET</a></td>
        <td width="148"><a href="../vivek/gallery.html" target="_blank">GALLERY</a></font></td>
        
      </tr>
    </table>
  </div>
</div>
<img src="../vivek/images/Grail.jpg" width="195" height="138" />
</body></html>