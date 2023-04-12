<?php
require_once('connection.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
if($_SERVER['REQUEST_METHOD']==='POST') {
    $data = json_decode(file_get_contents("php://input", true));
    $sql = "SELECT MAX(homeid) AS max FROM estate_details";
    $result=dbQuery($sql);
    $row=dbFetchAssoc($result);
    $x = $row['max']+1;
    $address = $data->address;
    $zip = $data->zip;
    $type = $data->type;
    $price = $data->price;
    $owner = $data->owner;
    $status = $data->status;
    $agentid = $data->agentid;
    $sql = "INSERT INTO estate_details VALUES('$x','$address','$zip','$type','$price','$agentid')";
    dbQuery($sql);
    $sql = "INSERT INTO estate_owner VALUES('$owner','$x')";
    dbQuery($sql);
    $sql = "INSERT INTO estate_status VALUES('$status','$x')";
    dbQuery($sql);
    
}