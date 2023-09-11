<?php

    session_start();

    $c_id = $_SESSION['user_id'];

    $conn = new mysqli('localhost', 'root', '', 'website');

    $remove_row = $_GET['id'];
    $data = mysqli_query($conn, "DELETE FROM cart WHERE cart_id = $remove_row AND c_id = $c_id");
    
    header('location:cart.php');
?>