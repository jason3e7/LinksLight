<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<TITLE>Bookmarks</TITLE>
<H1>Bookmarks</H1>
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
		
		echo "<DT><H3 PERSONAL_TOOLBAR_FOLDER=\"true\">書籤列</H3>\n<DL><p>\n";

		$sql = "SELECT * FROM bookmark where user='".$_GET["id"]."' and parentId='1' order by point DESC ;";		
		$result = mysql_query($sql);
		while($row = mysql_fetch_array($result))
		{
			if($row['url'])
			{
				echo "<DT><A HREF=\"".$row['url']."\">".$row['title']."</A>\n";
			}
			else
			{
				echo "<DT><H3>".$row['title']."</H3>\n<DL><p>\n";
				/*go to tree*/
				folderTree($row['id']);
				echo "</DL><p>\n";
			}
    	}
		echo "</DL><p>\n";
	}
	function folderTree($bkid) 
	{
		global $username;		
		$sql_ft = "SELECT * FROM bookmark where user='".$username."' and parentId='".$bkid."' order by point DESC ;";	
		//print $sql_ft;
		$result_ft = mysql_query($sql_ft);
		while($row_ft = mysql_fetch_array($result_ft))
		{
			if($row_ft['url'])
			{
				echo "<DT><A HREF=\"".$row_ft['url']."\">".$row_ft['title']."</A>\n";
			}
			else
			{
				echo "<DT><H3>".$row_ft['title']."</H3>\n<DL><p>\n";
				/*go to tree*/
				folderTree($row_ft['id']);
				echo "</DL><p>\n";
			}
    	}
	}
?>




