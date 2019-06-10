 <?php
   include('connection.php');
   $query="SELECT ranks.points_fk,points.rank,ranks.schoolname,ranks.cityname,ranks.statename,points.score FROM ranks,points WHERE ranks.points_fk=points.id ORDER BY points.rank";
   $data=mysqli_query($conn,$query);
   $total=mysqli_num_rows($data);
     $i=0;
    if($total !=0)
  {   
    while($result =mysqli_fetch_assoc($data))
    {     $i++;
           $id=$result['points_fk'];
           $q="SELECT * FROM points WHERE id='$id' ";
           $d=mysqli_query($conn,$q);
           $t=mysqli_num_rows($d);
           if($t!=0)
             {  
              while($r=mysqli_fetch_assoc($d))
                   {  $records = array();
                       $records[]=$r;
                        echo $i; 
                   }
                
                }
            }
        echo $i;
    }
     else
    {
    echo "No Record Found";
    }
 ?> 