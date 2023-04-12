<?php
require_once('connection.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
if($_SERVER['REQUEST_METHOD'] === 'GET' &&isset($_GET['sortby'])){
    $filter = $_GET['sortby'];
   // $sql = "SELECT  estate_details.homeid, estate_details.address, estate_details.zip, estate_details.type,estate_details.price,estate_details.agentid, estate_owner.name, estate_status.status FROM estate_details 
    //INNER JOIN estate_status ON estate_status.homeid = estate_details.homeid 
    //INNER JOIN estate_owner ON estate_owner.homeid = estate_details.homeid ORDER BY estate_details.".$filter." DESC";
    $sql = "SELECT estate_details.homeid, estate_details.address, estate_details.zip, estate_details.type,estate_details.price, estate_owner.name, estate_status.status,agent_details.agent_name FROM estate_details 
    INNER JOIN estate_status ON estate_status.homeid = estate_details.homeid  
    INNER JOIN estate_owner ON estate_owner.homeid = estate_details.homeid
    INNER JOIN agent_details ON agent_details.agentid = estate_details.agentid ORDER BY estate_details.".$filter." DESC";
     $results = dbQuery($sql);
     $rows=array();
	while($row = dbFetchAssoc($results)){
        $rows[] = $row;
    }
    echo json_encode($rows);
}
else  {
    //$sql = "SELECT  estate_details.homeid, estate_details.address, estate_details.zip, estate_details.type,estate_details.price,estate_details.agentid, estate_owner.name, estate_status.status FROM estate_details 
    //INNER JOIN estate_status ON estate_status.homeid = estate_details.homeid 
    //INNER JOIN estate_owner ON estate_owner.homeid = estate_details.homeid";
    $sql = "SELECT  estate_details.homeid, estate_details.address, estate_details.zip, estate_details.type,estate_details.price, estate_owner.name, estate_status.status,agent_details.agent_name FROM estate_details 
    INNER JOIN estate_status ON estate_status.homeid = estate_details.homeid  
    INNER JOIN estate_owner ON estate_owner.homeid = estate_details.homeid
    INNER JOIN agent_details ON agent_details.agentid = estate_details.agentid";
    
    $results = dbQuery($sql);
    $rows=array();
	while($row = dbFetchAssoc($results)){
        $rows[] = $row;
    }
    echo json_encode($rows);
}
?>