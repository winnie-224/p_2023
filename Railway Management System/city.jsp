
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
	left: 273px;
	top: 13px;
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
	left: 269px;
	top: -1px;
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
	width:220px;
	height:141px;
	z-index:6;
	left: 16px;
	top: 70px;
}
#apDiv17 {
	position:absolute;
	width:300px;
	height:274px;
	z-index:6;
	left: -4px;
	top: 82px;
}
#apDiv18 {
	position:absolute;
	width:578px;
	height:218px;
	z-index:1;
	left: 492px;
	top: 41px;
}
#apDiv19 {
	position:absolute;
	width:209px;
	height:110px;
	z-index:2;
	left: 0px;
	top: -213px;
}
#apDiv20 {
	position:absolute;
	width:150px;
	height:42px;
	z-index:6;
	left: 1154px;
	top: -62px;
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
    <div id="apDiv17"><table>
<form method="post"><tbody>
<h1 align="center">CITY INFORMATION</h1>


		<tr>
			<td width="150">To</td>
			<td width="366"><select name="home">
				<option value="enter the city name">enter the city name </option>
				<option value="Varanasi">Varanasi</option>
				<option value="New delhi">New delhi</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Kolkata">Kolkata</option>
				<option value="Banglore">Banglore</option>
				<option value=""></option>
			</select></td>
		</tr>
		<tr>
			<td width="150">From</td>
			<td width="366"><select name="destination">
				<option value="enter the city name">enter the city name </option>
				<option value="Varanasi">Varanasi</option>
				<option value="New delhi">New delhi</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Kolkata">Kolkata</option>
				<option value="Banglore">Banglore</option>
				<option value=""></option>
			</select></td>
		</tr>
		
<tr>
			<td width="150"></td>
			<td width="366"><input type="submit" name="Submit" value="Submit"></td>
		</tr>
<tr>
<tr>

			<td colspan="2"></td>			
	</tr>

	
</tbody>
	</form>
</table></td></tr></tbody></table>
<div id="apDiv18"><%
 String Error="";
String tname="";
String tnum="";
String distance="";
String day="";

String home=request.getParameter("home");
String destination=request.getParameter("destination");

  if(request.getParameter("home")!=null && request.getParameter("destination")!=null  )
  {Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from hotel where home='"+home+"'and destination='"+destination+"'");   
	   ResultSet rs=stmt.executeQuery();
       out.println("<table width = '600px'><tbody><tr><td><b>Hotel Name</b></td><td><b>HotelnName</b></td><td><b>Hotel name</b></td><td><b>Distance</b></td></tr>");
	   while(rs.next())
      {
	  tname=rs.getString("hotel1");
	  tnum=rs.getString("hotel2");
	  distance=rs.getString("hotel3");
	  

      out.println("<tr><td>"+tnum+"</td><td>"+tname+"</td><td>"+day+"</td><td>"+distance+"</td></tr>");   
       } 
	   out.println("</tbody></table>");
            
	        
  }
%>
<%
String name="";
String num="";
String distances="";


String homes=request.getParameter("home");
String destinations=request.getParameter("destination");

  if(request.getParameter("home")!=null && request.getParameter("destination")!=null  )
  {Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from phonenumber where home='"+homes+"' and destination='"+destinations+"'");   
	   ResultSet rs=stmt.executeQuery();
       out.println("<table width = '500px'><tbody><tr><td><b>Police Help Line Number</b></td><td><b>Hospital Number</b></td><td><b>Fire</b></td></tr>");
	   while(rs.next())
      {
	  name=rs.getString("mobile1");
	  num=rs.getString("mobile2");
	  distances=rs.getString("mobile3");
	  

      out.println("<tr><td>"+num+"</td><td>"+name+"</td><td>"+day+"</td><td>"+distances+"</td></tr>");   
       } 
	   out.println("</tbody></table>");
            
	        
  }
%>

<%
String kname="";
String knum="";
String kdistances="";


String khomes=request.getParameter("home");
String kdestinations=request.getParameter("destination");

  if(request.getParameter("home")!=null && request.getParameter("destination")!=null  )
  {Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from city where home='"+khomes+"'and destination='"+kdestinations+"'");   
	   ResultSet rs=stmt.executeQuery();
       out.println("<table width = '600px'><tbody><tr><td><b>Famous Place</b></td><td><b>Famous Place</b></td><td><b>Famous Place</b></td></tr>");
	   while(rs.next())
      {
	  kname=rs.getString("destination1");
	  knum=rs.getString("destination2");
	  kdistances=rs.getString("destination3");
      out.println("<tr><td>"+knum+"</td><td>"+kname+"</td><td>"+kdistances+"</td></tr>");   
       } 
	   out.println("</tbody></table>");
            
	        
  }
%>

</div>
<div id="apDiv19"><img src="images/Grail.jpg" width="238" height="116" /> </div>
</div> 
<div id="apDiv20"><% String myname = (String)session.getAttribute("rusername");
if(myname!=null) {
out.println("hello "+myname);
}
 else{response.sendRedirect("home.jsp");}
 
%>
<a href="logout.jsp" >sign out</a></div>          
  <div id="apDiv5">
    <table width="1127" border="0">
      <tr>
        <td width="166"><a href="planmytravel.jsp">PLAN MY TRAVEL</td>
        <td width="136"><a href="searchbynum.jsp">TRAIN SEARCH</td>
        <td width="166"><a href="ticket.jsp">TICKET BOOKING</td>
         <td width="166"><a href="city.jsp"> CITY INFORMATION</td>
        <td width="183"><a href="history.jsp">RAILWAY HISTORY</td>
        <td width="148"><a href="railbudget.jsp">RAILWAY BUDGET</td>
        <td width="148"><a href="../vivek/gallery.html" target="_blank">GALLERY</a></font></td>
        
      </tr>
    </table>
  </div>
</div>
<script type="text/javascript">
<!--
var step=1
var whichimage=1
function slideit(){
if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")
whichimage=step
if (step<5)
step++
else
step=1
setTimeout("slideit()",1000)
}
slideit()
function slidelink(){
if (whichimage==1)
window.location="link1.htm"
else if (whichimage==2)
window.location="link2.htm"
else if (whichimage==3)
window.location="link3.htm"
else if (whichimage==4)
window.location="link4.htm"
else if (whichimage==5)
window.location="link5.htm"
}
//-->
</script></tr>
</table>

</body></html>