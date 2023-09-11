<?php
    session_start();

    $c_id = $_SESSION['user_id'];
    $restaurant_id = $_SESSION['r_id'];

    $conn = new mysqli('localhost', 'root', '', 'website');

    $items = $_GET['id'];
    $data = mysqli_query($conn, "SELECT * FROM food WHERE f_id = $items");
    $result = mysqli_fetch_assoc($data);

    $item_name = $result['name'];
    $price = $result['price'];
    $r_id = $result['r_id'];
    $f_id = $result['f_id'];


    $upload = $conn->prepare("INSERT INTO cart(item_name, price, r_id, f_id, c_id) VALUES(?,?,?,?,?)");
    $upload->bind_param("sssss", $item_name, $price, $r_id, $f_id, $c_id);
    $upload->execute();

    header('location:RestaurantInterface.php?id='.$restaurant_id);

?>