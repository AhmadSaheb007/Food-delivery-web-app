<?php
    session_start();

    $conn = new mysqli('localhost', 'root', '', 'website');

    $firstname = $_POST['fname'];
    $lastname = $_POST['lname'];
    $password = $_POST['password'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];

    $c_id = $_SESSION['user_id'];

    $data = mysqli_query($conn, "SELECT * FROM customer WHERE c_id = $c_id");
    $result = mysqli_fetch_assoc($data);
    $prevoius_email = $result['email'];


    $update2 = mysqli_query($conn, "UPDATE `accounts` SET `password` = '$password' WHERE `email` = '$prevoius_email'");
    $update = mysqli_query($conn, "UPDATE `customer` SET `fname` = '$firstname', `lname` = '$lastname', `phone` = '$phone', `address` = '$address' WHERE `c_id` = $c_id");
    

    echo "<script> alert('Successfully Changed Data!') </script>";
    echo "<script> location.href='UserInfo.php' </script>";

?>