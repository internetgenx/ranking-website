<!Doctype html>
<html>

<head>
    <title>Ranking Website</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
   $query="SELECT rank,schoolname,cityname,statename,score FROM ranks";
   $data=mysqli_query($conn,$query);
   $total=mysqli_num_rows($data);

    if($total !=0)
  { 
?>
            <div class="list__body">
                <table class="list__table">
                    <tr class="list__head" style="border:1px solid grey;">
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">Rank</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">School Name</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">City Name</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">State Name</span></th>
                        <th class="list__cell" style="border:1px solid grey;"><span class="list__value">Total Score</span></th>
                    </tr>
                    <tr class="list__head" style="border:1px solid grey;">
                        <td class="list__cell" style="border:1px solid grey;"><span class="list__value">#</span></td>
                        <td class="list__cell" style="border:1px solid grey;"><span class="list__value"><input class="form-control" type="text" placeholder="Search By School Name" aria-label="Search"></span></td>
                        <td class="list__cell" style="border:1px solid grey;"><span class="list__value">
                                <input class="form-control" type="text" placeholder="Search By City Name" aria-label="Search"></span></td>
                        <td class="list__cell" style="border:1px solid grey;"><span class="list__value">
                                <input class="form-control" type="text" placeholder="Search By State Name" aria-label="Search"></span></td>
                        <td class="list__cell"><span class="list__value">#</span></td>
                    </tr>
                                        <?php
    while($result =mysqli_fetch_assoc($data))
    {
     ?>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/lewis-hamilton/_jcr_content/image.img.1920.medium.jpg/1533294345447.jpg" data-nationality="British" data-dob="1985-01-07" data-country="gb">
                        <td class="list__cell"><span class="list__value"><?php echo $result['rank'] ?></span></td>
                        <td class="list__cell"><span class="list__value"><?php echo $result['schoolname'] ?></span></td>
                        <td class="list__cell"><span class="list__value"><?php echo $result['cityname'] ?></span>
                        <td class="list__cell"><span class="list__value"><?php echo $result['statename'] ?></span>
                        <td class="list__cell"><span class="list__value"><?php echo $result['score'] ?></span><small class="list__label">Points</small></td>
                    </tr>
                    <?php
                    }
    }
     else
    {
    echo "No Record Found";
    }
    ?>
                 <!--   <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/sebastian-vettel/_jcr_content/image.img.1920.medium.jpg/1533294389985.jpg" data-nationality="German" data-dob="1987-07-03" data-country="de">
                        <td class="list__cell"><span class="list__value">2</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/valtteri-bottas/_jcr_content/image.img.1920.medium.jpg/1536135115661.jpg" data-nationality="Finnish" data-dob="1989-08-28" data-country="fi">
                        <td class="list__cell"><span class="list__value">3</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/kimi-raikkonen/_jcr_content/image.img.1920.medium.jpg/1544714269466.jpg" data-nationality="Finnish" data-dob="1979-10-17" data-country="fi">
                        <td class="list__cell"><span class="list__value">4</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/daniel-ricciardo/_jcr_content/image.img.1920.medium.jpg/1544714300924.jpg" data-nationality="Australian" data-dob="1989-07-01" data-country="au">
                        <td class="list__cell"><span class="list__value">5</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/max-verstappen/_jcr_content/image.img.1920.medium.jpg/1536135200444.jpg" data-nationality="Dutch" data-dob="1997-09-30" data-country="nl">
                        <td class="list__cell"><span class="list__value">6</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    <tr class="list__row" data-image="https://via.placeholder.com/300" data-nationality="Spanish" data-dob="1981-07-29" data-country="es">
                        <td class="list__cell"><span class="list__value">7</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/nico-hulkenberg/_jcr_content/image.img.1920.medium.jpg/1536135087181.jpg" data-nationality="German" data-dob="1987-08-19" data-country="de">
                        <td class="list__cell"><span class="list__value">8</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/kevin-magnussen/_jcr_content/image.img.1920.medium.jpg/1536135077427.jpg" data-nationality="Danish" data-dob="1992-10-05" data-country="dk">
                        <td class="list__cell"><span class="list__value">9</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/carlos-sainz/_jcr_content/image.img.1920.medium.jpg/1544796007483.jpg" data-nationality="Spanish" data-dob="1994-09-01" data-country="es">
                        <td class="list__cell"><span class="list__value">10</span></td>
                        <td class="list__cell"><span class="list__value">Lewis Hamilton School</span></td>
                        <td class="list__cell"><span class="list__value">Mumbai</span>
                        <td class="list__cell"><span class="list__value">Maharashtra</span>
                        <td class="list__cell"><span class="list__value">95</span><small class="list__label">Points</small></td>
                    </tr> 
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/sergio-perez/_jcr_content/image.img.1920.medium.jpg/1536135110814.jpg" data-nationality="Mexican" data-dob="1990-01-26" data-country="mx">
                        <td class="list__cell"><span class="list__value">11</span></td>
                        <td class="list__cell"><span class="list__value">Sergio Pérez</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Force India</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">17</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/pierre-gasly/_jcr_content/image.img.1920.medium.jpg/1544714186959.jpg" data-nationality="French" data-dob="1987-07-03" data-country="fr">
                        <td class="list__cell"><span class="list__value">12</span></td>
                        <td class="list__cell"><span class="list__value">Pierre Gasly</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Toro Rosso</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">12</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/charles-leclerc/_jcr_content/image.img.1920.medium.jpg/1544714150783.jpg" data-nationality="Monegasque" data-dob="1997-10-16" data-country="mc">
                        <td class="list__cell"><span class="list__value">13</span></td>
                        <td class="list__cell"><span class="list__value">Charles Leclerc</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Sauber</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">9</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://via.placeholder.com/300" data-nationality="Belgian" data-dob="1992-03-26" data-country="be">
                        <td class="list__cell"><span class="list__value">14</span></td>
                        <td class="list__cell"><span class="list__value">Stoffel Vandoorne</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">McLaren</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">8</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/lance-stroll/_jcr_content/image.img.1920.medium.jpg/1544714229187.jpg" data-nationality="Canadian" data-dob="1998-10-29" data-country="ca">
                        <td class="list__cell"><span class="list__value">15</span></td>
                        <td class="list__cell"><span class="list__value">Lance Stroll</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Williams</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">4</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://via.placeholder.com/300" data-nationality="Swedish" data-dob="1990-09-02" data-country="se">
                        <td class="list__cell"><span class="list__value">16</span></td>
                        <td class="list__cell"><span class="list__value">Marcus Ericsson</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Sauber</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">2</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://via.placeholder.com/300" data-nationality="French" data-dob="1996-09-17" data-country="fr">
                        <td class="list__cell"><span class="list__value">17</span></td>
                        <td class="list__cell"><span class="list__value">Esteban Ocon</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Force India</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">1</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://via.placeholder.com/300" data-nationality="New Zealander" data-dob="1989-11-10" data-country="nz">
                        <td class="list__cell"><span class="list__value">18</span></td>
                        <td class="list__cell"><span class="list__value">Brendon Hartley</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Toro Rosso</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">1</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://www.formula1.com/content/fom-website/en/drivers/romain-grosjean/_jcr_content/image.img.1920.medium.jpg/1536135092872.jpg" data-nationality="French" data-dob="1986-04-17" data-country="fr">
                        <td class="list__cell"><span class="list__value">19</span></td>
                        <td class="list__cell"><span class="list__value">Romain Grosjean</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Haas F1 Team</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">0</span><small class="list__label">Points</small></td>
                    </tr>
                    <tr class="list__row" data-image="https://via.placeholder.com/300" data-nationality="Russian" data-dob="1995-08-27" data-country="ru">
                        <td class="list__cell"><span class="list__value">20</span></td>
                        <td class="list__cell"><span class="list__value">Sergey Sirotkin</span><small class="list__label">Driver</small></td>
                        <td class="list__cell"><span class="list__value">Williams</span><small class="list__label">Constructor</small></td>
                        <td class="list__cell"><span class="list__value">0</span><small class="list__label">Points</small></td>
                    </tr> -->
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
    <script src="app.js"></script>
</body>
</html>