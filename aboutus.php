<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About | Crave Cave</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

  <style>
    body {
      background: linear-gradient(to right, #ffecd2 0%, #fcb69f 100%);
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
      text-align: center;
      padding: 80px 20px 40px;
    }
    .tagline {
      font-size: 32px;
      color: #e94e77;
      text-shadow: 0 0 5px #fff;
      animation: glow 2s infinite alternate;
      font-family: 'Pacifico', cursive;
    }
    @keyframes glow {
      from {
        text-shadow: 0 0 10px #ff9a9e, 0 0 20px #fecfef;
      }
      to {
        text-shadow: 0 0 20px #ff6f91, 0 0 30px #ffc3a0;
      }
    }
    .about-content {
      max-width: 900px;
      margin: auto;
      background: #fff8f0;
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0px 0px 20px #f8c8dc;
    }
    h3 {
      font-family: 'Poppins', sans-serif;
      color: #d63031;
    }
    .logo-img {
      width: 150px;
      margin-bottom: 20px;
    }
    .address-block {
      margin-top: 30px;
      text-align: center;
      padding: 20px;
      background: #fff;
      border-radius: 15px;
      box-shadow: 0 0 10px #e6a4b4;
      max-width: 700px;
      margin-left: auto;
      margin-right: auto;
    }
    .address-block h4 {
      margin-bottom: 10px;
      color: #d63031;
      font-weight: bold;
    }
    .address-block p {
      margin: 0;
      font-size: 15px;
    }
    .social-icons {
      margin-top: 20px;
    }
    .social-icons a {
      margin: 0 10px;
      font-size: 24px;
      color: #d63031;
      transition: color 0.3s ease;
    }
    .social-icons a:hover {
      color: #ff7675;
    }
    footer {
      margin-top: 50px;
      background: #f7b7a3;
      padding: 15px 0;
      text-align: center;
      font-size: 14px;
      color: #fff;
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
  <nav class="navbar navbar-inverse navbar-fixed-top">
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
          <li><a href="index.php">Home</a></li>
          <li class="active"><a href="aboutus.php">About</a></li>
          <li><a href="contactus.php">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="wide">
    <img src="images/LogoImage.png" class="logo-img animate__animated animate__fadeInDown" alt="Cafe Logo">
    <div class="tagline animate__animated animate__bounceIn">Good Food is Good Mood</div>
  </div>

  <div class="about-content animate__animated animate__fadeInUp">
    <h3>About the food culture in Crave Cave</h3>
    <p>Order food & beverages online from restaurants near and around you. We deliver food from your neighborhood joints, your favorite cafes, luxurious & elite restaurants in your area, and even from popular chains like Dominos, KFC, Burger King, Pizza Hut, McDonald's, Subway, Faasos, Cafe Coffee Day, Taco Bell, and more.</p>
    <p>What’s the best part? We place no minimum order restrictions! Order as little (or as much) as you’d like, and we’ll Swiggy it to you!</p>
  </div>

  <div class="address-block animate__animated animate__fadeInUp">
    <h4>Our Cafe Location</h4>
    <p>Crave Cave, Ramghat Road</p>
    <p>Near University Circle, Aligarh - 202001</p>
    <p>Uttar Pradesh, India</p>
    <p>Email: info@cravecave.com | Phone: +91-9876543210</p>

    <div class="social-icons">
      <a href="https://facebook.com/cravecave" target="_blank"><i class="fab fa-facebook"></i></a>
      <a href="https://instagram.com/cravecave" target="_blank"><i class="fab fa-instagram"></i></a>
      <a href="https://youtube.com/@cravecave" target="_blank"><i class="fab fa-youtube"></i></a>
    </div>
  </div>

  <footer>
    &copy; 2025 Crave Cave. All rights reserved.
  </footer>

  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>

</html>
