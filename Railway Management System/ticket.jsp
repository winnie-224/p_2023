<%@ page import="java.sql.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><style type="text/css">
a:hover{color:blue;text-decoration;underline;font-size:26px}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="Layer4"
	style="position: absolute; z-index: 5; width: 1362px; height: 65px; top: 0px; left: 0px; background-color: #119999""
	align="center"><font color="#ffffff" face="Papyrus" size="+2"><b>ONLINE RAILWAYRESRVATION</b></font><br>
<font color="#ffffff" face="" size="+1"><marquee>HUM MAI HAI RAFTAR..INDIAN RAILWAY TAKING YOUR DREAMS FROM TRACK TO YOUR HEART</marquee></font><font
	color="#ffffff" face=""></font></div>
<div id="Layer1"



<%

  if(request.getParameter("book")!=null && request.getParameter("journey")!=null)
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Shree");  	   
       PreparedStatement stmt=con.prepareStatement("insert into ticket(book ,journey,mast,jaa,name,kam,passeng1 ,sex1 ,age1,type1,seat1,passeng2,sex2 ,age2,type2,seat2,passeng3 ,sex3 ,age3,type3,seat3,passeng4,sex4,age4 ,type4 ,seat4,passeng5,sex5,age5,type5,seat5,passeng6,sex6,age6,type6,seat6)values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
	   stmt.setString(1,request.getParameter("book")+ "-" + request.getParameter("Month") + "-" + request.getParameter("Year"));
	   stmt.setString(2,request.getParameter("journey")+ "-" + request.getParameter("Month") + "-" + request.getParameter("Year"));
	   stmt.setString(3,request.getParameter("mast"));
	   stmt.setString(4,request.getParameter("jaa"));
	   stmt.setString(5,request.getParameter("name"));
	   stmt.setString(6,request.getParameter("kam"));
	   stmt.setString(7,request.getParameter("passeng1"));
	   stmt.setString(8,request.getParameter("sex1"));
	   stmt.setString(9,request.getParameter("age1") );
                      stmt.setString(10,request.getParameter("type1"));
	   stmt.setString(11,request.getParameter("seat1"));	   
	   stmt.setString(12,request.getParameter("passeng2"));
	   stmt.setString(13,request.getParameter("sex2"));
	   stmt.setString(14,request.getParameter("age2") );
                      stmt.setString(15,request.getParameter("type2"));
	   stmt.setString(16,request.getParameter("seat2"));	   
	   stmt.setString(17,request.getParameter("passeng3"));
	   stmt.setString(18,request.getParameter("sex3"));
	   stmt.setString(19,request.getParameter("age3") );
                      stmt.setString(20,request.getParameter("type3"));
	   stmt.setString(21,request.getParameter("seat3"));	   
	   stmt.setString(22,request.getParameter("passeng4"));
	   stmt.setString(23,request.getParameter("sex4"));
	   stmt.setString(24,request.getParameter("age4") );
                      stmt.setString(25,request.getParameter("type4"));
	   stmt.setString(26,request.getParameter("seat4"));	   
	   stmt.setString(27,request.getParameter("passeng5"));
	   stmt.setString(28,request.getParameter("sex5"));
	   stmt.setString(29,request.getParameter("age5") );
                      stmt.setString(30,request.getParameter("type5"));
	   stmt.setString(31,request.getParameter("seat5"));	   
	   stmt.setString(32,request.getParameter("passeng6"));
	   stmt.setString(33,request.getParameter("sex6"));
	   stmt.setString(34,request.getParameter("age6") );
                      stmt.setString(35,request.getParameter("type6"));
	   stmt.setString(36,request.getParameter("seat6"));	    
	   stmt.execute();   
}
%>
<form  method="post" name= "hi"  >
<table border="1" cellpadding="0" cellspacing="2" align="center">
<tbody>
<tr>
<td>Date of booking <%=new java.util.Date()%>
               </td><td>                                                                             Date of journey<select name="journey">
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
			</select>
</td>
</tr>
<tr>
<td>Station from <select name="mast">
				<option value=""></option>
                                                                            <option value="Varanasi">Varanasi</option>
				<option value="Kanpur">Kanpur</option>
				<option value="Baduan">Baduan</option>
				<option value="New Delhi">New Delhi</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Banglore">Banglore</option>
				<option value="Kolkata">Kolkata</option>
				<option value="chennai">Chennai</option>
				 <td>Station to <select name="jaa">
<option value=""></option>

				<option value="Varanasi">Varanasi</option>
				<option value="Kanpur">Kanpur</option>
				<option value="Baduan">Baduan</option>
				<option value="New Delhi">New Delhi</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Banglore">Banglore</option>
				<option value="Kolkata">Kolkata</option>
				<option value="chennai">Chennai</option>
	
</tr>
<td>
Train Name <select name="name">
				<option value="Shivganga Express">Shivganga Express</option>
				<option value="Rajdhani">Rajdhani Express</option>
				<option value="Kashivishwanath Express">KashiVishwanath Express</option>
				<option value="Lucknow Mail">Lucknow Mail</option>
				<option value="Mumbai Express">Mumbai Epresss</option>
				<option value="Banglore Express">Banglore Express</option>
				<option value="Kolkata Express">Kolkata Express</option>
				<option value="chennai Express">Chennai Expresss</option>
			</td><td>	
				      Train Number <select name="kam">
				<option value="12559">12559</option>
				<option value="12955">12955</option>
				<option value="19255">19255</option>
				<option value="12595">12595</option>
				<option value="15529">15529</option>
				<option value="16255">16255</option>
				<option value="16256">16256</option>
				<option value="16256">16665</option>
				</select>
	
 
	
</td>  
</tr>

<h1 align="center">                                  RESERVATION FORM  
<tr>
<td>0<input type="text" name="passeng0" value="Name of the passenger" size="30"><select name="sex0">
                <option value="sex">sex</option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age0" value="Age" size="5"><select name="type">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				<select name="seat">
				<option value="lower" label="Lower" >Lower</option>
				<option value="middle" label="Middle">Middle</option>
				<option value="upper" label="Upper">Upper</option>
				<option value="sidelower" label="sideLower">Side Lower</option>
				<option value="sideupper">Side Upper</option>
				</select></td>
				 
</tr>
<tr>
<td>1<input type="text" name="passeng1" value=""size="30"><select name="sex1">
                <option value=""></option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age1" value="" size="5"><select name="type1">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				Seat <select name="seat1">
				<option value="lower">lower</option>
				<option value="middle">middle</option>
				<option value="upper">upper</option>
				<option value="sidelower">side lower</option>
				<option value="sideupper">side upper</option>
				</select></td>
				 
</tr>
<tr>
<td>2<input type="text" name="passeng2" value="" size="30"><select name="sex2">
                <option value=""></option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age2" value="" size="5"><select name="type2">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				Seat <select name="seat2">
				<option value="lower">lower</option>
				<option value="middle">middle</option>
				<option value="upper">upper</option>
				<option value="sidelower">side lower</option>
				<option value="sideupper">side upper</option>
				</select></td>
				 
</tr>
<tr>
<td>3<input type="text" name="passeng3" value="" size="30"><select name="sex3">
                <option value=""></option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age3" value="" size="5"><select name="type3">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				Seat <select name="seat3">
				<option value="lower">lower</option>
				<option value="middle">middle</option>
				<option value="upper">upper</option>
				<option value="sidelower">side lower</option>
				<option value="sideupper">side upper</option>
				</select></td>
				 
</tr>
<tr>
<td>4<input type="text" name="passeng4" value="" size="30"><select name="sex4">
                <option value=""></option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age4" value="" size="5"><select name="type4">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				Seat <select name="seat4">
				<option value="lower">lower</option>
				<option value="middle">middle</option>
				<option value="upper">upper</option>
				<option value="sidelower">side lower</option>
				<option value="sideupper">side upper</option>
				</select></td>
				 
</tr>
<tr>
<td>5<input type="text" name="passeng5" value="" size="30"><select name="sex6">
                <option value=""></option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age5" value="" size="5"><select name="type5">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				Seat <select name="seat5">
				<option value="lower">lower</option>
				<option value="middle">middle</option>
				<option value="upper">upper</option>
				<option value="sidelower">side lower</option>
				<option value="sideupper">side upper</option>
				</select></td>
				 
</tr>
<tr>
<td>6<input type="text" name="passeng6" value="" size="30"><select name="sex6">
                <option value=""></option>
				<option value="male">male</option>
				<option value="female">female</option><input type="text" name="age6" value="" size="5"><select name="type6">
				<option value="male">male</option>
				<option value="women">women</option>
				<option value="child below 5 year ">child below 5 year</option>
				<option value="student">student</option>
				<option value="senior citizen">senoir citizen</option>
				<option value="Handicapped">Handicapped</option>
				Seat <select name="seat6">
				<option value="lower">lower</option>
				<option value="middle">middle</option>
				<option value="upper">upper</option>
				<option value="sidelower">side lower</option>
				<option value="sideupper">side upper</option>
				</select></td>
				 
</tr>
</tbody>
</table >
</form>
<br/>
<form name ="xxxx" method="post" >
<table border="1" cellpadding="" cellspacing="0" align="center">
<tr>
<td>Name of the applicant<input type="text"  name="name" size=20></td> 
<tr><td>Mobile Number<input type="text" name="mobile" size="20"></td></tr>
<tr><td>Address<input type="textarea" name="address" size="30"></td></tr>
<tr><td> Date<select name="datk">
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
			</select> 
			<select name="Year">
				<option value="00">YY</option>
				<option value="2011">2011</option>
				<option value="1992">1992</option>
				<option value="1991">1991</option>
				<option value="1990">1990</option>
				<option value="1989">1989</option>
				<option value="1988">1988</option>
				<option value="1987">1987</option>
			</select></tr>
<tr><td>Time<input type="text" size="4" name="kimes"><select name="time">
				<option value="am">am</option>
				<option value="pm">pm</option>
				</select>

               </td></tr>
			                                                                                
</table>
<table border="1" align="center">
<tr>
<td>
<input type="submit" value="submit"  name="submit"  >
</td></tr>
</table>
</form>
<div id="Layer5"
	style="position: absolute; z-index: 7; width: 364px; height: 100px; top: 175px; left: 633px"></div><div id="Layer1"
	style="position: absolute; z-index: 6; width: 1362px; height: 65px; top: 610px; left: 0px; background-color: #119999"><table
	border="0" cellpadding="2" cellspacing="2" width="1398" height="35">
	<tbody>
		<tr>
			<td align="center" width="126"><font color="RED" size="4"><a
				href="jadoo.jsp">Home</a></font></td>
			<td align="center" width="153"><font color="#ffffff" size="4"><a
				href="about.html">About</a></font></td>
			<td align="center" width="126"><font color="#ffffff" size="4"><a
				href="privacy.html" target="_blank">Privacy</a></font></td>
			<td align="center" width="126"><font color="#ffffff" size="4"><a
				href="tnc.html">Terms &amp; Conditions</a></font></td>
			<td align="left" width="126"><font color="#ffffff" size="4"><a
				href="help.html" target="_blank">Help</a></font></td>
                        <td align="left" width="126"><font color="#ffffff" size="4"><a
				href="gallery.html" target="_blank">gallery</a></font></td>
		</tr>
	</tbody>
</table>
</div>

</body>
</html>