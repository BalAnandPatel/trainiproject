<?php
// required headers
header("Access-Control-Allow-Origin:*");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
//database connection will be here

// include database and object files
include_once '../../config/database.php';
include_once '../../objects/category.php';
include_once '../../constant.php';


  
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
//print_r($db);
  
// initialize object
$read_category = new Category($db);
  
$data = json_decode(file_get_contents("php://input"));
//print_r($data);
 $read_category->id = $data->id;
$getHeaders = apache_request_headers();
//print_r($getHeaders);
$jwt = "123";

if($jwt){

    try {

        //  $decoded = JWT::decode($jwt, $SECRET_KEY, array('HS256'));
// 
// $read_allusers->status = $data->status;
// $read_allusers->userId = $data->userId;

 //print_r($data);

$stmt = $read_category->readCategorybyId();
//print_r($stmt);
$num = $stmt->rowCount();
//print_r($num);
  
// check if more than 0 record found
if($num>0){
  
    // products array
    $read_category_arr=array();
    $read_category_arr["records"]=array();


    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
     
        extract($row);
       // print_r($row);
  
        $read_category_item=array(

            
            "name"=>$name,
            "id"=>$id,
            "cgst"=>$cgst,
            "sgst"=>$sgst,
            "commision"=>$commision,
            "description"=>$description
            );
  
        array_push($read_category_arr["records"], $read_category_item);
    }

    // show products data in json format
    echo json_encode($read_category_arr);

     // set response code - 200 OK
     http_response_code(200);
}
  
}
catch (Exception $e){
    // print_r($e);
          http_response_code(401);
      
          echo json_encode(array(
              "message" => "Access denied.",
              "error" => $e->getMessage()
          ));
      }
      
  }
// no products found will be here
else{
  
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user no products found
    echo json_encode(
        array("message" => "No user list found.")
    );
}
?>