<?php
header("Content-Type:application/json");
include('connection.php');
if(isset($_GET['homeid']) && $_GET['homeid']!="") {
    $id = $_GET['homeid'];
    $query = "SELECT * FROM estate_details WHERE homeid = $id";
    $result = mysqli_query($con,$query);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    $estateData['homeid'] = $row['homeid'];
    $estateData['address'] = $row['address'];

    $response["status"] = "true";
    $response["message"] = "Estate Details";
    $response["estates"] = $estateData;

}
else {
    $response["status"] = "false";
    $response["message"] = "No Estate Found";
}
echo json_encode($response);
exit;
?>