
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
include("db.php");

$user = $_POST['id'];
$pw = $_POST['pw'];
$pw2 = $_POST['pw2'];
//$mail = $_POST['mail'];

//判斷帳號密碼是否為空值
//確認密碼輸入的正確性
if($user != null && $pw != null && $pw2 != null && $pw == $pw2)
{
        //新增資料進資料庫語法
        $sql = "insert into user (id, user, password, uptime) values ('null', '$user', '$pw', 'true')";
        if(mysql_query($sql))
        {
                echo '新增成功!';
                echo '<meta http-equiv=REFRESH CONTENT=2;url=index.htm>';
        }
        else
        {
                echo '新增失敗!';
                echo '<meta http-equiv=REFRESH CONTENT=2;url=index.htm>';
        }
}
else
{
        echo '資料不完全!';
        echo '<meta http-equiv=REFRESH CONTENT=2;url=index.htm>';
}
?>
