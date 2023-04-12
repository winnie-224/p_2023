<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Payment</title>
</head>
<body>
<div id="Layer0"
	style="position: absolute; z-index: 5; width: 1362px; height: 65px; top: 0px; left: 0px; background-color: #045180"
	align="center"><font color="#ffffff" face="Papyrus" size="+2"><b>MEGHDOOT</b></font><br>
<font color="#ffffff" face="Shusha" size="+1"><marquee>Aapko sapnaao kao saakar krtI maoGadUt Baart kI phlaI AanalaaJna Dak saovaa</marquee></font><font
	color="#ffffff" face="Shusha"></font></div>
<div id="Layer1"
	style="position: absolute; z-index: 7; width: 169px; height: 375px; top: 81px; left: 1px"><table
	border="0" cellpadding="0" cellspacing="0" height="208">
	<tbody>
		<tr>
			<td width="163" valign="middle" align="center"><a href="STAMP.html" target="_self">STAMPS</a></td>
		</tr>
		<tr>
			<td width="163" valign="middle" align="center"><a href="card.html">POSTCARDS</a></td>
		</tr>
		<tr>
			<td width="163" valign="middle" align="center"><a
				href="registry.html">REGISTRY</a></td>
		</tr>
		<tr>
			<td width="163" valign="middle" align="center"><a
				href="speed post.html">SPEEDPOST</a></td>
		</tr>
		<tr>
			<td width="163" valign="middle" align="center"><a href="letter.html">LETTERS</a></td>
		</tr>
		<tr>
			<td width="163" valign="middle" align="center"><a
				href="investment.html">INVESTMENTS</a></td>
		</tr>
		<tr>
			<td width="163" valign="middle" align="center">SHOPPING CART</td>
		</tr>
	</tbody>
</table>
</div>
<div id="Layer2"
	style="position: absolute; z-index: 13; width: 641px; height: 190px; top: 212px; left: 269px" align="center"><font
	size="+2" face="Comic Sans MS"><b>The Types of STAMPS 
Available</b></font><br>
<form method="post">
<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="161" align="center">Price Of STAMP</td>
			<td width="155" align="center">Order</td>
			<td width="130"> Amount</td>
		</tr>
		<tr>
			<td width="161" align="center">Rs 0.25</td>
			<td width="155" align="center"><select name="r25paise" id="r25paise">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130"><input type="text" name="amt_025" size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center">Rs 0.50</td>
			<td width="155" align="center"><select name="r50paise" id="r50paise">
			<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
				<option></option>
			</select></td>
			<td width="130"><input type="text" name="amt_050" size="20"
				value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center">Rs 1.00</td>
			<td width="155" align="center"><select name="r1rs" id="r1rs"><option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option></select></td>
			<td width="130"><input type="text" name="amt_1" size="20"
				value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="27">Rs 2.00</td>
			<td width="155" align="center" height="27"><select name="r2rs" id="r2rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="27"><input type="text" name="amt_2"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="27">Rs 3.00</td>
			<td width="155" align="center" height="27"><select name="r3rs" id="r3rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="27"><input type="text" name="amt_3"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="26">Rs 5.00</td>
			<td width="155" align="center" height="26"><select name="r5rs" id="r5rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="26"><input type="text" name="amt_5"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="26">Rs 10.00</td>
			<td width="155" align="center" height="26"><select name="r10rs" id="r10rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="26"><input type="text" name="amt_10"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="28">Rs 15.00</td>
			<td width="155" align="center" height="28"><select name="r15rs" id="r15rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="28"><input type="text" name="amt_15"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="25">Rs 20.00</td>
			<td width="155" align="center" height="25"><select name="r20rs" id="r20rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="25"><input type="text" name="amt_20"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="23">Rs 25.00</td>
			<td width="155" align="center" height="23"><select name="r25rs" id="r25rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="23"><input type="text" name="amt_25"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" height="28">Rs 50.00</td>
			<td width="155" align="center" height="28"><select name="r50rs" id="r50rs">
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="250">250</option>
				<option value="500">500</option>
				<option value="1000">1000</option>
			</select></td>
			<td width="130" height="28"><input type="text" name="amt_50"
				size="20" value="0.0"></td>
		</tr>
		<tr>
			<td width="161" align="center" valign="bottom" height="100"><input type="submit" name="Submit"
				value="Submit"></td>
			<td width="155" align="center" height="100"><font size="+1"><b></b></font><input
				type="submit" name="Total" value="Get Total" onMouseover="javascript:addNumbers()"/></td>
			<td width="130" height="100"><input type="text" name="stamp_total"
				size="20" value="0.0"></td>
		</tr>
	</tbody>
</table></form>
</div>
<div id="Layer4"
	style="position: absolute; z-index: 5; width: 1362px; height: 65px; top: 0px; left: 0px; background-color: #045180"
	align="center"><font color="#ffffff" face="Papyrus" size="+2"><b>MEGHDOOT</b></font><br>
<font color="#ffffff" face="Shusha" size="+1"><marquee>Aapko sapnaao kao saakar krtI maoGadUt Baart kI phlaI AanalaaJna Dak saovaa</marquee></font><font
	color="#ffffff" face="Shusha"></font></div>
<h1 align="center">MEGHDOOT</h1>
<div id="Layer5"
	style="position: absolute; z-index: 6; width: 1362px; height: 50px; top: 690px; left: 0px; background-color: #03456f"><table
	border="0" cellpadding="2" cellspacing="2" width="1398" height="35">
	<tbody>
		<tr>
			<td align="center" width="126"><font color="#ffffff" size="4">Home</font></td>
			<td align="center" width="153"><font color="#ffffff" size="4">About</font></td>
			<td align="center" width="158"><font color="#ffffff" size="4">Privacy</font></td>
			<td align="center" width="283"><font color="#ffffff" size="4">Terms &amp; Conditions</font></td>
			<td align="left" width="676"><font color="#ffffff" size="4">Help</font></td>
		</tr>
	</tbody>
</table>
</div>


</body>
</html>
