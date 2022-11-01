<?php

include_once('Connection.php');

$AUTHOR_CODE = $_POST['AUTHOR_CODE'];

$sql1 = "SELECT NAME, SURNAME
            FROM AUTHOR
            WHERE AUTHOR_CODE='$AUTHOR_CODE'";

$author_query = mysqli_query($link, $sql1);

    $row = mysqli_fetch_array($author_query);
    $author = array(
        'NAME' => $row['NAME'],
        'SURNAME' => $row['SURNAME']
        );

$sql = "SELECT DISTINCT COUNT(*) 
        FROM HAS_WRITTEN
        WHERE AUTHOR_CODE='$AUTHOR_CODE'";

$query = mysqli_query($link, $sql);


$number_books = array();
$number_books = mysqli_fetch_row($query);

mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Books by author results</title>
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
           if(!empty($AUTHOR_CODE)) {
               if($author_query->num_rows != 0) {
                    echo "The author with the code " . $AUTHOR_CODE. " (" . $author['NAME'] . " " . $author['SURNAME'] . ") has written " . $number_books[0] . " books."; 
               }
               else echo "Error, no author with the following code has been found!";
           } 
           else echo "Error, missing input parameters!"?>
        </fieldset>
        <a class="button" href="Statistics.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>