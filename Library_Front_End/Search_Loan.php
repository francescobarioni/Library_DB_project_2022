<?php

include_once('Connection.php');

$INIZIAL_DATE = $_POST['INIZIAL_DATE'];
$ENDING_DATE = $_POST['ENDING_DATE'];

//Select the loans from the selected date
$sql1 = "SELECT TITLE, BOOK.BOOK_CODE, LIBRARY_CODE, STUDENT_ID, RELEASE_DATE
            FROM HAS_BORROWED, BOOK
            WHERE RELEASE_DATE >= '$INIZIAL_DATE' 
                AND RELEASE_DATE <= '$ENDING_DATE'
                AND HAS_BORROWED.BOOK_CODE = BOOK.BOOK_CODE
            ORDER BY RELEASE_DATE";


if(!empty($INIZIAL_DATE) && !empty($ENDING_DATE)) {
    $loans_range = mysqli_query($link, $sql1);
}


// Select the loans which are about to expire
$sql2 = "SELECT TITLE, BOOK.BOOK_CODE, LIBRARY_CODE, STUDENT_ID, RELEASE_DATE
            FROM HAS_BORROWED, BOOK
            WHERE RETURN_DATE IS NULL 
                AND HAS_BORROWED.BOOK_CODE=BOOK.BOOK_CODE
            ORDER BY RELEASE_DATE";


if(empty($INIZIAL_DATE) && empty($ENDING_DATE)) {
    $About_to_expire_loans = mysqli_query($link, $sql2);
}

// Select the loans from the inserted date
$sql3 = "SELECT TITLE, BOOK.BOOK_CODE, LIBRARY_CODE, STUDENT_ID, RELEASE_DATE
            FROM HAS_BORROWED, BOOK
            WHERE RELEASE_DATE >= '$INIZIAL_DATE' 
            AND HAS_BORROWED.BOOK_CODE = BOOK.BOOK_CODE
            ORDER BY RELEASE_DATE";


if(!empty($INIZIAL_DATE) && empty($ENDING_DATE)) {
    $loans_from = mysqli_query($link, $sql3);
}

// Select the loans till the inserted date
$sql4 = "SELECT TITLE, BOOK.BOOK_CODE, LIBRARY_CODE,STUDENT_ID,RELEASE_DATE
            FROM HAS_BORROWED, BOOK
            WHERE RELEASE_DATE <= '$ENDING_DATE'' 
            AND HAS_BORROWED.BOOK_CODE = BOOK.BOOK_CODE
            ORDER BY RELEASE_DATE";

if(empty($INIZIAL_DATE) && !empty($ENDING_DATE)) {
    $loans_till = mysqli_query($link, $sql4);
}
    

mysqli_close($link);

?>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Loans research results</title>
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
        <?php 
        if(!empty($INIZIAL_DATE) && !empty($ENDING_DATE)) {
            if($loans_range->num_rows != 0) { ?>
                <h2>Research results: </h2>
                <?php echo "From the " . $INIZIAL_DATE . " and the " . $ENDING_DATE . " the following loans have been recorded:"; ?>     
                <br>    
                <br>
                    <table style="width: auto;">
                        <thead>
                            <tr>
                                <th width="250">Title</th>
                                <th style="text-align:center;" width="100">Book code</th>
                                <th style="text-align:center;" width="90">Library</th>	
                                <th style="text-align:center;">Student ID</th>		
                                <th style="text-align:center;" width="140">Release date</th>	
                            </tr>
                        </thead>
                        <tbody>
                            <?php while($row = mysqli_fetch_assoc($loans_range)) { ?>
                                <tr>
                                    <td> <?php echo $row['TITLE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['BOOK_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['LIBRARY_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['STUDENT_ID']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['RELEASE_DATE']; ?> </td>
                                </tr>	
                                <?php } ?>
                        </tbody>
                    </table>
            <?php }
            else { echo "The research has failed..."; ?>
            <br>
            <?php 
            echo "No loans have been recorded from the " . $INIZIAL_DATE . " and the " . $ENDING_DATE . ".";
            }
        }
        else if(empty($INIZIAL_DATE) && empty($ENDING_DATE)) { ?>
            <h2>Research results: </h2> 
            <?php echo "These are the following loans which are about to expire"; ?>     
                <br>    
                <br>
                <table style="width: auto;">
                        <thead>
                            <tr>
                                <th width="250">Title</th>
                                <th style="text-align:center;" width="100">Book code</th>
                                <th style="text-align:center;" width="90">Library</th>	
                                <th style="text-align:center;">Student ID</th>		
                                <th style="text-align:center;" width="140">Release date</th>	
                            </tr>
                        </thead>
                        <tbody>
                            <?php while($row = mysqli_fetch_assoc($About_to_expire_loans)) { ?>
                                <tr>
                                    <td> <?php echo $row['TITLE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['BOOK_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['LIBRARY_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['STUDENT_ID']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['RELEASE_DATE']; ?> </td>
                                </tr>	
                                <?php } ?>
                        </tbody>
                    </table>
            <?php }
        else if(!empty($INIZIAL_DATE) && empty($ENDING_DATE)) {
            if($loans_from->num_rows != 0) { ?>
                <h2>Research results: </h2>
                <?php echo "Loans from the " . $INIZIAL_DATE . ":"; ?>     
                <br>    
                <br>
                    <table style="width: auto;">
                        <thead>
                            <tr>
                                <th width="250">Title</th>
                                <th style="text-align:center;" width="100">Book code</th>
                                <th style="text-align:center;" width="90">Library</th>	
                                <th style="text-align:center;">Student ID</th>		
                                <th style="text-align:center;" width="140">Release date</th>	
                            </tr>
                        </thead>
                        <tbody>
                            <?php while($row = mysqli_fetch_assoc($loans_from)) { ?>
                                <tr>
                                    <td> <?php echo $row['TITLE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['BOOK_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['LIBRARY_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['STUDENT_ID']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['RELEASE_DATE']; ?> </td>
                                </tr>	
                                <?php } ?>
                        </tbody>
                    </table>
            <?php }
            else { echo "The research has failed..."; ?>
            <br>
            <?php 
            echo "No loans have been recorded from the " . $INIZIAL_DATE . ".";
            }
        }
        else if(empty($INIZIAL_DATE) && !empty($ENDING_DATE)) {
            if($loans_till->num_rows != 0) { ?>
                <h2>Results:</h2>
                <?php echo "Loans carried out till the " . $ENDING_DATE . ":"; ?>     
                <br>    
                <br>
                    <table style="width: auto;">
                        <thead>
                            <tr>
                                <th width="250">Title</th>
                                <th style="text-align:center;" width="100">Book code</th>
                                <th style="text-align:center;" width="90">Library</th>	
                                <th style="text-align:center;">Student ID</th>		
                                <th style="text-align:center;" width="140">Release date</th>	
                            </tr>
                        </thead>
                        <tbody>
                            <?php while($row = mysqli_fetch_assoc($loans_till)) { ?>
                                <tr>
                                    <td> <?php echo $row['TITLE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['BOOK_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['LIBRARY_CODE']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['STUDENT_ID']; ?> </td>
                                    <td style="text-align:center;"> <?php echo $row['RELEASE_DATE']; ?> </td>
                                </tr>	
                                <?php } ?>
                        </tbody>
                    </table>
            <?php }
            else { echo "The research has failed..."; ?>
            <br>
            <?php 
            echo "No loans have been recorded till the " . $ENDING_DATE . ".";
            }
        }
        else echo "Error, something wrong happened, check the insertion again.";
        ?>
        </fieldset>
        <a class="button" href="Search_Loan.html">Go back</a>
        <a class="button" href="index.html">Back to the front page</a>
    </body>
</html>