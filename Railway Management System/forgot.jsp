<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
<!--
//preload images
var image1=new Image()
image1.src="images/a1.jpg"
var image2=new Image()
image2.src="images/a2.jpg"
var image3=new Image()
image3.src="images/a3.jpg"
var image4=new Image()
image4.src="images/a4.jpg"
var image5=new Image()
image5.src="images/a6.jpg"
var image5=new Image()
image5.src="images/a5.jpg"

//-->
</script>
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
.hhhh {
	font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
	font-size: 50px;
	color: #FFF;
}

#apDiv6 {
	position:absolute;
	width:194px;
	height:111px;
	z-index:4;
	left: 22px;
	top: 254px;
	background-image: url(images/login.png);
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
	width:139px;
	height:52px;
	z-index:6;
	left: 26px;
	top: 404px;
	background-color: #CCC;
	background-image: none;
}
#apDiv10 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 234px;
	top: -282px;
}
#apDiv11 {
	position:absolute;
	width:336px;
	height:32px;
	z-index:7;
	left: 580px;
	top: 81px;
}
</style>


</head>
<body link="#f0f0f0" vlink="#f0f0f0">
<table border="1">
  <tr>
<div id="Layer0" style="position: absolute; z-index: 5; width: 450px; height: 400px; top: 200px; left: 750px; ""
	align="center">
<a href="javascript:slidelink()">
<img src="images/bann1.jpg" name="slide" border="0" width=100% height=370/></a>
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
setTimeout("slideit()",3000)
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

<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="images/Untitled-2.png" width="899" height="118" /></div>
<div id="apDiv4"><img src="images/Untitled-3.png" width="1321" height="49" /><div id="apDiv5">
    <table width="1127" border="0">
      <tr>
        <td width="46"><a href="index.jsp">HOME</a></td>
        <td width="41"><a href="home.jsp">SIGN IN</a></td>
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
<d
<div id="Layer1"
	style="position: absolute; z-index: 6; width: 441px; height: 181px; top: 311px; left: 21px"><h2>You
are just a few steps away from getting your Password</h1><br>


<% String rusername=request.getParameter("rusername");
 String Error="";
  if(request.getParameter("rusername")!=null)
  {
  
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from registrations where rusername=?");   
	   stmt.setString(1,request.getParameter("rusername"));	 
       ResultSet rs=stmt.executeQuery();
       if(rs.next())
       {
		  session.setAttribute("rusername",rusername);
          response.sendRedirect("forgot1.jsp");
       } 
	   else
	   {
	     Error="Enter a valid Username";
	   }
	        
  }
%>
<div id="apDiv10" class="hhhh">G-Rail</div>
<form method="post">
  <table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="231" align="right"><h3>Enter your user name</h3></td>
			<td width="222"><input type="text" name="rusername" size="20"></td>
		</tr>
		<tr>
			<td width="231" align="right" height="65"><input type="submit" name="submit" 				value="Submit"></a></td>
			<td width="222" height="71"></td>
		</tr>
		<tr>
			<td height="18"  colspan="2"><b ><h3><%=Error %></h3></b></td>
		</tr>
	</tbody>
</table>

</form>
</div>


</body>
</html>
