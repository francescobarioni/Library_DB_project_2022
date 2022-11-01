<?php

include_once('Connection.php');

$NAME              = $_POST['NAME'];
$SURNAME           = $_POST['SURNAME'];
$TITLE             = $_POST['TITLE'];
$DATE_OF_BIRTH   = $_POST['DATE_OF_BIRTH'];
$BIRTH_PLACE  = $_POST['BIRTH_PLACE'];

$sql = "SELECT DISTINCT NAME, SURNAME, AUTHOR.AUTHOR_CODE, DATE_OF_BIRTH, BIRTH_PLACE
FROM AUTHOR, HAS_WRITTEN, BOOK
WHERE NAME LIKE '%$NAME%'
	AND SURNAME LIKE '%$SURNAME%'
    AND TITLE LIKE '%$TITLE%'
    AND DATE_OF_BIRTH LIKE '%$DATE_OF_BIRTH%'
	AND BIRTH_PLACE LIKE'%$BIRTH_PLACE%'
	AND HAS_WRITTEN.BOOK_CODE=BOOK.BOOK_CODE
    AND HAS_WRITTEN.AUTHOR_CODE=AUTHOR.AUTHOR_CODE
    ORDER BY SURNAME;";
    
$query = mysqli_query($link, $sql);
    
mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Author research results:</title>
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
            if($query->num_rows != 0) { ?>          
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Surname</th>
                            <th width="96">Code</th>
                            <th>Date of birth</th>		
                            <th>Place of birth</th>	
                        </tr>
                    </thead>
                    <tbody>
                        <?php while($row = mysqli_fetch_assoc($query)) { ?>
                            <tr>
                                <td> <?php echo $row['NAME']; ?> </td>
                                <td> <?php echo $row['SURNAME']; ?> </td>
                                <td> <?php echo $row['AUTHOR_CODE']; ?> </td>
                                <td> <?php echo $row['DATE_OF_BIRTH']; ?> </td>
                                <td> <?php echo $row['BIRTH_PLACE']; ?> </td>
                            </tr>	
                            <?php }; ?>
                    </tbody>
                </table>
            <?php }
            else echo "The research yielded no results."
             ?>
        </fieldset>
        <a class="button" href="Search_Author.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>