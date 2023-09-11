<?php
	session_start();
?>


<!doctype html>
<html>
	<head>

		<title>Bite Cart</title>
		<link rel="icon" type="image/x-icon" href="D:\Downloads\Favicon.png">

		<link rel="stylesheet" href="style.css">
		<!-- Bootstrap CSS -->
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
			 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

	</head>

	<body>

		<!-- Setting background image -->
		<img class = "bgImage" src="https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=100" alt="Bk">

		<div class="navBarContainer">

			<!-- Navigation Bar design -->
			<nav class="navbar navbar-expand-lg navbar-dark bg-transparent ">
			  <div class="container-fluid">

			    <!-- <a class="navbar-brand" href="#">Navbar</a> -->
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>

					<!--All Navigation Bar Buttons -->
			    </button>
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">

						<!-- Making All Navbar Buttons side by side -->
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

							<!-- Initing Home Button -->
			        <li class="nav-item btn-lg">
			          <a class="nav-link active text" aria-current="page" href="#Home">Home</a>
			        </li>

							<!-- Initing Food Button -->
							<li class="nav-item dropdown btn-lg dropDownManu">
								<a class="nav-link dropdown-toggle text" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									Cusine
							 </a>
							 <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

								 <li><a class="dropdown-item" href="Restaurant.php">Restaurant</a></li>
								 <li><hr class="dropdown-divider"></li>
								 <li><a class="dropdown-item" href="food.php">Food</a></li>

							</ul>
						 </li>

						 <li class="nav-item btn-lg">
			          <a class="nav-link text" aria-current="page" href="cart.php">My Order</a>
			        </li>


							<!-- Initing Career Button -->
							<!-- Initing Contact Button -->

							<!-- <li class="nav-item dropdown btn-lg dropDownManu"> -->
               <!-- <a class="nav-link dropdown-toggle text" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                 Career
              </a> -->
              <!-- <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                <li><a class="dropdown-item" href="#">Rider</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Partner</a></li> -->

             <!-- </ul>
            </li> -->

							<!-- Initing About Button -->
							<li class="nav-item  btn-lg">
								<a class="nav-link text" href="About.html">About</a>
							</li>

							<!-- Initing Contact Button -->
							<li class="nav-item  btn-lg">
									<a class="nav-link text" href="Contact.html">Contact</a>
							</li>


							<!-- Initing Search Button and Searching Form -->
							<!-- <li>
								<form class="d-flex navigationBarButtonPadding" role="search">
					        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					        <button class="btn btn-outline-success" type="submit">Search</button>
					      </form>
							</li> -->

			      </ul>
			    </div>

					<!-- Initing Signin Button and Login Button-->
					<div>
						<ul>
							<li class="floatRight btnPadding">
								<!-- <a href="signIn.html"> <button class="btn btn-outline-success" type="submit">Sign Up</button> </a> -->
								<a href="logout.php"> <button class="btn btn-outline-success" type="submit">Logout</button> </a>
							</li>

							<li class="floatRight btnPadding">
								<!-- <a href="login.php"> <button class="btn btn-outline-success" type="submit">Login</button> </a> -->
								<a href="UserInfo.php"> <button class="btn btn-outline-success" type="submit"><?php  echo "Welcome ".$_SESSION['user'];  ?></button> </a>
							</li>
						</ul>
					</div>
			  </div>
			</nav>

			<!-- Website Logo, Name, Login, Sign up -->
			<div>
				<ul>
					<li class="floatLeft">
						<a href="index.php">
			        <img class="logo" src="https://github.com/3Mahin/BiteCart/blob/main/Logo/Bite%20Cart%20Logo.png?raw=true" alt="Bite Cart">
			      </a>
					</li>

					<li class="floatLeft">

						<li>
								<h1 class="title whiteTextColor">&nbspBite Cart <br> <h5 class = "subtitle whiteTextColor"  Your trusted food partner></h5></h1>
						</li>

						<li>
						<p class="subtitle whiteTextColor">&nbsp&nbsp&nbsp Your trusted food partner</p>
					  </li>



					</li>
				</ul>
			</div>
		</div>

		<br>

		<div class="BC">

			<img class = "bgImage" src="https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=100" alt="Bk">


			<div id="carouselExampleSlidesOnly cycle" class="carousel slide interval = 1000" data-bs-ride="carousel" data-interval="2">
				 <div class="carousel-inner">
					 <div class="carousel-item active carouselImageResizer">
						 <img class="carousalBgImage" src="https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=100"  class="d-block w-100"  alt="...">
					</div>
					<div class="carousel-item carouselImageResizer">
						 <img class="carousalBgImage" src= "https://images.unsplash.com/photo-1559128010-7c1ad6e1b6a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxhbmQlMjBzY2FwZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=100"  class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item carouselImageResizer">
						 <img class="carousalBgImage" src= "https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=100" class="d-block w-100" alt="...">
					</div>
				 </div>
			</div>
		</div>


	</body>

</html>
