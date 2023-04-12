<%@ page import="java.sql.*" %>
<>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
<!--
//preload images
var image1=new Image()
image1.src="images/a.jpg"
var image2=new Image()
image2.src="images/b.jpg"
var image3=new Image()
image3.src="images/c.jpg"
var image4=new Image()
image4.src="images/d.jpg"
var image5=new Image()
image5.src="images/e.jpg"
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
	left: 243px;
	top: 25px;
}
#apDiv3 {
	position:absolute;
	width:266px;
	height:26px;
	z-index:3;
	left: 503px;
	top: 67px;
	font-size: 18px;
}
#apDiv4 {
	position:absolute;
	width:1280px;
	height:41px;
	z-index:1;
	left: 7px;
	top: 157px;
}
#apDiv5 {
	position:absolute;
	width:1285px;
	height:38px;
	z-index:1;
	left: 7px;
	top: 23px;
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
	width:202px;
	height:60px;
	z-index:6;
	left: 1148px;
	top: 67px;
}
#apDiv11 {
	position:absolute;
	width:675px;
	height:39px;
	z-index:7;
	left: 437px;
	top: -83px;
}
.hhhh {
	font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
	font-size: 50px;
	color: #FFF;
}

#apDiv12 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:7;
	left: 270px;
	top: -143px;
}
#apDiv13 {
	position:absolute;
	width:444px;
	height:21px;
	z-index:5;
	left: 696px;
	top: -82px;
	font-size: 9px;
	text-decoration: blink;
}

</style>

</head>
<body>
<table border="1">
<tr>
<div id="Layer0" style="position: absolute; z-index: 5; width: 450px; height: 400px; top: 250px; left: 100px; ""
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
<body background="images/bg.png">
<%
String rusername=(String)request.getParameter("rusername");
 String Error="";
  if(request.getParameter("SecurityQuestion")!=null && request.getParameter("Answer")!=null && request.getParameter("Occupation")!=null )
  {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Shree");                 
       PreparedStatement stmt=con.prepareStatement("select * from registrations where SecurityQuestion=? and Answer=? and Occupation=?");   
	   
       stmt.setString(1,request.getParameter("SecurityQuestion"));	
	   stmt.setString(2,request.getParameter("Answer")); 
	   stmt.setString(3,request.getParameter("Occupation")); 
       ResultSet rs=stmt.executeQuery();
       if(rs.next())
       {
           Error="Password: " +rs.getString("rpass") ;
       } 
	   else
	   {
	     Error="please try again";
	
	   }
	        
  }
%>
<div id="apDiv10">

<% String myname = (String)session.getAttribute("rusername");
if(myname!=null) {
out.println("hello "+myname);
}
 else{response.sendRedirect("home.jsp");}
 
%>
</div>
<div id="Layer0"
	style="position: absolute; z-index: 1; width: 475px; height: 253px; top: 226px; left: 754px"><form method="post"><font size="5"><b>Please,enter the details for verification--</b></font><br>
<br>
<table border="1"><font size="3">
	<tbody>
	<tr>
			<td colspan="2"><%=  Error%></td>			
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
					<td width="264">Security Question</td>
					<td width="385"><font color="navy"><select name="SecurityQuestion" tabindex="1">			
				<option value="hello">Select question</option>
				<option value="What is the name of my first school">What is the name of my first school</option>
				<option value="Where was I born">Where was I born</option>
				<option value="2+2*2/2=">2+2*2/2=</option>
				<option value="My Favourite Food">My Favourite Food</option>
				<option value="My Pet's Name">My Pet's Name</option>
				<option value=""></option>
			</select></font></td>
			
		</tr>
		<tr>
			<td width="264">Answer</td>
			<td width="199"><input type="text" name="Answer" size="20"></td>
		</tr>
		<tr>
			<td height="60" width="264" align="right"><input type="submit" name="submit"
				value="submit"></td>
			<td height="60" width="199"></td>
		</tr>
	</tbody>
</font></table>
<br>
<br>
<br>
<br>
<br></form>
</div>
<div id="apDiv3">Online Railway Reservation System</div>
<div id="apDiv2" align="center">
<img src="images/Untitled-2.png" width="899" height="118" /></div>
<div id="apDiv4"><img src="images/Untitled-3.png" width="1321" height="49" />
  <div id="apDiv5">
    <table width="1127" border="0">
      <tr>
        <td width="46"><a href="logout1.jsp">HOME</td>
        <td width="41"><a href="logout2.jsp">SIGN IN</a></td>
        <td width="41"><a href="signup.jsp">SIGN UP</td>
        <td width="61"><a href="notlogin1.jsp">TRAIN SEARCH</td>
        <td width="111"><a href="notlogin1.jsp">CITY INFORMATION</td>
        <td width="76"><a href="notlogin1.jsp">RAILWAY HISTORY</td>
        <td width="76"><a href="notlogin1.jsp">RAILWAY BUDGET
        <div id="apDiv13">HUM MAI HAI RAFTAR..G RAILWAY TAKING YOUR DREAMS  FROM TRACK TO YOUR HOME</div>
        <div id="apDiv12" class="hhhh">G-Rail</div></td>
      </tr>
    </table>
  </div>
</div>
<img src="images/Grail.jpg" width="185" height="132" />

</body>
</html>