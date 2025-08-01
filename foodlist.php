<?php
session_start();
require 'connection.php';
$conn = Connect();

if (!isset($_SESSION['login_user2'])) {
    header("location: customerlogin.php");
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Food Menu | Crave Cave</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  <link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(to right,rgb(110, 174, 170) 0%,rgb(71, 77, 176) 100%);
      font-family: 'Poppins', sans-serif;
      padding-top: 70px;
    }
    .navbar-brand {
      font-family: 'Pacifico', cursive;
      font-size: 28px;
    }
    .mypanel {
      background: #fff;
      border-radius: 10px;
      padding: 15px;
      margin-bottom: 20px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .mypanel img {
      height: 180px;
      width: 100%;
      object-fit: cover;
      border-radius: 10px;
    }
    .filter-section {
      margin: 20px auto;
      text-align: center;
    }
    .form-control {
      max-width: 300px;
      margin: auto;
      display: inline-block;
    }
.glow-heading {
  font-family: 'Satisfy', cursive;
  font-size: 36px;
  text-align: center;
  color: #ff4081;
  text-shadow: 
    0 0 5px #ff4081,
    0 0 10px #ff4081,
    0 0 20px #ff4081,
    0 0 30px #ff69b4;
  animation: glow 1.5s ease-in-out infinite alternate;
}

@keyframes glow {
  from {
    text-shadow: 0 0 5px #ff69b4, 0 0 10px #ff4081;
  }
  to {
    text-shadow: 0 0 20px #ff69b4, 0 0 30px #ff4081;
  }
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
        <li class="active"><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone</a></li>
        <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart (
          <?php echo isset($_SESSION["cart"]) ? count($_SESSION["cart"]) : "0"; ?> )
        </a></li>
        <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Carousel -->
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top: 20px;">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
      <img src="images/slide001.jpg" style="width:100%;">
    </div>
    <div class="item">
      <img src="images/slide002.jpg" style="width:100%;">
    </div>
    <div class="item">
      <img src="images/slide003.jpg" style="width:100%;">
    </div>
  </div>

  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>

<!-- Jumbotron -->
<div class="jumbotron text-center">
  <!-- <h2><b><i>Welcome To Crave Cave</i></b></h2> -->
  <!-- <h1 style="font-family: 'Caveat', cursive; text-align:center; color:rgb(94, 66, 170); text-shadow: 0 0 5px #fff;">
  <b><i>Welcome To Crave Cave</i></b> -->
<!-- </h1> -->
 <h1 style="font-family: 'Satisfy', cursive; text-align:center; color:rgb(94, 66, 170); text-shadow: 0 0 5px #fff;" class="glow-heading">Welcome To Crave Cave</h1>


</div>

<!-- Category Filter -->
<div class="container filter-section">
  <form method="get" action="foodlist.php" class="form-inline">
    <label for="category"><strong>Filter by Category:</strong></label>
    <select name="category" id="category" class="form-control" onchange="this.form.submit()">
      <option value="">-- All Categories --</option>
      <option value="Beverages" <?php if (isset($_GET['category']) && $_GET['category'] == 'Beverages') echo 'selected'; ?>>Beverages</option>
      <option value="Starter - Veg" <?php if (isset($_GET['category']) && $_GET['category'] == 'Starter - Veg') echo 'selected'; ?>>Starters (Veg)</option>
      <option value="Starter - Non-Veg" <?php if (isset($_GET['category']) && $_GET['category'] == 'Starter - Non-Veg') echo 'selected'; ?>>Starters (Non-Veg)</option>
      <option value="Main Course - Veg" <?php if (isset($_GET['category']) && $_GET['category'] == 'Main Course - Veg') echo 'selected'; ?>>Main Course (Veg)</option>
      <option value="Desserts" <?php if (isset($_GET['category']) && $_GET['category'] == 'Desserts') echo 'selected'; ?>>Desserts</option>
      <option value="Pizza" <?php if (isset($_GET['category']) && $_GET['category'] == 'Pizza') echo 'selected'; ?>>Pizza</option>
      <option value="Snacks" <?php if (isset($_GET['category']) && $_GET['category'] == 'Snacks') echo 'selected'; ?>>Snacks</option>
    </select>
  </form>
</div>

<!-- Food Display -->
<div class="container" style="width: 95%;">
  <?php
  $categoryFilter = "";
  if (isset($_GET['category']) && $_GET['category'] !== '') {
    $category = mysqli_real_escape_string($conn, $_GET['category']);
    $categoryFilter = "AND category = '$category'";
  }

  $sql = "SELECT * FROM FOOD WHERE options = 'ENABLE' $categoryFilter ORDER BY F_ID";
  $result = mysqli_query($conn, $sql);

  if (mysqli_num_rows($result) > 0) {
    $count = 0;
    echo "<div class='row'>";
    while ($row = mysqli_fetch_assoc($result)) {
  ?>
      <div class="col-md-3">
        <form method="post" action="cart.php?action=add&id=<?php echo $row["F_ID"]; ?>">
          <div class="mypanel text-center">
            <img src="<?php echo $row["images_path"]; ?>" class="img-responsive">
            <h4 class="text-dark"><?php echo $row["name"]; ?></h4>
            <h5 class="text-muted"><?php echo $row["description"]; ?></h5>
            <h5 class="text-danger">₹<?php echo $row["price"]; ?>/-</h5>
            <h5>Qty: <input type="number" name="quantity" min="1" max="25" value="1" class="form-control" style="width: 60px; display: inline-block;"></h5>
            <input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>">
            <input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>">
            <input type="hidden" name="hidden_RID" value="<?php echo $row["R_ID"]; ?>">
            <input type="submit" name="add" class="btn btn-success" value="Add to Cart">
          </div>
        </form>
      </div>
  <?php
      $count++;
      if ($count % 4 == 0) echo "</div><div class='row'>";
    }
    echo "</div>";
  } else {
  ?>
    <div class="jumbotron text-center">
      <h2 style="color:red;">Oops! No food is available.</h2>
      <p>Try another category or check back later.</p>
    </div>
  <?php
  }
  ?>
</div>

<!-- Scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
