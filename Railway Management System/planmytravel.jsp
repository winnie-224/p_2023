
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
	width:147px;
	height:32px;
	z-index:1;
	left: 1116px;
	top: -65px;
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
    <table width="1127" border="0">
      <tr>
        <td width="46"><a href="profile.jsp">HOME</td>
        <td width="61"><a href="search1.jsp">TRAIN SEARCH</td>
        <td width="111"><a href="city.jsp">CITY INFORMATION</td>
        <td width="76"><a href="history.jsp">RAILWAY HISTORY</td>
        <td width="76"><a href="railbudget.jsp">RAILWAY BUDGET</td>
      </tr>
    </table>
    <div id="apDiv14"> <% String myname = (String)session.getAttribute("rusername");
if(myname!=null) {
out.println("hello "+myname);
}
 else{response.sendRedirect("home.jsp");}
 
%><a href="logout.jsp" >sign out</a></div>
  </div>
</div>
<img src="../vivek/images/Grail.jpg" width="195" height="138" />
<div id="apDiv12"><%String Error="";
String tname="";
String tnum="";
String distance="";
String day="";

String home=request.getParameter("home");
String destination=request.getParameter("destination");

  if(request.getParameter("home")!=null && request.getParameter("destination")!=null  )
  {Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from train where home='"+home+"'and destination='"+destination+"'");   
	   ResultSet rs=stmt.executeQuery();
       out.println("<table width = '480px'><tbody><tr><td><b>Train No.</b></td><td><b>Train Name</b></td><td><b>Days Running</b></td><td><b>Distance</b></td></tr>");
	   while(rs.next())
      {
	  tname=rs.getString("names");
	  tnum=rs.getString("trainno");
	  distance=rs.getString("distance");
	  day=rs.getString("day");

      out.println("<tr><td>"+tnum+"</td>  <td>"+tname+"</td><td>"+day+"</td><td>"+distance+"</td></tr>");   
       } 
	   out.println("</tbody></table>");
            
	        
  }
%>
  <div id="apDiv13"><h1 align="left">PLAN MY TRAVEL</h1>
<table border="1" align="left"><tbody><tr><td>
<table>
<form method="post"><tbody>


		<tr>
			<td width="150">To</td>
			<td width="366"><select name="home">
				<option value="enter the city name">enter the city name </option>
				<option value="Varanasi">Varanasi</option>
				<option value="New delhi">New delhi</option>
				<option value="mumbai">mumbai</option>
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
				<option value="mumbai">mumbai</option>
				<option value="Kolkata">Kolkata</option>
				<option value="Banglore">Banglore</option>
				<option value=""></option>
			</select></td>
		</tr>
		<tr>
			<td width="150">Date of Journey</td>
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
				<option value="2012	">2012</option>
				<option value="2013">2013</option>
				</select></td>
		</tr>
		
		<tr>
			<td width="150">ticket type</td>
			<td width="366"><select name="ticket">
				<option value="general">general </option>
				<option value="tatkal">tatkal</option>
				<option value="Ladies">Ladies</option>
				
				</select></td>
		</tr>
		
		
		

<tr>
			<td width="150"></td>
			<td width="366"><input type="submit" name="Submit" value="Submit"></td>
		</tr>
<tr>
<tr>
			<td width="150"></td>
			<td width="366"><input type="reset" name="Submit" value="reset" action="search.jsp"></td>
		</tr>
<tr>

			<td colspan="2"></td>			
	</tr>

	
</tbody>
	</form>
</table></td></tr></tbody></table></div>
</div>
</body></html>