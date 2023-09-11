<?php
  session_start();

  $product_r_id = $_SESSION['r_id'];

?>

<!doctype html>
<html>

<head>

  <title>BFC</title>
  <link rel="icon" type="image/x-icon" href="D:\Downloads\Favicon.png">

  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="RestaurantInterface.css">
  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
     integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</head>

<body class="bgColor">

  <script type="text/javascript">
    const autoScroll=()=>{
      window.scrollBy(0,5);
      let scrolldelay = setTimeout
          (autoScroll,10)
    }
    // autoScroll();
  </script>


  <div class="text-center m-auto" id="outer">

    <?php
      $count = 1;
      $conn = mysqli_connect('localhost', 'root', '', 'website') or die('connection failed!');
      $select_products = mysqli_query($conn, "SELECT * FROM `food` WHERE r_id = $product_r_id");
      if(mysqli_num_rows($select_products) > 0){
        while($fetch_product = mysqli_fetch_assoc($select_products)){
    ?>



    <!-- each food full description box starts -->
    <div class="inner">

      <ul>
        <li class="floatLeft">
          <ul class="floatLeft">

            <!-- Food name -->
            <li>
              <h2 class="whiteTextColor text"><?php echo $count?>. <?php echo $fetch_product['name']?> </h2>
            </li>

            <!-- food discription -->
            <li class="floatLeft whiteTextColor">
              <p><?php echo $fetch_product['description']?></p>
            </li>
          </ul>
        </li>

        <!-- Adding food image -->
        <li>
          <img class="foodImageResizer floatRight" src="https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZWQlMjByaWNlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=100" alt="FoodImage">
        </li>
            
        <!-- Adding "Add to Cart" button" -->
         <li>
          <a href="addToCart.php?id=<?php echo $fetch_product['f_id'] ?>" >
          <button type="button" class="btn btn-outline-light gap-2 col-1 mx-auto quantityButtonResizer">Add to Cart</button>
          </a> 
        </li>

      </ul> 
      <!-- each food full description box starts -->

    </div>



    <?php
        $count++;
        };
      };
    ?>

    <br>
    <!-- View cart -->
    <a href="cart.php">
    <input class="btn btn-outline-light" type="submit" name="submit" value="View Cart" id="submit">
    </a>
    <br>
  </div>


</body>
