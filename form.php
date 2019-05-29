<?php
include("connection.php");
?>
<html>

<head>
    <title>Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style1.css">
    <script>
        function checkvalue(name){
    if(name=='others')
    {
    document.getElementById('oboard').style.display="block";
    }
    else 
    {
    document.getElementById('oboard').style.display="none";
    }
  }

    </script>
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
    <br />
    <br />
    <h1 class="heading1">Are You a School?</h1>
    <div class="text-right">
    <button type="submit" class="btns btn btn-default" name='submit' onclick="document.getElementById('modal-wrapper').style.display='block'">Sign in</button>
    </div>
    <div id="modal-wrapper" class="modal">

        <form class="modal-content animate" action="form.php">

            <div class="imgcontainer" style="padding:10px;">
                <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
                <img src="1.png" alt="Avatar" class="avatar">
            </div>

            <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter Username" name="uname">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Enter Password" name="psw">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-default" style="width:100%">Login</button>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input"> Remember me
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <a href="#" style="text-decoration:none; float:right;">Forgot Password ?</a>
                </div>
            </div>
        </form>

    </div>
    <div class="row">
        <div class="col-md-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed id semper risus in hendrerit gravida rutrum quisque non. Consectetur adipiscing elit ut aliquam purus sit amet luctus. Augue eget arcu dictum varius duis at consectetur lorem. Tellus elementum sagittis vitae et leo. Sit amet commodo nulla facilisi nullam vehicula ipsum a. Nullam vehicula ipsum a arcu cursus. Nisl tincidunt eget nullam non nisi est. Sit amet volutpat consequat mauris nunc congue nisi. Diam vulputate ut pharetra sit amet aliquam. Massa eget egestas purus viverra accumsan in nisl nisi. Quam id leo in vitae turpis massa.</p>

            <p>Tristique magna sit amet purus. Neque sodales ut etiam sit amet nisl purus. Eu ultrices vitae auctor eu augue. Vitae justo eget magna fermentum iaculis eu. Auctor neque vitae tempus quam pellentesque nec. Vestibulum sed arcu non odio. Nibh nisl condimentum id venenatis. Massa tempor nec feugiat nisl pretium fusce id. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Proin libero nunc consequat interdum varius sit amet. Maecenas ultricies mi eget mauris. Enim sit amet venenatis urna cursus eget. Eu facilisis sed odio morbi quis commodo. Faucibus purus in massa tempor nec feugiat nisl. Eros in cursus turpis massa. Blandit cursus risus at ultrices mi tempus. Cum sociis natoque penatibus et magnis dis parturient montes nascetur.</p>

            <p>Ultrices dui sapien eget mi proin sed libero. Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Nibh nisl condimentum id venenatis a condimentum vitae sapien. Scelerisque in dictum non consectetur a erat. Facilisi morbi tempus iaculis urna id volutpat lacus. Rutrum tellus pellentesque eu tincidunt tortor. Ornare arcu odio ut sem nulla pharetra diam sit amet. Gravida quis blandit turpis cursus. Purus viverra accumsan in nisl nisi scelerisque eu ultrices. Sit amet porttitor eget dolor morbi non arcu risus quis. Commodo viverra maecenas accumsan lacus vel facilisis volutpat. Leo vel fringilla est ullamcorper eget nulla facilisi. Egestas sed sed risus pretium. Aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat. Aliquet lectus proin nibh nisl condimentum id. Bibendum ut tristique et egestas quis ipsum. Aenean sed adipiscing diam donec adipiscing tristique risus.</p>
        </div>
        <div class="col-md-8">
            <div class="regis">
                <h4 class="heading2">REGISTRATION FORM</h4>
                <form action="form.php" method="post">
                    <div class="form-group">
                        <label for="nos">Name of School</label>
                        <input type="text" class="form-control" placeholder="Enter School Name" name="nos">
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Address</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="Address" name="addr">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="inputCity">City</label>
                            <input type="text" class="form-control" id="inputCity" name="city">
                        </div>
                        <div class="form-group col-md-5">
                            <label for="inputState">State</label>
                            <input type="text" class="form-control" id="inputCity" name="state">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">PIN</label>
                            <input type="text" class="form-control" id="inputZip" name="pin">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="sc">Starting Class</label>
                            <select id="sc" class="form-control" name="sc">
                                <option value="null">Choose...</option>
                                <option value="playgroup">Playgroup</option>
                                <option value="nur">Nursery</option>
                                <option value="lkg">LKG</option>
                                <option value="ukg">UKG</option>
                                <option value="1">1st Standard</option>
                                <option value="2">2nd Standard</option>
                                <option value="3">3rd Standard</option>
                                <option value="4">4th Standard</option>
                                <option value="5">5th Standard</option>
                                <option value="6">6th Standard</option>
                                <option value="7">7th Standard</option>
                                <option value="8">8th Standard</option>
                                <option value="9">9th Standard</option>
                                <option value="10">10th Standard</option>
                                <option value="11">11th Standard</option>
                                <option value="12">12th Standard</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="ec">Ending Class</label>
                            <select id="ec" class="form-control" name="ec">
                                <option value="null">Choose...</option>
                                <option value="playgroup">Playgroup</option>
                                <option value="nur">Nursery</option>
                                <option value="lkg">LKG</option>
                                <option value="ukg">UKG</option>
                                <option value="1">1st Standard</option>
                                <option value="2">2nd Standard</option>
                                <option value="3">3rd Standard</option>
                                <option value="4">4th Standard</option>
                                <option value="5">5th Standard</option>
                                <option value="6">6th Standard</option>
                                <option value="7">7th Standard</option>
                                <option value="8">8th Standard</option>
                                <option value="9">9th Standard</option>
                                <option value="10">10th Standard</option>
                                <option value="11">11th Standard</option>
                                <option value="12">12th Standard</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cpername">Contact Person Name</label>
                        <input type="text" class="form-control" placeholder="Enter Name" name="cpername">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="phno">Official Phone No</label>
                            <input type="text" class="form-control" id="phno" name="phno">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="mobno">Mobile No</label>
                            <input type="text" class="form-control" id="mobno" name="mobno">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="screg">School Registration Number</label>
                        <input type="text" class="form-control" name="screg">
                    </div>
                    <div class="form-group">
                        <label for="board">Board</label>
                        <select name="board" class="form-control" onchange="checkvalue(this.value)">
                            <option value="null">Choose...</option>
                            <option value="cbse">CBSE</option>
                            <option value="icse">ICSE</option>
                            <option value="stateboard">State Board</option>
                            <option value="others">Others</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="oboard" id="oboard" style="display:none;">
                    </div>
                    <div class="form-group">
                        <label for="mail">Email Id</label>
                        <input type="email" class="form-control" placeholder="Enter Email Id" name="mail">
                    </div>
                    <div class="form-group">
                        <label for="pass">Password</label>
                        <input type="password" class="form-control" name="pass">
                    </div>
                    <div class="form-group">
                        <label for="web"> School Website Link</label>
                        <input type="text" class="form-control" name="website">
                    </div>

                    <br>
                    <div class="form-check form-check-inline col-4">
                        <input class="form-check-input" type="checkbox" id="ts" value="option1">
                        <label class="form-check-label">Terms Accepted</label>
                    </div>
                    <div class="form-check form-check-inline col-4">
                        <input class="form-check-input" type="checkbox" id="pa" value="option2">
                        <label class="form-check-label">Privacy Accepted</label>
                    </div>
                    <br>
                    <br>
                    <p><small>Authorisation to use personal details in accordance with Law 196/2003 (Protection of persons and other subjects with regard to the processing of personal data)I consent to the usage of the information given herein in accordance to the relevant Indian law, D. Lgs. 196/2003. Personal information will only be used by DIYguru, owner of the right to the usage, with the sole purpose of assessing and fulfilling your information request. The rights of the interested party are set out in art. 7 of D. Lgs. n.196 of 30/6/2003 and can be exercised by writing to info@diyguru.org The refusal of the interested party to supply the personal information renders the fulfilment of the service impossible.</small></p>
                    <br>
                    <br>
                    <button type="submit" class="btn btn-default" name='submit'>Submit</button>
                </form>
            </div>
        </div>
    </div>
    <script>
        // If user clicks anywhere outside of the modal, Modal will close

        var modal = document.getElementById('modal-wrapper');
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

    </script>
    <?php

if(isset($_POST['submit']))
{
$name= $_POST['nos'];
$addr= $_POST['addr'];
$city= $_POST['city'];
$state= $_POST['state'];
$pin= $_POST['pin'];
$sc= $_POST['sc'];
$ec= $_POST['ec'];
$pname= $_POST['cpername'];
$phno= $_POST['phno'];
$mobno= $_POST['mobno'];
$screg= $_POST['screg'];
$board= $_POST['board'];
$oboard= $_POST['oboard'];
$email= $_POST['mail'];
$pass= $_POST['pass'];
$pwd= hash('sha256',$pass);
$web= $_POST['website'];

$query = " INSERT INTO ranks(schoolname,address,cityname,statename,pin,startingclass,endingclass,contactperson,phone,mobile,regno,board,other,email,password,website) VALUES('$name','$addr','$city','$state','$pin','$sc','$ec','$pname','$phno','$mobno','$screg','$board','$oboard','$email','$pwd','$web')";
    
$data= mysqli_query($conn,$query);

}
?>
</body>

</html>
