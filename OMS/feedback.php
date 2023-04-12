  <?php
include('tabs.php');
?>
<table align=center>
<tr><td style="vertical-align:top"><img src="images/feedback.jpg" width="150" height="100" alt="FEEDBACK" /></td>
<td>
<form method=post action="savefeedback.php">
<table width="525" height="397" border="0" align="center" style="border:1px outset;" cellpadding="4">
  <tr>
    <th bgcolor="#EE6363" colspan="2"><div align="left">FEEDBACK</div></th>
  </tr>
   <tr>
    <td bgcolor="#CCCCCC" colspan="2">  <div align="center"> DETAILS</div></td>
  </tr>

  
  <tr>
    <td width="138">FIRST NAME </td>
    <td><input type=text name=fname></td>
  </tr>
  <tr>
    <td>LAST NAME </td>
    <td><input type=text name=lname></td>
  </tr>
  <tr>
    <td>EMAIL ID </td>
    <td><input type=text name=eid></td>
  </tr>
  <tr>
    <td>CONTACT NUMBER</td>
    <td><input type=text name=contact></td>
  </tr>
  <tr>
    <td>SUBJECT</td>
    <td><?php 
echo "<select name=subject><option>--select subject--</option>";
echo "<option value=r1>Mobile Phone</option>";
echo "<option value=r2>Accessories</option>";
echo "<option value=r3>Operator Services</option>";
echo "<option value=r4>Online Shopping</option>";
echo "<option value=r5>Services related</option>";
echo "<option value=r6>Repair and Services</option>";
echo "<option value=r7>Site Functionality</option>";
echo "<option value=r8>Miscellaneous</option>";
echo "</select>";
?></td>
  </tr>
  <tr>
    <td colspan=2 bgcolor="#CCCCCC"><div align="center">FEEDBACK</div></td>
  </tr>
  <tr>
    <td>ORDER NUMBER </td>
    <td><input type=text name=order></td>
  </tr>
  <tr>
    <td>FEEDBACK</td>
    <td><textarea name="fd"></textarea></td>
  </tr>
<tr><td colspan=2 align=center><input type=Submit value=Submit name=submit><br><br></tr>
</table></form></td>
</tr></table>

</body>
</html>
