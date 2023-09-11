<?php
  session_start();
?>


<!doctype html>
<html>

<head>

  <title>Log in</title>
  <link rel="icon" type="image/x-icon" href="D:\Downloads\Favicon.png">

  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="logInStyle.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>

<body>

  <!-- Setting background image -->
  <img class="bgImage"
    src="https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=100"
    alt="Bk">

  <div>

    <!-- logo and "Login" -->
    <div>
      <!-- Adding logo -->
      <a href="index.php">
        <img class="logo" src="https://github.com/3Mahin/BiteCart/blob/main/Logo/Bite%20Cart%20Logo.png?raw=true"
          alt="Bite Cart">
      </a>

      <h1 class="TitleTextPadding whiteTextColor floatRight">
        Log In
      </h1>
    </div>


    <br>
    <br>
    <br>

    <!-- Login Block -->
    <div class="mainBlock text-center m-auto">

      <div class="registrationBlock whiteTextColor text-center m-auto">
        <br>

        <form class="register" action="connection.php" method="post">

          <!-- mobile number slot -->
          <label>Email: </label>
          <br>
          <input type="text" name="email" placeholder="Enter Email" id="">

          <br>
          
          <!-- Password slot -->
          <label>Password: </label>
          <br>
          <input type="password" name="password" placeholder="Enter Password" id="">
          <p><br>
            Don't have an account? 
            <a href="signIn.html">Sign Up</a>
            <p>


          <!-- Submission button -->

          <input class="btn btn-outline-success" type="submit" name="submit" value="Login" id="submit">
          <br>
          <br>

        </form>
      </div>
    </div>
  </div>
</body>

</html>