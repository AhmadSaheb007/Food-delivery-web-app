<?php

    session_start();
    session_unset();
    session_destroy();

    echo "<script> alert('User Logged Out Successfully!') </script>";
    echo "<script> location.href='login.php' </script>";

?>