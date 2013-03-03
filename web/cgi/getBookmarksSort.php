<?php
    $dbhost = 'localhost';
    $dbuser = '';
    $dbpass = '';
    $dbname = 'bookmarks';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname);


	$username=$_GET["id"];

    $sql = "SELECT * FROM user where user='".$_GET["id"]."' and password='".$_GET["password"]."';";
	//print $sql;
	$result = mysql_query($sql) or die('MySQL query error');
	if(mysql_num_rows($result)!=0)
	{
		echo "<?xml version=\"1.0\"?>\n";
		echo "<bookmarks version=\"1\">\n";
		$sql = "SELECT * FROM bookmark where user='".$_GET["id"]."' and parentId='1' order by point DESC ;";
		//print $sql;
		//echo "<br>";		
		$result = mysql_query($sql);
		while($row = mysql_fetch_array($result)){
			echo "<bookmark id=\"".$row['id']."\" parentId=\"".$row['parentId']."\" title=\"".$row['title']."\" url=\"".$row['url']."\" />";
			echo "</bookmark>\n";
			folderTree($row['id']);
    	}
		echo "</bookmarks>";
	}
	function folderTree($bkid) 
	{
		global $username;		
		$sql_ft = "SELECT * FROM bookmark where user='".$username."' and parentId='".$bkid."' order by point DESC ;";
		//print $sql_ft;
		$result_ft = mysql_query($sql_ft);
		while($row_ft = mysql_fetch_array($result_ft))
		{
			echo "<bookmark id=\"".$row_ft['id']."\" parentId=\"".$row_ft['parentId']."\" title=\"".$row_ft['title']."\" url=\"".$row_ft['url']."\" />";
			echo "</bookmark>\n";
			folderTree($row_ft['id']);
    	}
	}
?>


