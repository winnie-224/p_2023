<html>
<body>
<div id="Layer0"
	style="position: absolute; z-index: 5; width: 1362px; height: 65px; top: 0px; left: 0px; background-color: #045180"
	align="center"><font color="#ffffff" face="Papyrus" size="+2"><b>MEGHDOOT</b></font><br>
<font color="#ffffff" face="Shusha" size="+1"><marquee bgcolor="#045180">Aapko sapnaao kao saakar krtI maoGadUt Baart kI phlaI AanalaaJna Dak saovaa</marquee></font><font
	color="#ffffff" face="Shusha"></font></div>
<div id="layer2" style="position: absolute; z-index: 5; width: 1362px; height: 65px; top: 68px; left: 0px;"align="center">

<%
String rusername=(String)session.getAttribute("rusername");
if(rusername!=null)
{
response.sendRedirect("index.jsp");
session.removeAttribute("rusername");
}else
{
out.println("you are already not loged in go back ");
}


%></body>
</html>