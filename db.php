<?php
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db   = 'treasurebakery';

    $conn = mysqli_connect($host, $user, $pass, $db);

    if(!$conn){
        echo 'error : '.mysql_connect_error($conn);
    }
?>