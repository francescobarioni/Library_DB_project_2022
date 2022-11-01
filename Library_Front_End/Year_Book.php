<?php

include_once('Connection.php');

$YEAR = $_POST['YEAR'];

$sql = "SELECT COUNT(*) 
        FROM BOOK 
        WHERE YEAR_OF_PUBLICATION='$YEAR'";

$query = mysqli_query($link, $sql);

$numbers_books = array();
$numbers_books= mysqli_fetch_row($query);
    
mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Books in a specific year results</title>
        <link rel="stylesheet" href="https://cdn.rawgit.com/kimeiga/bahunya/css/bahunya-0.1.3.css"/>

        <style>
            header {
                text-align: center;
            }           
            footer {
                text-align: center;
            }            
            fieldset {
                text-align: center;
                border: 1px solid #ccc;
            }
            a.button {
                display: inline-block;
                padding:0.5em 1.8em;
                border:0.1em solid yellow;
                background-color: whitesmoke;
                opacity: 1;
                margin:0 0.5em 0.5em 0;
                border-radius:25px;
                box-sizing: border-box;
                text-decoration:none;
                font-family:'Roboto',sans-serif;
                font-weight:200;
                color:black;
                text-align:center;
                transition: all 0.2s;
                width: 230px;
            }
                a.button:hover {
                color:yellow;
                background-color:black;
                opacity: 1;
                text-decoration:none;
            }
        </style>
    </head>

    <body>
        <fieldset>
           <?php 
           if(!empty($YEAR)) {
            echo "In this " . $YEAR . " there were this amount of books: " . $numbers_books[0] . ", which have been published !"; 
           } 
           else echo "Error, no input parameters!"?>
        </fieldset>
        <a class="button" href="Statistics.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>