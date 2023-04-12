<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="images/icon.ico" />
<body>
<?php include('db.inc'); ?>
<div id="headWrap">
 <div id="headpanel">
  <div id="logo"><h1>dusky</h1></div>
  <!--<div id="quots">Neque porro quisquam est qui , consectetur, adipisci velit..."</div>-->
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
