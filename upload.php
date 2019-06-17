<?php

include("../connection.php");
session_start();
if(isset($_POST['submit']))
{
$filename = $_FILES["file"]["name"];
$tempname = $_FILES["file"]["tmp_name"];
$filesize = $_FILES["file"]["size"];
$fileerror = $_FILES["file"]["error"];
$filetype = $_FILES["file"]["type"];
$fileext = explode('.',$filename);
$fileactext = strtolower(end($fileext));
$allowed = array('jpg','jpeg','png');



if(in_array($fileactext,$allowed)){
  if($fileerror ===0 ){
      if($filesize < 1000000){
        $filenamenew = uniqid('',true).".".$fileactext;
        $filedestn = "stuadmin/ " .$filenamenew;
        $mails= $_SESSION['user_name'];
        $q="SELECT picsource FROM ranks WHERE email='$mails'";
        $d=mysqli_query($conn,$q);
        $t=mysqli_num_rows($d);
         if($t==1)
         {
         while($result=mysqli_fetch_array($d))
         {
          if($result['picsource']=="stuadmin/default.jpg")
          {
          move_uploaded_file($tempname,$filedestn);
          $query ="UPDATE ranks SET picsource='$filedestn' WHERE email='$mails'";
          $data= mysqli_query($conn,$query);
          header("Location:settings.php?uploadsuccess");
          }
          else
          {
          $u=unlink($result['picsource']);
          if($u)
          {
          move_uploaded_file($tempname,$filedestn);
          $query ="UPDATE ranks SET picsource='$filedestn' WHERE email='$mails'";
          $data= mysqli_query($conn,$query);
          header("Location:settings.php?uploadsuccess");
          }
          else
         {
          move_uploaded_file($tempname,$filedestn);
          $query ="UPDATE ranks SET picsource='$filedestn' WHERE email='$mails'";
          $data= mysqli_query($conn,$query);
          header("Location:settings.php?uploadsuccess");   
         }   
         }
         }
         }
         else
         {
          move_uploaded_file($tempname,$filedestn);
          $query ="UPDATE ranks SET picsource='$filedestn' WHERE email='$mails'";
          $data= mysqli_query($conn,$query);
          header("Location:settings.php?uploadsuccess");   
         }
         }
      else
      {
         echo "Your file is too big!";
      }
      
  }
  else{
      echo "There was an error uploading your file!";
  }
}
else
{
 echo "You cannot upload files of this type!";
}
}
?>
