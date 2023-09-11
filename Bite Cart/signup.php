<?php

    $fistname = $_POST['fname'];
    $lastname = $_POST['lname'];
    $NID = $_POST['nidNumber'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $phonenumber = $_POST['phone'];
    $address = $_POST['address'];

    $conn = new mysqli('localhost', 'root', '', 'website');

    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    else{
        
        $stmt = $conn->prepare("INSERT INTO accounts(email, password)
        VALUES(?,?)");
        $stmt->bind_param("ss", $email, $password);
        $stmt->execute();

        $stmt = $conn->prepare("INSERT INTO customer(fname, lname, email, NID, phone, address)
        VALUES(?,?,?,?,?,?)");
        $stmt->bind_param("ssssss", $fistname, $lastname, $email, $NID, $phonenumber, $address);
        $stmt->execute();

        echo "<script> alert('Registration Successful!') </script>";
        echo "<script> location.href='login.php' </script>";
        
        $stmt->close();
        $conn->close();
    }

?>