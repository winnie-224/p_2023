<?php
if (!$_GET['content']=="") {
        
	$sofar=$_GET['content'];
            
	$mysqlusername="test";
	$mysqlpassword="test";
	mysql_connect(localhost, $mysqlusername, $mysqlpassword) or die ('Error connecting to mysql server: '.mysql_error());
	$dbname = 'test';
	mysql_select_db($dbname) or die ('Error selecting specified database on mysql server: '.mysql_error());
                
	$suggestionquery="SELECT Name FROM Country WHERE Name LIKE '$sofar%' LIMIT 1";
                
	$suggestionresult=mysql_query($suggestionquery) or die('aaagh: '.mysql_error());
                
	$suggestionline=mysql_fetch_array($suggestionresult);
                
	$suggestion=$suggestionline['Name'];
                
	if ($suggestion==""){
		echo "There are no matching countries - have you spelled this correctly?";
	} else {
		echo $suggestion;
	}
}
?>
        
