<?php
header("content-type:text/html;charset=utf-8");
 include "../public/db.php";

$aname=addslashes(htmlspecialchars($_POST["aname"]));
$apass=md5($_POST["apass"]);
$anicheng=$_POST["anicheng"];
$aphoto=$_POST["aphoto"];


$sql="insert into admin (`aname`,`apass`,`anicheng`,`aphoto`) VALUES ('{$aname}','{$apass}','{$anicheng}','{$aphoto}')";

if($db->exec($sql)){
    echo "<script>alert('插入成功');location.href='addUser.php';</script>";
}
?>


