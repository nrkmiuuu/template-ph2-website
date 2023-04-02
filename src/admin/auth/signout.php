<?php

session_start();
$_SESSION = array();
session_destroy();
header('Location: /index.php');


// header("Access-Control-Allow-Origin: *");
// header("Content-Type: application/json; charset=utf-8");
// http_response_code(204);