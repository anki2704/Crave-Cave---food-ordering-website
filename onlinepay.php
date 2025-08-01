<?php
session_start();
require 'connection.php';
$conn = Connect();

if (!isset($_SESSION['login_user2']) || !isset($_SESSION['cart'])) {
    header("location: customerlogin.php");
    exit();
}

// Handle payment submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_SESSION["cart"]) && is_array($_SESSION["cart"])) {
        foreach ($_SESSION["cart"] as $keys => $values) {
            $F_ID = $values["food_id"];
            $foodname = $values["food_name"];
            $quantity = $values["food_quantity"];
            $price = $values["food_price"];
            $R_ID = $values["R_ID"];
            $total = $quantity * $price;
            $username = $_SESSION["login_user2"];
            $order_date = date('Y-m-d');

            $query = "INSERT INTO ORDERS (F_ID, foodname, price, quantity, order_date, username, R_ID, payment_mode)
                      VALUES ('$F_ID', '$foodname', '$price', '$quantity', '$order_date', '$username', '$R_ID', 'Online Payment')";
            $conn->query($query);
        }
        unset($_SESSION["cart"]); // clear cart after payment
        header("Location: onlinepay.php?success=true");
        exit();
    }
}
?>

<html>
<head>
    <title>Online Payment | Crave Cave</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #f6d365, #fda085);
            font-family: 'Segoe UI', sans-serif;
            padding-top: 80px;
        }

        .panel-default {
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            transition: 0.3s ease-in-out;
        }

        .panel-default:hover {
            transform: scale(1.01);
        }

        .btn-success {
            background: #28a745;
            border-radius: 25px;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .btn-success:hover {
            background: #218838;
        }

        .btn-danger {
            border-radius: 25px;
        }

        .card-icons img {
            margin: 5px;
            width: 50px;
        }
    </style>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">Crave Cave</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?></a></li>
        <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone</a></li>
        <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart (<?php echo count($_SESSION['cart']); ?>)</a></li>
        <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

<?php if (isset($_GET['success'])): ?>
<div class="container">
    <div class="jumbotron text-center">
        <h1><i class="fa fa-check-circle text-success"></i> Payment Successful!</h1>
        <p>Your order has been placed with <strong>Online Payment</strong>.</p>
        <a href="foodlist.php" class="btn btn-primary">Order More</a>
    </div>
</div>
<?php else: ?>

<div class="container">
    <div class="jumbotron text-center">
        <h1>Online Payment</h1>
        <p>Enter your card details below to complete your order.</p>
    </div>

    <form method="post" action="">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="form-group">
                            <label>Card Number</label>
                            <input type="text" class="form-control" placeholder="1234 5678 9012 3456" required>
                        </div>

                        <div class="row">
                            <div class="col-xs-4">
                                <label>Expiry Month</label>
                                <input type="text" class="form-control" placeholder="MM" required>
                            </div>
                            <div class="col-xs-4">
                                <label>Expiry Year</label>
                                <input type="text" class="form-control" placeholder="YY" required>
                            </div>
                            <div class="col-xs-4">
                                <label>CVV</label>
                                <input type="text" class="form-control" placeholder="123" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Name on Card</label>
                            <input type="text" class="form-control" placeholder="Full Name" required>
                        </div>

                        <div class="checkbox">
                            <label><input type="checkbox" checked> Save card details for fast payments</label>
                        </div>

                        <div class="card-icons text-center">
                            <img src="images/Visa.png" alt="Visa">
                            <img src="images/mastercard.jpg" alt="Mastercard">
                            <img src="images/amex.jpeg" alt="Amex">
                        </div>

                        <div class="row" style="margin-top: 20px;">
                            <div class="col-xs-6">
                                <a href="payment.php" class="btn btn-danger btn-block">Cancel</a>
                            </div>
                            <div class="col-xs-6">
                                <button type="submit" class="btn btn-success btn-block">Pay Now</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<?php endif; ?>

</body>
</html>
