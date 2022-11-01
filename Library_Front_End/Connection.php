<?php

// Connect to the database
$link = mysqli_connect("127.0.0.1", "lucagirotti", "CodeNinja", "Library");

if (!$link) { 
    echo "An error has occured, cannot connect to the database<br/>";
    echo "Error code: " . mysqli_connect_errno() . "<br/>";
    echo "Error message: " . mysqli_connect_error() . "<br/>";
    exit;
}

?>