<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// get database connection
include_once '../../config/database.php';
include_once '../../objects/deliveryBoy.php';
  
$database = new Database();
$db = $database->getConnection();
  
$update_delivery = new DeliveryBoy($db);
  
// get posted data
$data = json_decode(file_get_contents("php://input"));
$update_delivery->id=$data->id;
 //print_r($data);
// mavarke sure data is not empty
if(1
    // !empty($data->id) &&
    // !empty($data->password)
)

{
    $update_delivery->name=$data->name;
    $update_delivery->workingAddress=$data->workingAddress;
    $update_delivery->workingPincode=$data->workingPincode;
    $update_delivery->city=$data->city;
    $update_delivery->status=$data->status;
    $update_delivery->aadhar=$data->aadhar;
    $update_delivery->pan=$data->pan;
    $update_delivery->regidenceAddress=$data->regidenceAddress;
    $update_delivery->email=$data->email;
    $update_delivery->updatedOn=$data->updatedOn;
    $update_delivery->updatedBy=$data->updatedBy;

    if($update_delivery->updateDelivery()){
  
        // set response code - 201 created
        http_response_code(201);
  
        // tell the user
        echo json_encode(array("message" => "Update successfully"));
    }
  
    // if unable to create the reg, tell the user
    else{
  
        // set response code - 503 service unavailable
        http_response_code(503);
  
        // tell the user
        echo json_encode(array("message" => "Update Not Done"));
    }
}
  
// tell the user data is incomplete
else{
  
    // set response code - 400 bad request
    http_response_code(400);
  
    // tell the user
    echo json_encode(array("message" => "Unable to Approve user. Data is incomplete."));
}
?>