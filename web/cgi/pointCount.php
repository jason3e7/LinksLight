<?php
    $dbhost = 'localhost';
    $dbuser = '';
    $dbpass = '';
    $dbname = 'bookmarks';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname);


	$username=$_GET["user"];

    $sql = "SELECT * FROM user where user='".$_GET["user"]."' and password='".$_GET["password"]."';";
	//print $sql;
	$result = mysql_query($sql) or die('MySQL query error');
	if(mysql_num_rows($result)!=0)
	{
		$sql = "SELECT * FROM bookmark where user='".$_GET["user"]."' and parentId='1' order by orderNum ;";	
		$result = mysql_query($sql);
		while($row = mysql_fetch_array($result))
		{
			if($row['url']=="")
			{
				$tempnum=folderTree($row['id']);
				$upsql = "UPDATE bookmark SET point='".$tempnum."' ";
				$upsql =$upsql."WHERE user='".$username."' and title='".$row['title']."';";	
				mysql_query($upsql);
			}
			
    	}
	}
	function folderTree($bkid) 
	{
		global $username;		

		$tempCount=0;
		$sql_ft = "SELECT * FROM bookmark where user='".$username."' and parentId='".$bkid."' order by orderNum ;";
		//print $sql_ft;
		$result_ft = mysql_query($sql_ft);
		while($row_ft = mysql_fetch_array($result_ft))
		{
			if($row_ft['url']=="")
			{
				$tempnum=folderTree($row['id']);
				$upsql = "UPDATE bookmark SET point='".$tempnum."' ";
				$upsql =$upsql."WHERE user='".$username."' and title='".$row_ft['title']."';";	
				mysql_query($upsql);
				$tempCount=$tempCount+$tempnum;
			}
			else
			{
				$tempCount=$tempCount+(int)($row_ft['point']);
				//print $row_ft['id']." ".$row_ft['point']." ";
			}
    	}
		//print $bkid." ".$tempCount."<br>";
		return $tempCount;
	}
?>
