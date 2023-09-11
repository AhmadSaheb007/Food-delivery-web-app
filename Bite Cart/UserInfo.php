<?php

  session_start();
  
  $c_id = $_SESSION['user_id'];

  $conn = new mysqli('localhost', 'root', '', 'website');
  $data = mysqli_query($conn, "SELECT * FROM customer WHERE c_id = $c_id");
  $result = mysqli_fetch_assoc($data);

?>

<!doctype html>
<html>
	<head>

		<title>Bite Cart</title>
		<link rel="icon" type="image/x-icon" href="D:\Downloads\Favicon.png">

		<link rel="stylesheet" href="UserInfoStyle.css">
		<!-- Bootstrap CSS -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
			 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

	</head>

    <body>

        <!-- Setting background image -->
		<img class = "bgImage" src="https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=100" alt="Bk">

        <div>
            <ul>

                <li class="floatLeft">
                    <a href="index.php">
                <img class="logo" src="https://github.com/3Mahin/BiteCart/blob/main/Logo/Bite%20Cart%20Logo.png?raw=true" alt="Bite Cart">
              </a>
                </li>

                <li class="floatRight btnPadding">
                    <!-- <a href="signIn.html"> <button class="btn btn-outline-success" type="submit">Sign Up</button> </a> -->
                    <a href="logout.php"> <button class="btn btn-outline-success btn-light btn-lg" type="submit">Logout</button> </a>
                </li>
                
            </ul>

        </div>

        <br>
        <br>

        <h2 class="TitleTextPadding text-center m-auto whiteTextColor">Current Information</h2>

        <div class="mainBlock text-center m-auto">
            <br>
      
            <div class="registrationBlock whiteTextColor text-center m-auto">
              <form class="register" action="" method="post">

                <h4><span style="color: DeepSkyBlue;">First Name: </span><?php echo $result['fname'] ?></h4>
                <h4><span style="color: DeepSkyBlue;">Last Name: </span><?php echo $result['lname'] ?></h4>
                <h4><span style="color: DeepSkyBlue;">Email: </span><?php echo $result['email'] ?></h4>
                <h4><span style="color: DeepSkyBlue;">Address: </span><?php echo $result['address'] ?></h4>
                <h4><span style="color: DeepSkyBlue;">Phone Number: </span><?php echo $result['phone'] ?></h4>
                <h4><span style="color: DeepSkyBlue;">NID: </span><?php echo $result['NID'] ?></h4>

                <br>
      
              </form>
            </div>
          </div>
        
        <br>
        <br>
        <br>
        <br>
        <h2 class="TitleTextPadding text-center m-auto whiteTextColor">Change info</h2>

        <div class="mainBlock text-center m-auto">
            <br>
      
            <div class="registrationBlock whiteTextColor text-center m-auto">
              <form class="register" action="updateinfo.php" method="post">


                <label>First Name: </label>
                
                <input type="text" name="fname"
                       placeholder ="Enter your first name" id="">
      
      
                <label>Last Name: </label>
                
                <input type="text" name="lname"
                        placeholder ="Enter your last name" id="">
      
      
                <br>
                <label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPhone: </label>
            
                <input type="text" name="phone"
                        placeholder ="Enter your valid mail" id="">
      
      
                <br>
                <label>Password: </label>
                <input type="password" name="password"
                        placeholder ="Enter a Strong password" id="">
      

      
                <br>
                <label>&nbsp&nbspAddress: </label>
                <input type="text" name="address"
                        placeholder ="Enter Address" id="">
                        

                <br>
                <input class="btn btn-outline-success" type="submit" name="submit" value="Change" id="submit">
                <br>
                <br>
      
              </form>
            </div>
          </div>






        
    </body>
</html>