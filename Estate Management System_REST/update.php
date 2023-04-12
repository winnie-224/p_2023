<?php
require_once('connection.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT");
if($_SERVER['REQUEST_METHOD'] === "PUT") {
    $data = json_decode(file_get_contents("php://input", true));
    $id = $data->id;
    $address = $data->address;
    $owner = $data->owner;
    $status = $data->status;
    $zip = $data->zip;
    $type = $data->type;
    $price = $data->price;
    $agentid = $data->agentid;
    $sql = "UPDATE estate_details SET address = '$address', zip = '$zip', price = '$price', type= '$type', agentid = '$agentid' WHERE homeid = '$id'";
    dbQuery($sql);
    $sql = "UPDATE estate_owner SET name = '$owner' WHERE homeid = '$id'";
    dbQuery($sql);
    $sql = "UPDATE estate_status SET status = '$status' WHERE homeid = '$id'";
    dbQuery($sql);
}