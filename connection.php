<?php
function Connect() {
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $dbname = "foodorder";

  $conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  return $conn;
}
?>
