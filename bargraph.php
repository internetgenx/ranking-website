<?php
  include('connection.php');
            //Connect to database
            //Create query to fetch the records
            $query = "SELECT * FROM points";

            //Execute the query
            $visitors = mysqli_query($conn, $query);

            //Create an array to hold the records
            $records = array();

            //Retrive the records and add it to the array
            while($row  = mysqli_fetch_assoc($visitors)){
                $records[] = $row;
            }

            print(json_encode($records));

            //Clean up
            mysqli_free_result($visitors);

            //Close connection
?>