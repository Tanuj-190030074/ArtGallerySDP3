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
        background-image: url(images/login.jpg);
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
        max-width: 350px;
        padding: 0px;
        margin: auto;
        position: absolute;
        top: 20%;
        right: 15%;
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
    <form class="form-signin" action="userlogin" method="post">
        <p style="font-family: 'Roboto', sans-serif; font-size: 20px; color :#cccccc; font-weight: 100;">Welcome back
        </p>
        <h1
            style="font-family: 'Roboto', sans-serif; font-weight: bold;  font-size: 30px; color : #ffffff; text-align: start;">
            Login to your Account
        </h1>
        <br>
        <p style="font-family: 'Roboto', sans-serif; color :#cccccc;">Email</p>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" required="" autofocus="">
        &nbsp;
        <p style="font-family: 'Roboto', sans-serif; color :#cccccc;">Password</p>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required="">
        <br>
        <div class="checkbox mb-3">
            <label style="color :#cccccc;">
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <center>
            <input type="submit" class="btn btn-lg btn-primary"
                style="width:300px; font-weight: bold; background-color:#FF7315;border-color: transparent;"
                value="Login">

            <br><br>

        </center>
        <br>
        <p style=" position: absolute; left: 20%;  color :#cccccc;">Don't have an account ? <a
                style="text-decoration: none; color: #FF7315;" href="registerpage">Register</a>
        </p>
    </form>

</body>
<script>

</script>

</html>