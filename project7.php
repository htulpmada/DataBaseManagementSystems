    <?php 
    Echo 'Hello World';
    ?>
<?php
error_reporting(E_ALL); ini_set("display_errors", "1");
echo "Welcome to Adam's DB";
// Connect to MySQL
$link = mysqli_connect("cs-sql2014.ua-net.ua.edu", 'apluth', '11455946');
if (!$link) {die('Not connected: '. mysqli_error()); }  // see if connected
// Select DB will use
mysqli_select_db($link, 'apluth') or die ('Could not select database');  // see if worked

// Now the query
$query = "Select * from _client";     
$result = mysqli_query($link, $query);
if (!$result) {die( 'Error in SQL: ' . mysqli_error($link));}
// process results using cursor
while ($row = mysqli_fetch_array($result, MYSQLI_NUM))
{
        echo "<hr>";  //horizontal line
        for($i = 0; $i < sizeof($row); $i++){
            echo $row[$i] . "<br />";    
        }
        //echo "name: ". $row["name"] . "<br />";
        //echo "License_number: ". $row["Lisence_number"] . "<br />";
        //echo "customer_id: " . $row["customer_id"] .  "<br />";
}
mysqli_free_result ($result);
mysqli_close($link);   // disconnecting from MySQL
?>
