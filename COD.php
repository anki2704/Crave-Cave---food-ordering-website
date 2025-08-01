<?php
session_start();
require 'connection.php';
$conn = Connect();

if (!isset($_SESSION['login_user2']) || !isset($_SESSION['cart'])) {
    header("location: customerlogin.php");
    exit();
}

// Save COD orders to the database
if (isset($_SESSION["cart"]) && is_array($_SESSION["cart"])) {
    foreach ($_SESSION["cart"] as $values) {
        $F_ID = $values["food_id"];
        $foodname = $values["food_name"];
        $quantity = $values["food_quantity"];
        $price = $values["food_price"];
        $R_ID = $values["R_ID"];
        $username = $_SESSION["login_user2"];
        $order_date = date('Y-m-d');

        $query = "INSERT INTO ORDERS (F_ID, foodname, price, quantity, order_date, username, R_ID, payment_mode)
                  VALUES ('$F_ID', '$foodname', '$price', '$quantity', '$order_date', '$username', '$R_ID', 'Cash On Delivery')";
        $conn->query($query);
    }
}

// Generate order number
$orderNumber = rand(100000,999999) . rand(100000,999999) . rand(100000,999999);

// Store total before unsetting cart
$grandTotal = 0;
foreach ($_SESSION["cart"] as $item) {
    $grandTotal += $item["food_quantity"] * $item["food_price"];
}

// Copy cart for display
$orderDetails = $_SESSION["cart"];

// Clear cart
unset($_SESSION["cart"]);
?>

<!DOCTYPE html>
<html>
<head>
  <title>Order Success | Crave Cave</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <style>
    body {
      padding-top: 70px;
      background:rgb(160, 148, 211);
      font-family: 'Segoe UI', sans-serif;
    }
    .jumbotron {
      background-color: #dff0d8;
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .list-group-item {
      font-size: 16px;
    }
    .navbar-brand {
      font-weight: bold;
      font-size: 22px;
    }
  </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">Crave Cave</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?></a></li>
        <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone</a></li>
        <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Order Success Message -->
<div class="container text-center">
  <div class="jumbotron">
    <h1><span class="glyphicon glyphicon-ok-circle"></span> Order Placed Successfully!</h1>
    <p>Thank you for ordering at <strong>Crave Cave</strong>. Your Cash On Delivery order has been received.</p>
    <h3><strong>Your Order Number:</strong> <span style="color: blue;"><?php echo $orderNumber; ?></span></h3>
  </div>
</div>

<!-- Order Summary -->
<div class="container">
  <h3 class="text-center">Order Summary</h3>
  <ul class="list-group col-md-6 col-md-offset-3">
    <?php foreach ($orderDetails as $item): ?>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <?php echo $item["food_name"]; ?> × <?php echo $item["food_quantity"]; ?>
        <span class="badge">₹<?php echo $item["food_quantity"] * $item["food_price"]; ?></span>
      </li>
    <?php endforeach; ?>
    <li class="list-group-item active text-right">
      Total Amount: ₹<?php echo $grandTotal; ?> (COD)
    </li>
  </ul>
  <div class="text-center">
    <a href="foodlist.php" class="btn btn-primary">Order More</a>
  </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
