
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
	width:157px;
	height:34px;
	z-index:7;
	left: 1142px;
	top: 68px;
}
</style>
</head>

<body background="../vivek/images/bg.png">
<div id="apDiv12"><% String myname = (String)session.getAttribute("rusername");
if(myname!=null) {
out.println("hello "+myname);
}
 else{response.sendRedirect("home.jsp");}
 
%><a href="logout.jsp" >sign out</a></div>
<div id="apDiv1" class="hhhh">G-Rail </div>
<div id="apDiv7">HUM MAI HAI RAFTAR..G RAILWAY TAKING YOUR DREAMS  FROM TRACK TO YOUR HOME</div>
<%String Error="";
String tnum="";
String tname="";
String thome="";
String tdest="";
String tdist="";
String tday="";
String tstop1="";
String tstop2="";
String tstop3="";
String tarrtime="";
String tzone1="";
String tdeptime="";
String tzone2="";  
  if(request.getParameter("trainno")!=null ||request.getParameter("names")!=null  )
  {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from train where trainno=? or names=?");   
	   stmt.setString(1,request.getParameter("trainno"));
           stmt.setString(2,request.getParameter("names"));
       ResultSet rs=stmt.executeQuery();
       if(rs.next())
       {tnum="Train No. :" +rs.getString("trainno");
tname="Train Name :"+rs.getString("names");
thome="Starting From :"+rs.getString("home");
tdest="Destination :"+rs.getString("destination");
tday="Days Running :"+rs.getString("day");
tstop1="Stoppage: :"+rs.getString("stoppage");
tstop2="Stoppage :"+rs.getString("stoppagea");
tstop3="Stoppage :"+rs.getString("stoppagek");
tarrtime="Arrival Time :"+rs.getString("time")+rs.getString("zone");
tdeptime="Departure Time :"+rs.getString("timek")+rs.getString("zonek");
         
       } 
            
	else
{Error="wrong number";
 }  
	        
  }
%>

<div id="apDiv11">
<form method="post" name="name"><table border="0"><tbody>

<tr>
			<td width="150">TrainNumber</td>
			<td width="366"><input type="textfield" name="trainno" size="20"></td>
	  </tr><tr>
			<td width="150">TrainName</td>
			<td width="366"><input type="text" name="names" size="20"></td>
		</tr>

<tr>
			<td width="150"></td>
			<td width="366"><input type="submit" name="Search" value="Search"></td>
	  </tr>

<tr>
			<td colspan="2"><%=  tnum%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tname%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  thome%></td>			
	  </tr>
<tr>

			<td colspan="2"><%=  tdest%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tdist%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tday%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tstop1%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tstop2%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tstop3%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tarrtime%></td>			
	  </tr>
<tr>
			<td colspan="2"><%=  tdeptime%></td>			
	  </tr>
		<tr>
			<td colspan="2"><%=  Error%></td>			
		</tr>


	
</tbody>
</table>	</form>
</div>
<div id = ""></div>
<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="../vivek/images/Untitled-2.png" width="899" height="118" /></div>
<div id="apDiv4"><img src="../vivek/images/Untitled-3.png" width="1321" height="49" />
  <div id="apDiv5">
    <table width="1127" border="0">
      <tr>
        <td width="46"><a href="profile.jsp">HOME</td>
         <td width="61"><a href="searchbynum.jsp">TRAIN SEARCH</td>
        <td width="111"><a href="city.jsp">CITY INFORMATION</td>
        <td width="76"><a href="history.jsp">RAILWAY HISTORY</td>
        <td width="76"><a href="railbudget.jsp">RAILWAY BUDGET</td>
      </tr>
    </table>
  </div>
</div>
<img src="../vivek/images/Grail.jpg" width="195" height="138" />
</body></html>