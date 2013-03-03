<?php
    $dbhost = 'localhost';
    $dbuser = '';
    $dbpass = '';
    $dbname = 'bookmarks';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname);

	

    $sql = "SELECT * FROM user where user='".$_GET["id"]."' and password='".$_GET["password"]."';";
	//print $sql;
    $result = mysql_query($sql) or die('MySQL query error');
    while($row = mysql_fetch_array($result)){
        echo $row['text'];
    }
?>
