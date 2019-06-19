<?php
include('connection.php');
?>
<?php 
$mn=$_GET['sn'];
$qn=mysqli_real_escape_string($conn,$mn);
if(!$qn)
{
    header('location:about_school.php');
}
else
{
$query="SELECT * FROM cms,points WHERE cms.schoolname='$qn' AND cms.cms_fk=points.pid";
$data=mysqli_query($conn,$query);
$total=mysqli_num_rows($data);
if($total!=0)
{
      while($result=mysqli_fetch_assoc($data))
      {

?>
<html>

<head>
    <title>Ranking Website</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="<?php echo $result['keyword'] ?>">
    <meta name="description" content="<?php echo $result['description'] ?>">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="cmsstyle.css">
</head>

<body>
   <?php include('navbar.php'); ?>
    <div class="navigation-menu">
        <ul class="navigation-menu-list">
            <li><a href="#overview" rel="m_PageScroll2id" data-ps2id-offset="100">Overview</a></li>
            <li><a href="#academics" rel="m_PageScroll2id" data-ps2id-offset="100">Academics</a></li>
            <li><a href="#admission" rel="m_PageScroll2id" data-ps2id-offset="100">Admission</a></li>
            <li><a href="#achievements" rel="m_PageScroll2id" data-ps2id-offset="100">Achievements</a></li>
            <li><a href="#photo-gallery" rel="m_PageScroll2id" data-ps2id-offset="100">Photo Galary</a></li>
        </ul>
        <div class="clear"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="contentPart card bg-light col-md-12">
                <div id="quickFacts" class="cardBlk checkBlk">
                    <div class="headingContainer">
                        <h2 class="blockHeading"><?php echo $result['schoolname'] ?></h2>
                    </div>
                    <div class="quickFact">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/rating.svg" alt="Rating" width="45">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">
                                            Ranked in School
                                        </div>
                                        <div class="rightBtm"><strong class="blockHeading"><?php echo $result['rank'] ?></strong></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/ownership.svg" alt="Ownership" width="45">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">Ownership<i class="careers-info-tip"></i></div>
                                        <div class="rightBtm"><?php echo $result['type'] ?><strong class="blockHeading"></strong> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/institute.svg" alt="Institute" width="45">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">Type of Board</div>
                                        <div class="rightBtm"><strong class="blockHeading"><?php echo $result['board'] ?></strong></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/gender_coed.svg" alt="Coed" width="45">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">Genders Accepted</div>
                                        <div class="rightBtm"><strong class="blockHeading"><?php echo $result['gender'] ?></strong> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <ul class="baseUl">
                                <li>Estd. Year: <strong><?php echo $result['establish']?></strong></li>
                                <li>Campus Size: <strong><?php echo $result['campus']?> Acres </strong></li>
                                <li>Total Faculty: <strong><?php echo $result['teachers']?></strong></li>
                                <li>Total Student Enrollments: <strong><?php echo $result['students']?></strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div id="post-181" class="post-181 post type-post status-publish format-standard has-post-thumbnail hentry category-schools">
            <div class="p20">
                <div id="overview">
                    <div class="row">
                        <div class="col-md-4">
                            <h4>Overview</h4>
                            <p><?php echo $result['overview'] ?></p>
                        </div>
                        <?php
                        $id=$result['cms_fk'];
                        $q="SELECT * FROM points WHERE pid='$id' ";
                        $d=mysqli_query($conn,$q);
                        $t=mysqli_num_rows($d);
                        if($t!=0)
                        {  
                            while($r=mysqli_fetch_assoc($d))
                            {  
                             $records = array();
                             $records[]=$r;
                             $myDataRawArray = [$r['teacher_welfare'],$r['competance_of_faculty'],$r['acd_reputation'],$r['co_curi_edu'],$r['sports'],$r['life_skill'],$r['individual_attention'],$r['mgm_quality'],$r['parental_involve'],$r['infrastructure'],$r['internationalism'],$r['special_needs'],$r['value_for_money'],$r['comm_service'],$r['research']];
                              $y=json_encode($myDataRawArray);
							  //array_push($z, $y);
							 
							  
                            }
                        }
             ?>
                        <div class="col-md-8">
                            <canvas id="barChart" class="cach" style="margin:50px;"></canvas>
                        </div>
                    </div>
                </div>
                <div id="academics">
                    <h4>Academics</h4>
                    <p><?php echo $result['academics'] ?></p>
                </div>
                <div id="admission">
                    <h4>Admission</h4>
                    <p><?php echo $result['admission'] ?></p>
                </div>
                <div id="achievements">
                    <h4>Achievement</h4>
                    <p><?php echo $result['uniques'] ?></p>
                </div>
                
                <div id="photo-gallery">
                    <h4>Photo Galary</h4>
                    <ul class="image-gallery">
                        <?php
                 $ddn=stripcslashes($qn); 
                 $files = glob("spadmin/media/$ddn/*.*");
                for ($i = 0; $i < count($files); $i++) 
                {
                    $image = $files[$i];
                    echo '<li><img src="' . $image . '" alt="Random image" class="img1"/></li>';
                }
                        ?>
                    </ul>
                    <div class="clear"></div>
                    <div class="embed-container">
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
<?php
      }
}
else
{
    header('location:about_school.php');
}
}
    ?>
    <?php include('footer.php'); ?>
    <script>
        $(document).ready(function(){
            $.ajax({
                beforeSend: function() {
                    console.log("Making AJAX request");
                },
                //cache: false,
                url:"<?php echo basename($_SERVER['PHP_SELF']);?>",
                //dataType: 'json',
				//console.log(myDataRawArray);
                success: function(res) {
                    var intermediate_data = <?php echo json_encode($y)?>;
					//console.log(intermediate_data);
						
						var graphLabels = ['Teacher Welfare','Competance of Faculty','Academic Reputation','Co-Curicular Education','Sports','Life Skills','Individual Attention to Students','Leadership/Management Quality','Parental Involvement','Infrastructure Provision','Internationalism','Special Needs Education','Value for Money','Community Service','Research Based Education'];
						
						var graphData = eval(intermediate_data);
					    //console.log(graphData);
						console.log("Before draw");

						//Make a call to the function to draw the bar graph
						drawGraph(graphLabels, graphData);
						console.log("After draw");
							
                    
                },
                complete: function() {
                    console.log("AJAX request done");
                },
                error: function() {
                    console.log("Error occurred during AJAX request")
                }               
            });
        }); 
       
        function drawGraph(Labels, Data){
            console.log(Data);
            var chid="barChart";
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
