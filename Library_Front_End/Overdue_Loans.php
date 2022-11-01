<?php

include_once('Connection.php');


$sql = "SELECT NAME, SURNAME, PHONE, TITLE, DATE_ADD(RELEASE_DATE, INTERVAL +30 DAY) AS DUE_DATE
        FROM HAS_BORROWED,BOOK, USER
        WHERE HAS_BORROWED.BOOK_CODE = BOOK.BOOK_CODE
        AND HAS_BORROWED.STUDENT_ID= USER.STUDENT_ID
        AND RETURN_DATE IS NULL
        HAVING NOW() > DUE_DATE;";

$query = mysqli_query($link, $sql);


mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Overdue loans results</title>
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
            }   input {
                border: 0.1em solid black;
                
            }
        </style>
    </head>

    <body>
        <fieldset>
        <h2>Overdue Loans</h2>
        <?php
 
        if($query->num_rows != 0) { 
            echo "The following loans went over the 30 days due date!";?>
            <br>
            <br>
            <?php
            echo "List of the loans which are in overdue: ";?> 
                    <br>
                    <br>                              
                    <table style="width: auto;">
                        <thead>
                            <tr>
                                <th width="80">Name</th>
                                <th width="80">Surname</th>
                                <th width="100">Phone number</th>
                                <th>Title</th>	
                                <th style="text-align: center;" width="200">Final due date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php while($row = mysqli_fetch_assoc($query)) { ?>
                                <tr>
                                    <td> <?php echo $row['NAME']; ?> </td>
                                    <td> <?php echo $row['SURNAME']; ?> </td>
                                    <td> <?php echo $row['PHONE']; ?> </td>
                                    <td> <?php echo $row['TITLE']; ?> </td>
                                    <td style="text-align: center;"> <?php echo $row['DUE_DATE']; ?> </td>
                                </tr>	
                                <?php } ?>
                        </tbody>
                    </table>
        <?php 
        }
        else echo "There are currently no loans that are past the due date!"; ?>
        </fieldset>
    <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>