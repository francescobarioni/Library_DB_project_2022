<?php

include_once('Connection.php');

$SURNAME = $_POST['SURNAME'];

$sql1 = "SELECT DISTINCT NAME, SURNAME
            FROM AUTHOR, HAS_WRITTEN
            WHERE SURNAME = '$SURNAME'
                AND HAS_WRITTEN.AUTHOR_CODE=AUTHOR.AUTHOR_CODE";

$query = mysqli_query($link, $sql1);


    $row = mysqli_fetch_array($query);
    $author = array(
        'NAME' => $row['NAME'],
        'SURNAME' => $row['SURNAME']
        );


$sql = "SELECT TITLE, YEAR_OF_PUBLICATION 
            FROM BOOK,AUTHOR,HAS_WRITTEN
            WHERE SURNAME='$SURNAME' 
                AND HAS_WRITTEN.BOOK_CODE=BOOK.BOOK_CODE 
                AND HAS_WRITTEN.AUTHOR_CODE=AUTHOR.AUTHOR_CODE
            ORDER BY YEAR_OF_PUBLICATION;";

$query = mysqli_query($link, $sql);
    
mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Search books by author results</title>
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
        <h2>Search results:</h2>
            <?php 
            if(!empty($SURNAME)) {
                if($query->num_rows != 0) { 
                    echo "List of all the books written by " . $author['NAME'] . " " . $author['SURNAME'] . ":";?> 
                    <br>
                    <br>                              
                    <table style="width: auto;">
                        <thead>
                            <tr>
                                <th width="400">Title</th>
                                <th>Year of publication</th>	
                            </tr>
                        </thead>
                        <tbody>
                            <?php while($row = mysqli_fetch_assoc($query)) { ?>
                                <tr>
                                    <td> <?php echo $row['TITLE']; ?> </td>
                                    <td> <?php echo $row['YEAR_OF_PUBLICATION']; ?> </td>
                                </tr>	
                                <?php } ?>
                        </tbody>
                    </table>
                <?php }
                else {
                    echo "The research has failed, no author with the following surname has been found!"?>
                    <br>
                <?php }
                }
            else echo "Error, no input parameters has been set.";?>   
        </fieldset>
        <a class="button" href="Search_Book.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>