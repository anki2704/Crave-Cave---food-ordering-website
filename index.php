<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HOME | Crave Cave</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

  <style>
    body {
      background: linear-gradient(to right,rgb(143, 121, 252),rgb(55, 135, 239));
      font-family: 'Poppins', sans-serif;
      color: #333;
      margin: 0;
      padding: 0;
    }

    .navbar-brand {
      font-family: 'Pacifico', cursive;
      font-size: 28px;
    }

    .wide {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 80px 20px 60px;
  background: url('images/food-bg.jpg') center center/cover no-repeat;
  background-attachment: fixed;
  color: white;
}


    .logo-img {
      width: 130px;
      height: auto;
    }

    .tagline {
      font-size: 36px;
      color: #ffffff;
      text-shadow: 2px 2px 5px #2e7d32;
      font-family: 'Pacifico', cursive;
      margin-top: 10px;
    }

    .orderblock {
      border-radius: 25px;
      border: 2px solid #73AD21;
      padding: 20px;
      margin: 20px auto;
      width: 90%;
      max-width: 600px;
      text-align: center;
      background: #ffffffcc;
    }

    @media (max-width: 600px) {
      .tagline {
        font-size: 24px;
      }

      .logo-img {
        width: 100px;
      }
    }
  </style>
</head>

<body>

  <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.php">Crave Cave</a>
      </div>

      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class="active"><a href="index.php">Home</a></li>
          <li><a href="aboutus.php">About</a></li>
          <li><a href="contactus.php">Contact Us</a></li>
        </ul>

<?php
if (isset($_SESSION['login_user1'])) {
?>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
          <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
          <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
        </ul>
<?php
} elseif (isset($_SESSION['login_user2'])) {
?>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
          <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
          <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart 
            (<?php echo isset($_SESSION["cart"]) ? count($_SESSION["cart"]) : "0"; ?>)
          </a></li>
          <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
        </ul>
<?php
} else {
?>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="customersignup.php">User Sign-up</a></li>
              <li><a href="managersignup.php">Manager Sign-up</a></li>
            </ul>
          </li>

          <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="customerlogin.php">User Login</a></li>
              <li><a href="managerlogin.php">Manager Login</a></li>
            </ul>
          </li>
        </ul>
<?php
}
?>
      </div>
    </div>
  </nav>

  <!-- Header Section -->
  <div class="wide">
    <img src="images/LogoImage.png" class="logo-img" alt="Cafe Logo">
    <h1 class="tagline">Good Food is Good Mood</h1>
  </div>

  <!-- Call to Action Section -->
  <div class="orderblock">
    <h2><i>Feeling Hungry?</i></h2>
    <a class="btn btn-success btn-lg" href="customerlogin.php" role="button">Order Now</a>
  </div>

  <!-- Scripts -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

</body>
</html>
