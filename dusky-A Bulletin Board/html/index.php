﻿<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dusky World</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="images/icon.ico" />
</head>
<?php include('db.inc');
?>
<body>
<div id="headWrap">
 <div id="headpanel">
  <div id="logo"><h1>dusky</h1></div>
  <div id="menu">
<br><br><br>
   <ul>
    <li><a href="index.php">Home</a></li>
    <li><div class="gap"></div></li>
    <li><a href="contact.php">Contact Us</a></li>
    <li><div class="gap"></div></li>
    <li><a href="search.php?feed=national">National</a></li>
    <li><div class="gap"></div></li>
<li><a href="search.php?feed=international">International</a></li>
    <li><div class="gap"></div></li>
    <li><a href="search.php?feed=sports">Sports</a></li>
    <li><div class="gap"></div></li>
    <li><a href="search.php?feed=business">Business</a></li>
    <li><div class="gap"></div></li>
    <li><a href="search.php?feed=entertainment">Entertainment</a></li>
    <li><div class="gap"></div></li>
    <li><a href="#">Communities</a></li>
    <li><div class="gap"></div></li>
    <li><a href="help.php">Help</a></li>
<?php 
  session_start();
      if(isset($_SESSION['uname']))
echo "<li><div class='gap'></div></li><li><a href='signout.php'>Signout</a></li>";
?>
   </ul>
  </div>
 </div>
</div>
<div id="contentWrap">
 <div id="contentPanel">
  <div id="leftPanel">
   <div class="toplinks">
   <h2>Enter new world</h2>
   <h3></h3>
   <p>Welcome to the world of Dusky...</p>
    <ul>
     <li><a href="#">Latest News</a></li>
     <li><a href="#">Entertainment</a></li>
     <li><a href="#">Sports</a></li>
     <li><a href="#" class="bottom">Games</a></li>
    </ul>
   </div>
   <div id="loginPanel">
<?php
//session_start(); 
if(isset($_SESSION['uname']))
{
 echo "<h2>Welcome ".$_SESSION['uname'];
 echo "<br><h3>Click to view your <a href=account.php?profile>account</a>!";
 echo "<br><h3><a href='signout.php?user=".$_SESSION['id']."'>Sign out!</a>";
}
else
{ 
echo "<h2>User Login</h2>
    <h3>Join Dusky to customize a free avatar, decorate a virtual home, play games with friends, join forums, create topics and much more.

Joining is free and only takes a minute!</h3>
<form name=form1 method=post action=signin.php>
    <input name='name' type='text' value='Name'  onfocus= 'if(this.value=='Name') this.value=' ' ;' onblur='if(this.value==' ') this.value='Name' ;' >
     <div class='blank'></div>
    <input name='password' type='text' value='Password' onfocus='if(this.value=='Password')this.value='' onblur='if(this.value=='')this.value='Password''/>
    <p>Not yet a Member? <a href='register.php'>Register Now</a></p>
 <input type=submit name=login></form>";

} ?>
</div>
   <div id="projectsPanel">
    <h2>Create Your own Avatar!</h2>
    <h3></h3>
    <div><img src=images/avatars.jpg height=30% width=100%></div>
     <div class="blank"></div>
    <div></div>
   </div>
  </div>
  <div id="middlePanel">
   <div class="top">
    <h2>Hello there!</h2>
   <p><span>

Welcome to <i><font color="green">Dusky</font> !</i> Since you may not have heard that much about us, I thought I'd give you a short introduction.

If you prefer to sign in right away using your email address and the password you picked when signing up.
   
   </div>
   <div class="bottom">
   <h2>Latest News</h2>
   <h3>Have access to news from all around the world </h3>
   <div class="pic3"></div>
   <ul>
    <li><a href="search.php?feed=Sports">Sports</a></li>
    <li><a href="search.php?feed=Business">Business</a></li>
    <li><a href="search.php?feed=National">National</a></li>    
     <li><a href="search.php?feed=International">International</a></li>
     <li><a href="search.php?feed=Entertainment">Entertainment</a></li>
   </ul>
<br>
<h2>Community</h2>
   <h3>Join best of the communities here </h3>
   <ul>
<?php 
$rst=mysql_fetch_array(mysql_query("select max(comm_id) from community"));
$x=$rst[0]-3;
//echo "<li>".$x;
$st="select * from community where comm_id between ".$x." and ".$rst[0];
$rst=mysql_query($st);
//echo "<li>".$rst;
  while($row=mysql_fetch_array($rst))
   echo "<li><a href=' '>".$row['name']."</a></li>"; ?>
    <!--<li><a href="#">Pellentesque habitant morbi tristique senectus</a></li>
    <li><a href="#">Nulla bibendum eros sed ultrices sollicitudin</a></li>
    <li><a href="#" class="bottom">Sed adipiscing orci metus vestibulum nibh</a></li>-->
   </ul>
  </div>
  </div>
  <div id="rigtPanel">
   <div class="services">
    <h2>Create your own community</h2>
   <h3>Vestibulum ante ipsum primis in faucibus orci luctus etucibus ultrices posuere cubilia Curae.</h3>
   <div class="pic3"></div>
   <ul>
    <li><a href="#">Maecenas pellentesque ipsum in pedec urabitur</a></li>
   
    <li><a href="#" class="bottom">Sed adipiscing orci metus vestibulum nibh</a></li>
   </ul>
       <h2>New Users</h2>
   <h3>Vestibulum ante ipsum primis in faucibus orci luctus etucibus ultrices posuere cubilia Curae.</h3>
   <div class="pic3"></div>
   <ul>
    <li><a href="#">Maecenas pellentesque ipsum in pedec urabitur</a></li>
    <li><a href="#">Pellentesque habitant morbi tristique senectus</a></li>
    <li><a href="#">Nulla bibendum eros sed ultrices sollicitudin</a></li>
    <li><a href="#" class="bottom">Sed adipiscing orci metus vestibulum nibh</a></li>
   </ul>
   <div class="contacts">
    <h2>Quick Contact</h2>
    <input name="name" type="text" value="Your Name" onfocus="if(this.value=='Your Name')this.value=''" onblur="if(this.value=='')this.value='Your Name'"/>
    <input name="email" type="text" value="Your E-mail Address" onfocus="if(this.value=='Your E-mail Address')this.value=''" onblur="if(this.value=='')this.value='Your E-mail Address'"/>
    <textarea name="txt_msg"  rows="" cols="" onfocus="if(this.value=='Put your message here')this.value=''" onblur="if(this.value=='')this.value='Put your message here'">Put your message here</textarea>
    <a href="#">Submit</a>
   </div>
  </div>
 </div>
</div>
<div id="footWrap">
 <div id="footPanel">
  <div id="footNav">
   <ul>
    <li><a href="#">Home</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">About Us</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">Newsletter</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">Duty</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">Output</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">Solution</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">Testimonial</a></li>
    <li><div class="blank">|</div></li>
    <li><a href="#">Contact Us</a></li>
   </ul>
  </div>
  
  </div>
 </div>
</div>
</body>
</html>
