<?php

include_once('Connection.php');

$sql = "SELECT LANGUAGE, (COUNT(*) * 100.0 / sum(count(*)) over()) AS NUMBER_OF_BOOKS
        FROM BOOK
        GROUP BY LANGUAGE
        ORDER BY NUMBER_OF_BOOKS DESC
        LIMIT 5;";


$query = mysqli_query($link, $sql);

mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Most used languages results</title>
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
            <h2>Percentage of the top 5 most used languages in the library</h2>
            <table style="width: 350;">
                <thead>
                    <tr>
                        <th style="width: 80;">Language</th>
                        <th style="width: 150; text-align:center;">Percentage of books written in that language</th>
                    </tr>
                </thead>
                <tbody>
                <?php while($row = mysqli_fetch_assoc($query)) { ?>
                    <tr>
                        <td> <?php echo $row['LANGUAGE']; ?> </td>
                        <td style="text-align: center;"> <?php echo number_format($row['NUMBER_OF_BOOKS'],2,',',' '); ?>%</td>
                     </tr>	
                <?php } ?>
                </tbody>
            </table>                    
        </fieldset>
    <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>