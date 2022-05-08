<html>

<head>
    <title>Gallery Cart</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compactable" content="ie-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" type="text/css" charset="utf-8">

    <link type="text/css" rel="stylesheet" href="magicscroll/magicscroll.css" />
    <script type="text/javascript" src="magicscroll/magicscroll.js"></script>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!--Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&family=Syncopate:wght@700&display=swap"
        rel="stylesheet">
</head>
<style>
    body {
        font-family: sans-serif;
        background-color: rgb(29, 29, 29);
        margin: 0;
        background-image: url(images/register.jpg);
        background-size: cover;
        background-position: left;
        background-size: 900px;
        background-repeat: no-repeat;
    }

    .navbar-brand {
        color: white;
        font-family: futura;
    }

    .wow {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        order: 2;
        grid-gap: 3rem;
        margin-bottom: 2rem;

    }

    h1 {
        color: white;
        font-family: syncopate;
    }

    .form-signin {
        width: 100%;
        max-width: 500px;
        align-items: center;
        position: absolute;
        padding: 0px;
        margin: auto;
        top: 20%;
        right: 10%;
    }
</style>

<body>
    <nav class="navbar navbar-expand-lg bg-dark" data-aos="zoom-in" data-aos-duration="1000">

        <div class="container-fluid">
            <a class="navbar-brand  mb-0 h1" href="index.html">Gallery Cart</a>

            <div class="collapse navbar-collapse  justify-content-end" id="navbarNav">
                <ul class="navbar-nav"
                    style="flex-wrap:initial; display:flex; align-items: center; flex-direction:row; justify-content: space-evenly;">

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="sellartpage"
                            style="color: white; font-family: Syncopate;">SELL ART</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="buyartspage"
                            style="color: white; font-family: Syncopate;">BUY ART</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="showcart">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white"
                                class="bi bi-cart2" viewBox="0 0 16 16">
                                <path
                                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                            </svg>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="login.html">
                            <img src="images/profile.png" alt="Profile Picture" style="width: 25; height: 25;">
                        </a>
                    </li>

                </ul>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="white" class="bi bi-list"
                    viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                        d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                </svg>
            </button>


        </div>
    </nav>

    <div class="form-signin">
        <p style="font-family: 'Roboto', sans-serif; font-size: 20px; color :#cccccc; font-weight:100;">Welcome
        </p>

        <h1
            style="font-family: 'Roboto', sans-serif; font-weight: bold;  font-size: 30px; color : #ffffff; text-align: start;">
            Create an Account
        </h1>
        <form action="/submituser" method="post" enctype="multipart/form-data">
             <div class="row">
                <div class="col-mid-12">
                    <label for="Adddp" style="font-family: 'Roboto', sans-serif; color :#cccccc;">Add your DP</label>
                    <input class="form-control" type="file" id="image" name="file">

                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <label for="Firstname" style="font-family: 'Roboto', sans-serif; color :#cccccc;">First
                        Name</label>
                    <input type="text" class="form-control" id="name" name="firstname" placeholder="">
                </div>
                <div class="col-md-5">
                    <label for="Lastname" style="font-family: 'Roboto', sans-serif; color :#cccccc;">Last Name</label>
                    <input type="text" class="form-control" id="name" name="lastname" placeholder="">
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <label for="inputEmail4" style="font-family: 'Roboto', sans-serif; color :#cccccc;">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" name="email" required placeholder="xyz@gmail.com">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <label for="inputPassword4"
                        style="font-family: 'Roboto', sans-serif; color :#cccccc;">Password</label>
                    <input type="password" class="form-control" id="inputPassword4" name="password" required placeholder="Password">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <label for="inputPassword4" style="font-family: 'Roboto', sans-serif; color :#cccccc;">Mobile
                        no.</label>
                    <input type="text" class="form-control" id="inputPassword4" name="mobile" required placeholder="123456789">
                </div>
            </div>
            <div class="row">

                <div class="col-md-12">
                    <label for="inputState" style="font-family: 'Roboto', sans-serif; color :#cccccc;">Gender</label>
                    <select id="inputState" class="form-control" name="gender" required placeholder="">
                        <option selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <label for="inputPassword4"
                        style="font-family: 'Roboto', sans-serif; color :#cccccc;">Address</label>
                    <input type="text" class="form-control" id="inputPassword4" name="address" placeholder="Street name">
                </div>
            </div>

            <div class="row">

                <div class="col-md-6">
                    <label for="inputState" style="font-family: 'Roboto', sans-serif; color :#cccccc;">State</label>
                    <select id="inputState" class="form-control" name="state">
                        <option selected>Choose...</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Puducherry">Puducherry</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Karnataka">Karnataka</option>

                    </select>
                </div>
                <div class="col-md-6">
                    <label for="inputZip" style="font-family: 'Roboto', sans-serif; color :#cccccc;">Zip</label>
                    <input type="text" class="form-control" id="inputZip" name="zipcode" placeholder="123456">
                </div>
            </div>
            <br>
            <center>
                <input type="submit" value="Register" class="btn btn-lg btn-primary"
                    style="width:300px;  font-weight: bold; background-color:#FF7315;border-color: transparent;">

                <br><br>
            </center>
            <br>
            <p style=" position: absolute; left: 30%;  color :#cccccc;">Already a Member ? <a
                    style="text-decoration: none; color: #FF7315;" href="loginpage">Login</a>
            </p>
        </form>
    </div>


</body>
<script>

</script>

</html>