<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "ems";
$dbConn = mysqli_connect($dbhost, $dbuser,$dbpass,$db) or die('DB connection failed');
function dbQuery($sql) {
    global $dbConn;
	$result = mysqli_query($dbConn, $sql) or die(mysqli_error($dbConn));
	return $result;
}
function dbFetchAssoc($result) {
	return mysqli_fetch_assoc($result);
}
function closeConn() {
	global $dbConn;
	mysqli_close($dbConn);
}
?>
