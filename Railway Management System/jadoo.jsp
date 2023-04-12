<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Header</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Software Architect">
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script type="text/javascript">
<!--
//preload images
var image1=new Image()
image1.src="images/11.jpg"
var image2=new Image()
image2.src="images/16.jpg"
var image3=new Image()
image3.src="images/13.jpg"
var image4=new Image()
image4.src="images/14.jpg"
var image5=new Image()
image5.src="images/16.jpg"
//-->
</script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
</head>

</head>
<body>
<ul id="MenuBar2" class="MenuBarHorizontal">
  <li><a class="MenuBarItemSubmenu" href="#">Item 1</a>
    <ul>
      <li><a href="#">Item 1.1</a></li>
      <li><a href="#">Item 1.2</a></li>
      <li><a href="#">Item 1.3</a></li>
    </ul>
  </li>
  <li><a href="#">Item 2</a></li>
  <li><a class="MenuBarItemSubmenu" href="#">Item 3</a>
    <ul>
      <li><a class="MenuBarItemSubmenu" href="#">Item 3.1</a>
        <ul>
          <li><a href="#">Item 3.1.1</a></li>
          <li><a href="#">Item 3.1.2</a></li>
        </ul>
      </li>
      <li><a href="#">Item 3.2</a></li>
      <li><a href="#">Item 3.3</a></li>
    </ul>
  </li>
  <li><a href="#">Item 4</a></li>
</ul>
<table border="0">
<tr>
<div id="Layer0" style="position: absolute; z-index: absolute; width: 200px; height: 200px; top: 200px; left:50px; ""
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
<div id="Layer4"
	style="position: absolute; z-index: 5; width: 1362px; height: 0px; top: 0px; left: 0px; background-color: #119999""
	align="center"><font color="#ffffff" face="Papyrus" size="+1"><b>ONLINE RAILWAYRESRVATION</b></font><br>
<font color="#ffffff" face="" size="+1"><marquee>HUM MAI HAI RAFTAR..INDIAN RAILWAY TAKING YOUR DREAMS FROM TRACK TO YOUR HEART</marquee></font><font
	color="#ffffff" face=""></font></div>
<div id="Layer2" style="position: absolute; z-index: 7; width: 1193px; height: 50px; top: 66px; left: 170px" align="right"><color="black" size="+1"><b>
  <% String myname = (String)session.getAttribute("rusername");
if(myname!=null) {
out.println("hello "+myname);
}
 else{response.sendRedirect("home.jsp");}
 
%>
<a href="logout.jsp" >sign out</a>
<div id="Layer1"
	style="position: absolute; z-index: 6; width: 1000px; height: 65px; top: 600px; left: 0px; background-color: #119999"><table
	border="0" cellpadding="2" cellspacing="2" width="1398" height="35">
	<tbody>
		<tr>
			<td align="center" width="126"><font color="RED" size="4"><a
				href="home.jsp">Home</a></font></td>
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

</body>
</html>
