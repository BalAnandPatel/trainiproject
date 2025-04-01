<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// get database connection
include_once '../../config/database.php';
include_once '../../objects/paymentdetails.php';
  
$database = new Database();
$db = $database->getConnection();
  
$update_paymentDetails = new paymentdetails($db);
  
// get posted data
$data = json_decode(file_get_contents("php://input"));
 //print_r($data);
// mavarke sure data is not empty
if(1
    // !empty($data->id) &&
    // !empty($data->password)
)

{
    $update_paymentDetails->orderId=$data->orderId;
    $update_paymentDetails->amount=$data->amount;
    $update_paymentDetails->refundId=$data->rfundId;
    $update_paymentDetails->paymentMode=$data->paymentMode;
    $update_paymentDetails->status=$data->status;

    if($update_paymentDetails->updatepaymentdetails()){
  
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
        echo json_encode(array("message" => "Unable to Approve user"));
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