<?php
    $dbhost = 'localhost';
    $dbuser = '';
    $dbpass = '';
    $dbname = 'bookmarks';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname);

	echo "<?xml version=\"1.0\"?>";
	echo "<bookmarks version=\"1\">";

    $sql = "SELECT * FROM user where user='".$_GET["id"]."' and password='".$_GET["password"]."';";
	//print $sql;
	$result = mysql_query($sql) or die('MySQL query error');
	if(mysql_num_rows($result)!=0)
	{
		$sql = "SELECT * FROM bookmark where user='".$_GET["id"]."' order by point  DESC ;";
		//print $sql;
		//echo "<br>";		
		$result = mysql_query($sql);
		while($row = mysql_fetch_array($result)){
			echo "<bookmark>";
        	echo "<title data=\"".$row['title']."\" />";
			echo "<url data=\"".$row['url']."\" />";
			//echo $row['url'];
			echo "</bookmark>";
    	}
	}
	echo "</bookmarks>";
?>
