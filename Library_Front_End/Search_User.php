<?php
include_once('connection.php');
$STUDENT_ID = $_POST['STUDENT_ID'];

$sql = "SELECT NAME, SURNAME
        FROM USER
        WHERE STUDENT_ID = $STUDENT_ID";

$query = mysqli_query($link, $sql);

$row = mysqli_fetch_array($query);
$user = array(
        'NAME' => $row['NAME'],
        'SURNAME' => $row['SURNAME']
        );

$sql = "SELECT TITLE, RELEASE_DATE, RETURN_DATE
        FROM HAS_BORROWED, USER, BOOK
        WHERE USER.STUDENT_ID=$STUDENT_ID
	        AND HAS_BORROWED.STUDENT_ID = USER.STUDENT_ID
            AND HAS_BORROWED.BOOK_CODE = BOOK.BOOK_CODE
            ORDER BY RELEASE_DATE";
            
$query = mysqli_query($link, $sql);
    
mysqli_close($link);
?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>User research results</title>
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
            input[type="submit"] {
                border-radius: 20px;
                font-weight: bold;
                }
                label {
                    font-weight: bold;
                }

         </style>
    </head>

    <body>
        <fieldset>
            <?php
            if(!empty($STUDENT_ID) && $user['NAME'] != NULL) { ?>
                <h2>Search results</h2>
                <h3>User:</h3>
                <p style="font-weight: 400;"><?php echo $user['NAME'] . " " . $user['SURNAME'] ?></p>
                <h3>Loans history:</h3>
                    <table style="width: auto;">
                    <thead>
                        <tr>
                            <th width="200">Title</th>
                            <th width="125">Release date</th>
                            <th width="135">Return date</th>				
                        </tr>
                    </thead>
                    <tbody>
                        <?php while($row = mysqli_fetch_assoc($query)) { ?>
                            <tr>
                                <td> <?php echo $row['TITLE']; ?> </td>
                                <td> <?php echo $row['RELEASE_DATE']; ?> </td> 
                                <td> <?php echo $row['RETURN_DATE']; ?> </td>
                            </tr>	
                            <?php }; ?>
                    </tbody>
                </table>
            <?php }
            else if(empty($STUDENT_ID)) { echo "Error, couldn't perform the research!";?>
                <br>
                <?php echo "Check if you have written the correct student ID.";
                }  
            else if(!empty($STUDENT_ID) && $user['NAME'] == NULL)  { 
                echo "The following student ID doesn't exists ".$STUDENT_ID."."; 
                } ?>      
        </fieldset>
        <a class="button" href="Search_User.html">Go back</a>
        <a class="button" href="index.html">Go back to the front page</a>
    </body>
</html>