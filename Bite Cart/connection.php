<?php
    include("login.php");
    session_start();
    session_unset();
    session_destroy();

    session_start();

    $email = $_POST['email'];
    $password = $_POST['password'];

    $conn = new mysqli('localhost', 'root', '', 'website');

    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    else{

        $stmt = $conn->prepare("SELECT * FROM accounts WHERE email = ?");
        $stmt->bind_param("s",$email);
        $stmt->execute();
        $stmt_result = $stmt->get_result();

        if($stmt_result->num_rows > 0){

            $data = $stmt_result->fetch_assoc();

            if($data['password'] === $password){

                $result = mysqli_query($conn, "SELECT c_id, fname FROM `customer` WHERE email = '$email'");
                $row = mysqli_fetch_assoc($result);
                $username = $row['fname'];
                $user_id = $row['c_id'];
                $user_email = $row['email'];

                $_SESSION['user'] = $username;
                $_SESSION['user_id'] = $user_id;
                $_SESSION['email'] = $user_email;


                header('location:index.php');
                exit();
            }
            else{
                echo "<script> alert('Invalid Email or Password !') </script>";
                echo "<script> location.href='login.php' </script>";
                //header('location:login.php');
            }
        }
        else{
            echo "<script> alert('Invalid Email or Password !') </script>";
            echo "<script> location.href='login.php' </script>";
            //header('location:login.php');
        }
    }
    
?>