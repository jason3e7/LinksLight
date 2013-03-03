<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php
	//when update OK do this
    $dbhost = 'localhost';
    $dbuser = '';
    $dbpass = '';
    $dbname = 'bookmarks';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname);

	
    $sql = "SELECT * FROM user where user='".$_GET["user"]."' and password='".$_GET["password"]."';";
	
	$result = mysql_query($sql) or die('MySQL query error');
	
	if(mysql_num_rows($result)!=0)
	{	
		$sql = "DELETE FROM bookmark WHERE user='".$_GET["user"]."' and uptime !='".$_GET['time']."';";
		$result = mysql_query($sql);
	}
?>

