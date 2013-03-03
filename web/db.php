<?php

$db_server = "localhost";
$db_name = "bookmarks";
$db_user = "";
$db_passwd = "";

if(!@mysql_connect($db_server, $db_user, $db_passwd))
        die("Link error");

mysql_query("SET NAMES utf8");

if(!@mysql_select_db($db_name))
        die("DB error");
?> 
