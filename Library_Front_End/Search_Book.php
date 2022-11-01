<?php

include_once('Connection.php');

$TITLE = $_POST['TITLE'];

$sql1 = "SELECT * 
         FROM BOOK 
         WHERE TITLE LIKE '%$TITLE%'
         ORDER BY TITLE";

$book = mysqli_query($link, $sql1);
    

mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Book research result</title>
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
            if($book->num_rows != 0) { ?>               
                <table style="width: auto;">
                    <thead>
                        <tr>
                            <th width="450">Tile</th>
                            <th>Book code</th>
                            <th width="70">Language</th>	
                            <th>Year of publication</th>		
                            <th width="100">ISBN</th>	
                        </tr>
                    </thead>
                    <tbody>
                        <?php while($row = mysqli_fetch_assoc($book)) { ?>
                            <tr>
                                <td> <?php echo $row['TITLE']; ?> </td>
                                <td> <?php echo $row['BOOK_CODE']; ?> </td>
                                <td> <?php echo $row['LANGUAGE']; ?> </td>
                                <td> <?php echo $row['YEAR_OF_PUBLICATION']; ?> </td>
                                <td> <?php echo $row['ISBN']; ?> </td>
                            </tr>	
                            <?php } ?>
                    </tbody>
                </table>
            <?php }
            else {
                echo "The research has failed, the library doesn't currently have these books!"?>
                <br>
            <?php }; ?>   
        </fieldset>
        <a class="button" href="Search_Book.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>