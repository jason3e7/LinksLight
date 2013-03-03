<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php
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
		 
		//url or folder existence 
		if($_GET['url']=="")
		{
			$sql = "SELECT * FROM bookmark where user='".$_GET["user"]."' and title='".$_GET['title']."';";
			$result = mysql_query($sql);			
			if(mysql_num_rows($result)!=0)
			{
				$upsql = "UPDATE bookmark SET id='".$_GET['id']."',parentId='".$_GET['parentid']."',uptime='".$_GET['time']."',orderNum='".$_GET['orderNum']."'  ";
				$upsql =$upsql."WHERE user='".$_GET["user"]."' and title='".$_GET['title']."';";	
				mysql_query($upsql);

			}
			else // not existence
			{
				
				$insql = "INSERT INTO bookmark(SQLid,user,id,parentId,title,url,point,orderNum,uptime)VALUES";
				$insql = $insql."(null,'".$_GET["user"]."','".$_GET['id']."','".$_GET['parentid']."','".$_GET['title']."','".$_GET['url']."','0','".$_GET['orderNum']."','".$_GET['time']."');";	
				mysql_query($insql);

			}
		}
		else
		{
			$sql = "SELECT * FROM bookmark where user='".$_GET["user"]."' and url='".$_GET['url']."';";
			$result = mysql_query($sql);			
			if(mysql_num_rows($result)!=0)
			{	
				$upsql = "UPDATE bookmark SET id='".$_GET['id']."',parentId='".$_GET['parentid']."',title='".$_GET['title']."',uptime='".$_GET['time']."',orderNum='".$_GET['orderNum']."' ";
				$upsql =$upsql."WHERE user='".$_GET["user"]."' and url='".$_GET['url']."';";	
				mysql_query($upsql);

			}
			else // not existence
			{
				
				$insql = "INSERT INTO  bookmark(SQLid,user,id,parentId,title,url,point,orderNum,uptime)VALUES";
				$insql = $insql."(null,'".$_GET["user"]."','".$_GET['id']."','".$_GET['parentid']."','".$_GET['title']."','".$_GET['url']."','0','".$_GET['orderNum']."','".$_GET['time']."');";	
				mysql_query($insql);
				
			}
		}	
	}
?>
