<?php 
require_once('connection.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: DELETE");
if($_SERVER['REQUEST_METHOD']==='DELETE'&& isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "DELETE FROM estate_owner WHERE homeid = '$id'";
    dbQuery($sql);
    $sql = "DELETE FROM estate_status WHERE homeid = '$id'";
    dbQuery($sql);
    $sql = "DELETE FROM estate_details WHERE estate_details.homeid = '$id'";
    dbQuery($sql);

}