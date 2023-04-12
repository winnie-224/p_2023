<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
image5.src="images/5.jpg"
//-->

</script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Payment</title>

</head>

<body>

<%

  if(request.getParameter("crdtype")!=null && request.getParameter("cardnum")!=null && request.getParameter("pin")!=null && request.getParameter("name")!=null && request.getParameter("validity")!=null)
  {
  
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","shree");  	        
	   PreparedStatement stmt=con.prepareStatement("insert into bankpay(crdtype,cardnum,pin,name,validity)values (?,?,?,?,?)");
       stmt.setString(1,request.getParameter("crdtype"));
	   stmt.setString(2,request.getParameter("cardnum"));
	   stmt.setString(3,request.getParameter("pin"));
	   stmt.setString(4,request.getParameter("name"));
	   stmt.setString(5,request.getParameter("validity"));
	   stmt.execute(); 
 }

%>
<div style="position: absolute; z-index: 5; 
width: 250px; height: 500px; top: 100px; left: 0px;"	>
<a href="javascript:slidelink()">
<img src="images/bann1.jpg" name="slide" border="0" width=100% height=570/></a>
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
</script>
<div id="layer1"style="position: absolute; z-index: 5; 

width: 1348px; height: 65px; top: 0px; left: 0px;"	>
<img src="header.jpg" alt="logo" width="1348" height="71" /></div>

<div id="layer2" style="position: absolute; z-index: 5; width: 500px; height: 500px; top: 200px; left: 470px;"align="center">
  <form id="form1" name="form1" method="post" action="">
    <table width="338" border="0">
      <tr>
        <td width="100">Card Type </td>
        <td width="228"><label>
          <select name="crdtype"><option>VISA</option>
<option>MAESTRO</option>
<option>MASTERCARD</option>
          </select>
        </label></td>
      </tr>
      <tr>
        <td>Card Number</td>
        <td><input type="text" name="cardnum" /></td>
      </tr>
      <tr>
        <td>PIN</td>
        <td><input type="password" name="pin" /></td>
      </tr>
      <tr>
        <td>Holder's Name </td>
        <td><input type="text" name="name" /></td>
      </tr>
      <tr>
        <td>Valid Till</td>
        <td><input type="text" name="validity" /> 
        (mm-yyyy) </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Pay" value="PAY" /></td>
      </tr>
    </table>
  </form>
</div>
<div id="layer3" style="position: absolute; z-index: 5; 
width: 1366px; height: 100px; top: 70px; left: 0px; 
"align="center"><h1><strike><blink>MAKE PAYMENT</blink></strike></h1></div>
</body>
</html>
