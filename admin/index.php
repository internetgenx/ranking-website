<?php 
session_start();
error_reporting(0);
include("connection.php");
if($_SESSION['user_name'])
{
 header("location:admin_panel.php");
}
?>
