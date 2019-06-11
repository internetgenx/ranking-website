<!Doctype html>
<html>

<head>
    <title>Ranking Website</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <?php
        include("connection.php");
        ?>
</head>

<body>
    <nav class="navbar sticky-top  navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class=" navbar ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="wrapper">
        <div class="list">
            <div class="list__header">
                <h1 style="text-align: center">School Ranking in India</h1>
            </div>
            <?php
   $query="SELECT ranks.points_fk,points.rank,ranks.schoolname,ranks.cityname,ranks.statename,points.score FROM ranks,points WHERE ranks.points_fk=points.id ORDER BY points.rank";
   $data=mysqli_query($conn,$query);
   $total=mysqli_num_rows($data);
   $i=0;
    if($total !=0)
  { 
?>
            <div class="list__body">
                <table class="list__table" id="myTable">
                    <tr class="list__head" style="border:1px solid grey;">
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">Rank</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">School Name</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">City Name</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">State Name</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">Total Score</span></th>
                    </tr>
                    <tr class="list__head" style="border:1px solid grey;">
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">#</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value"><input class="form-control" type="text" placeholder="Search By School Name" aria-label="Search" id="myInput" onkeyup="myFunction()"></span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">
                                <input class="form-control" type="text" placeholder="Search By City Name" aria-label="Search" id="myInput2" onkeyup="myFunction2()"></span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">
                                <input class="form-control" type="text" placeholder="Search By State Name" aria-label="Search" id="myInput3" onkeyup="myFunction3()"></span></th>
                        <th class="list__cell"><span class="list__value">#</span></th>
                    </tr>
                                    <?php
    while($result =mysqli_fetch_assoc($data))
    { $i++;
     ?>     
                    <tr class="list__row color<?php echo $result['rank'] ?>" data-image="icon_schools.png" >
                        <td class="list__cell cdd<?php echo $result['rank'] ?>"><span class="list__value"><?php echo $result['rank'] ?></span></td>
                        <td class="list__cell"><span class="list__value"><?php echo $result['schoolname'] ?></span></td>
                        <td class="list__cell"><span class="list__value"><?php echo $result['cityname'] ?></span></td>
                        <td class="list__cell"><span class="list__value"><?php echo $result['statename'] ?></span></td>
                         <td class="list__cell"><span class="list__value"><?php echo $result['score'] ?></span><small class="list__label">Points</small></td>
                        <td class="list__cell" style="display:none;" ><span class="list__value" ><?php echo $result['points_fk'] ?></span></td>
                        <?php
                        $id=$result['points_fk'];
                        $q="SELECT * FROM points WHERE id='$id' ";
                        $d=mysqli_query($conn,$q);
                        $t=mysqli_num_rows($d);
                        if($t!=0)
                        {  
                            while($r=mysqli_fetch_assoc($d))
                            {  $records = array();?>
        
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['teacher_welfare']?></span></td>
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['competance_of_faculty']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['acd_reputation']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['co_curi_edu']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['sports']?></span></td>
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['life_skill']?></span></td>
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['individual_attention']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['mgm_quality']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['parental_involve']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['infrastructure']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['internationalism']?></span></td>
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['special_needs']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['value_for_money']?></span></td> 
                               <td class="list__cell"style="display:none;" ><span class="list__value" ><?php echo $r['comm_service']?></span></td> 
                               <td class="list__cell" style="display:none;"><span class="list__value" ><?php echo $r['research']?></span></td>
                               <td class="list__cell" style=""><span class="list__value"><canvas id="barChart<?php echo $i; ?>" class="cach"></canvas></span></td>
                                
                        <?php
                             $records[]=$r;
							 $myDataRawArray = [$r['teacher_welfare'],$r['competance_of_faculty'],$r['acd_reputation'],$r['co_curi_edu'],$r['sports'],$r['life_skill'],$r['individual_attention'],$r['mgm_quality'],$r['parental_involve'],$r['infrastructure'],$r['internationalism'],$r['special_needs'],$r['value_for_money'],$r['comm_service'],$r['research']];
							 //print_r($myDataRawArray);
                              $x=json_encode($records);
							  $y=json_encode($myDataRawArray);
							  $z[]=$y;
							  //array_push($z, $y);
							  json_encode($z[0]);
							 
							  
                            }
                        }
                        ?>
                        
                        
                       
                    </tr>
                    <?php
                    }
    }
     else
    {
    echo "No Record Found";
    }
    ?>        
                </table>
            </div>
        </div>
    </div>
    <div class="overlay"></div>
    <div class="sidebar">
        <div class="sidebar__header">
            <div class="sidebar__title">School Infomation</div>
            <button class="button button--close">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="15" y1="9" x2="9" y2="15"></line>
                    <line x1="9" y1="9" x2="15" y2="15"></line>
                </svg>
            </button>
        </div>
        <div class="sidebar__body"></div>
        </div>
    <!-- Footer -->
    <footer class="page-footer special-color-dark pt-4">

        <!-- Footer Links -->
        <div class="container text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-3 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Very long link 1</a>
                        </li>
                        <li>
                            <a href="#!">Very long link 2</a>
                        </li>
                        <li>
                            <a href="#!">Very long link 3</a>
                        </li>
                        <li>
                            <a href="#!">Very long link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-3 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-3 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-3 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2018 Copyright:
            <span>XYZ Company</span>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="app.js"></script>
    
<script>
  function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function myFunction2() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput2");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function myFunction3() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput3");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
 <script>
        $(document).ready(function(){
            $.ajax({
                beforeSend: function() {
                    console.log("Making AJAX request");
                },
                //cache: false,
                //url: 'index.php',
                //dataType: 'json',
				//console.log(myDataRawArray);
                success: function(res) {
					var intermediate_data = <?php echo json_encode($z)?>;
					//console.log(intermediate_data);
					for(var i=0;i<myTable.rows.length-2;i++){
						
						var graphLabels = ['Teacher Welfare','Competance of Faculty','Academic Reputation','Co-Curicular Education','Sports','Life Skills','Individual Attention to Students','Leadership/Management Quality','Parental Involvement','Infrastructure Provision','Internationalism','Special Needs Education','Value for Money','Community Service','Research Based Education'];
						
						var graphData =eval(intermediate_data[i]);
					    //console.log(graphData);
						console.log("Before draw");

						//Make a call to the function to draw the bar graph
						drawGraph(graphLabels, graphData, i+1);
						console.log("After draw");
							
					}
                    
                },
                complete: function() {
                    console.log("AJAX request done");
                },
                error: function() {
                    console.log("Error occurred during AJAX request")
                }               
            });
        }); 
       
        function drawGraph(Labels, Data, i){
            console.log(Data);
            var chid="barChart"+i;
            var ctx= document.getElementById(chid);
            if(ctx.getContext)
            {
            var ctxB= ctx.getContext('2d');
            var myBarChart = new Chart(ctxB, {
                type: 'horizontalBar',
                data: {
                    labels: Labels,
                    datasets: [{
                        label: 'no. of visits',
                        data: Data,
                        backgroundColor:'#0318CF',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true,
                                steps: 10,
                                stepValue: 5,
                                max: 100
                            }
                        }]
                    }
                }
            });
            }
        }
        
    </script>
	
</body>
</html>