<?php
include('../connection.php');
if(isset($_GET['status']))
{
$status1=$_GET['status'];
$query= "SELECT * FROM ranks WHERE id='$status1'";
$select=mysqli_query($conn,$query);
while($row=mysqli_fetch_assoc($select))
{
$status_var=$row['active'];
if($status_var=='0')
{
$status_state=1;
}
else
{
$status_state=0;
}
$q="UPDATE ranks SET active='$status_state' WHERE id='$status1' ";
$update=mysqli_query($conn,$q);
if($update)
{
header("Location:active_admin.php");
}
else
{
echo "ERROR!!!";
}
}
?>
<?php
}
?>