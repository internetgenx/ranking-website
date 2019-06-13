<?php
include('connection.php');

$query="SELECT * FROM cms";
$data=mysqli_query($data);
$total=mysqli_num_rows($data);
if($total!=0)
{
  while($result=mysqli_fetch_assoc($data))
  {
      echo ''
  }
}

?>