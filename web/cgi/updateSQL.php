<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php
    $dbhost = 'localhost';
    $dbuser = '';
    $dbpass = '';
    $dbname = 'bookmarks';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error with MySQL connection');
    mysql_query("SET NAMES 'utf8'");
    mysql_select_db($dbname);


	include("XMLParser.php");
	
	$xml=$_GET["xml"];

	
    $sql = "SELECT * FROM user where user='".$_GET["id"]."' and password='".$_GET["password"]."';";
	//print $sql;
	$result = mysql_query($sql) or die('MySQL query error');
	if(mysql_num_rows($result)!=0)
	{	
		//Get the XML document loaded into a variable
		//$xml = file_get_contents('new.xml');
		//Set up the parser object
		$parser = new XMLParser($xml);

		//Work the magic...
		$parser->Parse();
		

		foreach($parser->document->bookmark as $bookmark)
		{    
			//url or folder existence 
			if($bookmark->tagAttrs['url']=="")
			{
				$sql = "SELECT * FROM bookmark where user='".$_GET["id"]."' and title='".$bookmark->tagAttrs['title']."';";
				$result = mysql_query($sql);			
				if(mysql_num_rows($result)!=0)
				{
					$upsql = "UPDATE bookmark SET id='".$bookmark->tagAttrs['id']."',parentId='".$bookmark->tagAttrs['parentid']."' ";
					$upsql =$upsql."WHERE user='".$_GET["id"]."' and title='".$bookmark->tagAttrs['title']."';";	
					mysql_query($upsql);
					//print $upsql."<br>";
					//print "existence<br>";
				}
				else // not existence
				{
				
					$insql = "INSERT INTO bookmark(SQLid,user,id,parentId,title,url,point)VALUES";
					$insql = $insql."(null,'".$_GET["id"]."','".$bookmark->tagAttrs['id']."','".$bookmark->tagAttrs['parentid']."','".$bookmark->tagAttrs['title']."','".$bookmark->tagAttrs['url']."','0');";	
					mysql_query($insql);
					//print $insql."<br>";
					//print "not existence<br>";
				}
			}
			else
			{
				$sql = "SELECT * FROM bookmark where user='".$_GET["id"]."' and url='".$bookmark->tagAttrs['url']."';";
				$result = mysql_query($sql);			
				if(mysql_num_rows($result)!=0)
				{
				
					$upsql = "UPDATE bookmark SET id='".$bookmark->tagAttrs['id']."',parentId='".$bookmark->tagAttrs['parentid']."',title='".$bookmark->tagAttrs['title']."';";
					$upsql =$upsql."WHERE user='".$_GET["id"]."' and url='".$bookmark->tagAttrs['url']."';";	
					mysql_query($upsql);
					//print $upsql."<br>";
					//print "existence<br>";
				}
				else // not existence
				{
				
					$insql = "INSERT INTO  bookmark(SQLid,user,id,parentId,title,url,point)VALUES";
					$insql = $insql."(null,'".$_GET["id"]."','".$bookmark->tagAttrs['id']."','".$bookmark->tagAttrs['parentid']."','".$bookmark->tagAttrs['title']."','".$bookmark->tagAttrs['url']."','0');";	
					mysql_query($insql);
					//print $insql."<br>";
					//print "not existence<br>";
				}
			}
		}
		

		/* xml test
		//Get the XML document loaded into a variable
		$xml = file_get_contents('updateSQL.xml');
		//Set up the parser object
		$parser = new XMLParser($xml);

		//Work the magic...
		$parser->Parse();
		

		foreach($parser->document->bookmark as $bookmark)
		{    
			echo $bookmark->tagAttrs['id'];
			echo " ";		
			echo $bookmark->tagAttrs['parentid'];
			echo " ";
			echo $bookmark->tagAttrs['url'];	
			echo " ";			
			echo $bookmark->tagAttrs['title'];
			echo "<br>";
			
		}
		//echo $parser->document->bookmark[0]->tagAttrs['title'];
		*/

		// for test
		//$sql = "UPDATE user SET text='".$_GET["xml"]."' where user='".$_GET["id"]."';";
		//$sql = "UPDATE user SET text='".$xml."' where user='".$_GET["id"]."';";
		//mysql_query($sql);
		
	}
?>
