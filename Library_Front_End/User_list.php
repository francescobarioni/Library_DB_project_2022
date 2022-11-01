<?php

include_once('Connection.php');

$sql = "SELECT *
        FROM USER
        ORDER BY SURNAME";

$query = mysqli_query($link, $sql);
    

mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>User list results</title>
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
        <fieldset style="margin-left:0;">
                <h2>Following users list: </h2>
                    <table>
                    <thead>
                        <tr>
                            <th width="127">Name</th>
                            <th width="127">Surname</th>
                            <th width="82">Student ID</th>	
                            <th width="110">Phone Number</th>
                            <th width="376">Address</th>			
                        </tr>
                    </thead>
                    <tbody>
                        <?php while($row = mysqli_fetch_assoc($query)) { ?>
                            <tr>
                                <td> <?php echo $row['NAME']; ?> </td>
                                <td> <?php echo $row['SURNAME']; ?> </td>
                                <td> <?php echo $row['STUDENT_ID']; ?> </td>
                                <td> <?php echo $row['PHONE']; ?> </td>
                                <td> <?php echo $row['ADDRESS']; ?> </td>
                            </tr>	
                        <?php }; ?>
                    </tbody>
                </table> 
        </fieldset>
        <a class="button" style="margin-left:0;" href="index.html">Back to the front page</a>
    </body>
</html>