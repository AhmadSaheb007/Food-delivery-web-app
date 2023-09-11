<?php

    session_start();

    $c_id = $_SESSION['user_id'];

    $conn = new mysqli('localhost', 'root', '', 'website');
    $user_id = $_SESSION['user_id'];

    //$result = mysqli_query($conn, "SELECT item_name, price, SUM(price) AS total_price FROM cart");
    $result = mysqli_query($conn, "SELECT * FROM cart WHERE c_id = $user_id");

?>

<!doctype html>
<html>
	<head>

		<title>Cart</title>
		<link rel="icon" type="image/x-icon" href="D:\Downloads\Favicon.png">

		<link rel="stylesheet" href="cartStyle.css">
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
        <br>
        <br>
        <br>
        <br>

        <h4 class="TitleTextPadding text-center m-auto whiteTextColor">Change info</h4>
        
        <div class="cartItemBLock text-center m-auto center">
            <table class="table table-striped whiteTextColor zillaFont center">
                <thead>
                  <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Item</th>
                    <th scope="col">Price</th>
                    <th scope="col">Delete</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                  <?php 
                        $count = 1;
                        $total_price = 0;
                        while($row = mysqli_fetch_assoc($result)){
                            
                    
                    ?>
                    <td><?php  echo $count++;  ?></td>
                    <td><?php  echo $row['item_name']  ?></td>
                    <td><?php  echo $row['price']  ?></td>
                    <td>
                      
                        <a href="removeCart.php?id=<?php echo $row['cart_id']?>">
                        <input class="btn btn-outline-success" type="submit" name="submit" value="Remove" id="submit"> <!-- revome item button -->
                        </a>
                    </td>
                    
                    </tr>

                    <?php
                        $total_price += $row['price'];
                        }
                    ?>
                </tbody>
              </table>
        </div>
        


        <div align = "center">
        <h1 style="color:yellow">Total Cost: <?php echo $total_price; ?></h1>
        </div>


        <br>
        <a href="orderclick.php">
        <input class="btn btn-light orderBtn btn-lg" type="submit" name="submit" value="Order" id="submit">
        </a>

    </body>
</html>