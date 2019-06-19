<?php include('connection.php'); ?>
<html>

<head>
    <title>Ranking Website</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="cmsstyle.css">
</head>

<body>
    <?php include('navbar.php') ?>
    <div class="navigation-menu">
        <ul class="navigation-menu-list">
            <li><a href="#overview" rel="m_PageScroll2id" data-ps2id-offset="100">Overview</a></li>
            <li><a href="#academics" rel="m_PageScroll2id" data-ps2id-offset="100">Academics</a></li>
            <li><a href="#admission" rel="m_PageScroll2id" data-ps2id-offset="100">Admission</a></li>
            <li><a href="#achievements" rel="m_PageScroll2id" data-ps2id-offset="100">Achievements</a></li>
        </ul>
        <div class="clear"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="contentPart card bg-light col-md-12">
                <div id="quickFacts" class="cardBlk checkBlk">
                    <div class="headingContainer">
                        <h2 class="blockHeading">Quick Facts</h2>
                    </div>
                    <div class="quickFact">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/rating.svg" alt="Rating" width="37">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">
                                            Ranked in School
                                        </div>
                                        <div class="rightBtm"><strong class="blockHeading">
                                                3rd
                                            </strong></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/ownership.svg" alt="Ownership" width="37">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">Ownership<i class="careers-info-tip"></i></div>
                                        <div class="rightBtm"><strong class="blockHeading">Public/Government</strong> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/institute.svg" alt="Institute" width="37">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">Type of Board</div>
                                        <div class="rightBtm"><strong class="blockHeading">CBSE</strong></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="display-table vtop">
                                    <div class="display-cell leftBlk">
                                        <img src="https://static.careers360.mobi/images/frontend/desktop/gender_coed.svg" alt="Coed" width="37">
                                    </div>
                                    <div class="display-cell rightBlk">
                                        <div class="rightUpr">Genders Accepted</div>
                                        <div class="rightBtm"><strong class="blockHeading">Co-Ed</strong> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <ul class="baseUl">
                                <li>Estd. Year: <strong> 1958 </strong></li>
                                <li>Campus Size: <strong>550 Acres </strong></li>
                                <li>Total Faculty: <strong> 581</strong></li>
                                <li>Total Student Enrollments: <strong> 6193</strong></li>
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
                            <p>Ranked as India&rsquo;s premier legacy boarding school for four successive years (2007-2010) in Education World &#8211; C fore India&rsquo;s Most Respected Schools Survey, The Doon School has attained an iconic status within India. The Doon School (TDS) has been the nursery of the country&rsquo;s most famous political, bureaucracy, industry professionals and media leaders.</p>
                            <p>It was established in the year 1935 as an organic Indian public school and modelled along the lines of the legendary British boarding schools like Eton, Harrow, Winchester and Marlborough. </p>
                            <p>The best of British education like the teaching of science, good teacher-student relationship, high academic standards, organised games etc. was adapted. Self &ndash;evidently this has been highly successful because over the past 76 years TDS has built itself a reputation of delivering well developed holistic secondary education.</p>
                            <p>The school’s compact campus is near-optimally laid out and landscaped and its red brick and stone buildings house well-equipped biology, physics and chemistry labs, a state-of the-art computer department and IT centre with 120 terminals, the Rajiv Gandhi Design and Technology Centre and unique physics and natural history museums. Moreover the school’s Kilachand Library offers access to 18,000 documents comprising books and multimedia.</p>
                            <p>TDS also offers excellent sports facilities which include 25 –metre swimming pool, four squash court, two basketball court, four tennis court, cricket ground and dedicated hockey and soccer fields. Boxing, badminton, gymnastics and table tennis playing facilities are also available.</p>
                        </div>
                        <div class="col-md-8">
                            <canvas id="barChart" class="cach" style="margin:50px;"></canvas>
                        </div>
                    </div>
                </div>
                <div id="academics">
                    <h4>Academics</h4>
                    <p>
                        <p>The school admits boys into class VII and is affiliated to the Council for Indian School Certificate Examination, Delhi (CISCE). It is also affiliated to Geneva-based International Baccalaureate Organisation and offers International Baccalaureate Diploma Programme (IBDP).</p>
                        <p>The academic year is divided into two terms:</p>
                        <p>Spring Term from February 1st to May 31st</p>
                        <p>Autumn Term from August 1st to November 30th.</p>
                        <p>The school follows a five and a half day week schedule and the overall student teacher ratio is 10:1 with the average strength of a class being around 20 students.</p>
                        <p>In addition to the academic subjects, art, yoga, music, carpentry, Sanskrit, and design and technology are compulsorily taught. The students can also opt for German or French as additional languages while Sanskrit remains compulsory.</p>
                </div>
                <div id="admission">
                    <h4>Admission</h4>
                    <p>
                        <p>The school admits boys in January and April every year. In January, it admits into the VIII standard and in April it admits to the VII standard. The boys must be above the age of 11 years to apply for admission in a two-step process.</p>
                        <p>An entrance examination is held every year in November at Dehradun and in major metropolitan cities of India. The test consist of four papers- English, Hindi, mathematics and general knowledge. Hindi is compulsory language up to and including the X standard.</p>
                        <p>Successful candidates are then called for a personal interview which usually happens in December.</p>
                        <p>Fees: Annual tuition, board and lodging fees are currently Rs.4.05 lakh.</p>
                        <h4>Achievement</h4>
                        <p>The best of British education like the teaching of science, good teacher-student relationship, high academic standards, organised games etc. was adapted. Self –evidently this has been highly successful because over the past 76 years TDS has built itself a reputation of delivering well developed holistic secondary education.</p>
                        <h4>Accomodation</h4>
                        <p>The school is divided into 5 houses and 2 holding houses. The young newcomers are placed under the personal care of the housemaster and his wife in the two holding houses called as the Foot House and the Martyn House.</p>
                        <p>The five main houses are Hyderabad, Jaipur, Kashmir, Oberoi and Tata. The central dining hall is where the meals are served.</p>
                </div>
                <div id="achievements">
                    <h4>Achievement</h4>
                    <p>
                        <p>The school admits boys in January and April every year. In January, it admits into the VIII standard and in April it admits to the VII standard. The boys must be above the age of 11 years to apply for admission in a two-step process.</p>
                        <p>An entrance examination is held every year in November at Dehradun and in major metropolitan cities of India. The test consist of four papers- English, Hindi, mathematics and general knowledge. Hindi is compulsory language up to and including the X standard.</p>
                        <p>Successful candidates are then called for a personal interview which usually happens in December.</p>
                        <p>Fees: Annual tuition, board and lodging fees are currently Rs.4.05 lakh.</p>
                        <p>The best of British education like the teaching of science, good teacher-student relationship, high academic standards, organised games etc. was adapted. Self –evidently this has been highly successful because over the past 76 years TDS has built itself a reputation of delivering well developed holistic secondary education.</p>
                        <p>The school is divided into 5 houses and 2 holding houses. The young newcomers are placed under the personal care of the housemaster and his wife in the two holding houses called as the Foot House and the Martyn House.</p>
                        <p>The five main houses are Hyderabad, Jaipur, Kashmir, Oberoi and Tata. The central dining hall is where the meals are served.</p>
                </div>
                <div id="photo-gallery">
                    <h4>Photo Galary</h4>
                    <ul class="image-gallery">
                        <li>
                            <img src="background.jpg" alt="" />
                        </li>
                        <li>

                            <img src="background.jpg" alt="" />
                        </li>
                    </ul>
                    <div class="clear"></div>
                    <div class="embed-container">
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    <?php include('footer.php'); ?>
    <script>
        $(document).ready(function() {
            $.ajax({
                beforeSend: function() {
                    console.log("Making AJAX request");
                },
                //cache: false,
                //url: 'index.php',
                //dataType: 'json',
                //console.log(myDataRawArray);
                success: function(res) {
                    //var intermediate_data = <?php echo json_encode($z)?>;
                    //console.log(intermediate_data);
                    var graphLabels = ['Teacher Welfare', 'Competance of Faculty', 'Academic Reputation', 'Co-Curicular Education', 'Sports', 'Life Skills', 'Individual Attention to Students', 'Leadership/Management Quality', 'Parental Involvement', 'Infrastructure Provision', 'Internationalism', 'Special Needs Education', 'Value for Money', 'Community Service', 'Research Based Education'];

                    var graphData = [1, 2, 3, 4, 5, 30, 3, 8, 9, 10, 11, 23, 4, 2, 1];
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

        function drawGraph(Labels, Data) {
            console.log(Data);
            var chid = "barChart";
            var ctx = document.getElementById(chid);
            if (ctx.getContext) {
                var ctxB = ctx.getContext('2d');
                var myBarChart = new Chart(ctxB, {
                    type: 'horizontalBar',
                    data: {
                        labels: Labels,
                        datasets: [{
                            label: 'no. of visits',
                            data: Data,
                            backgroundColor: '#0318CF',
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
