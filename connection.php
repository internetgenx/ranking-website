<?php
 
$servername="localhost";
$username="root";
$password="";
$dbname="ranking";

$conn=mysqli_connect($servername,$username,$password,$dbname);

if($conn)
{
}
else
{
    die("Failed:".mysqli_connect_error());
}
?>