<?php

$query="Select * FROM cms where schoolname='$sn'";
$newcontent = file_get_contents("about_school.html");
if (!file_exists('newname.html')) 
{ 
$handle = fopen('newname.html','w+'); 
fwrite($handle,$newcontent); 
fclose($handle); 
}
echo '<a href="newname.html">Here</a>';
?>
