<?php

$worker1="server1";



$File = "/tmp/a.html";
$Handle = fopen($File, 'w');
$Data1 = "<h1>$worker1</h1>";
fwrite($Handle, $Data1);


?>

