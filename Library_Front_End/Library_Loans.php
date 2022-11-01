<?php

include_once('Connection.php');


$LIBRARY_CODE = $_POST['LIBRARY_CODE'];


$sql = "SELECT COUNT(*) 
        FROM HAS_BORROWED, BOOK
	    WHERE LIBRARY_CODE = '$LIBRARY_CODE'
	    AND BOOK.BOOK_CODE = HAS_BORROWED.BOOK_CODE";

$query = mysqli_query($link, $sql);

    
$number_loans = array();
$number_loans = mysqli_fetch_row($query);
    

mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Library loans results</title>
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
           if(!empty($LIBRARY_CODE)) {
            echo "In the library number: " . $LIBRARY_CODE . " there have been " . $number_loans[0] . " loans.";
            }
            else echo "Error, no input parameters!" ?> 
        </fieldset>
        <a class="button" href="Statistics.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>