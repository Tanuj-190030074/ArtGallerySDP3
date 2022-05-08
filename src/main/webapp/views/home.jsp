<!DOCTYPE html>
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
    <link href="https://fonts.googleapis.com/css2?family=Syncopate:wght@700&display=swap" rel="stylesheet">
</head>
<style>
    body {
        font-family: sans-serif;
        background-color: rgb(29, 29, 29);
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
</style>

<body>
    <nav class="navbar navbar-expand-lg bg-dark" data-aos="zoom-in" data-aos-duration="1000">

        <div class="container-fluid">
            <a class="navbar-brand  mb-0 h1" href="homepage">Gallery Cart</a>

            <div class="collapse navbar-collapse  justify-content-end" id="navbarNav">
                <ul class="navbar-nav"
                    style="flex-wrap:initial; display:flex; align-items: center; flex-direction:row; justify-content: space-evenly;">
                    
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/sellartpage"
                            style="color: white; font-family: Syncopate;">SELL ART</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/buyartspage"
                            style="color: white; font-family: Syncopate;">BUY ART</a>
                            
                    </li>
                    <% 
                     if(session.getAttribute("email")!=null)
                     {
                    	 %>
                    	 <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/userlogout"
                            style="color: white; font-family: Syncopate;">LOGOUT</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/showcart">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white"
                                class="bi bi-cart2" viewBox="0 0 16 16">
                                <path
                                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                            </svg> 
                        </a>
                    </li>
                    <li class="nav-item">
                       <h4 style="color: white;margin-top:10px;"><%=session.getAttribute("count") %></h4>
                    </li>
                    &nbsp;&nbsp;
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/homepage">
                            <img src="data:image/jpg;base64,<%=session.getAttribute("image")%>" alt="Profile Picture" width="25" height= "25" style="Border-radius : 50%">
                        </a>
                    </li>
                    	 <% 
                     }
                     else{
                    	 %>
                    	 <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/showcart">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white"
                                class="bi bi-cart2" viewBox="0 0 16 16">
                                <path
                                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                            </svg> 
                        </a>
                        
                    </li>
                   
                    
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/loginpage">
                            <img src="images/profile.png" alt="Profile Picture" style="width: 25; height: 25;">
                        </a>
                    </li>
                    	 <%
                     }
                    %>
                    

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
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 1"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/carousel1.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <button
                        style="border-color: transparent; background-color: #FF7315; border-radius: 3px; font-family:syncopate;">BUY
                        NOW</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/carousel2.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <button
                        style="border-color: transparent; background-color: #FF7315; border-radius: 3px; font-family:syncopate;">BUY
                        NOW</button>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <section class="wow" style="display: flex; padding: 40px;">
        <div class="thing" style="padding-top: 30px;">
            <div class="left">
                <h1>MODERN ARTS</h1>
                <p style="align-items: center; color: #c0c0c0; font-size: 24px;">
                    Get the latest Modern Paintings from the most Creative , Crazy and Fun Artists in the world.
                </p>
                <button
                    style="border-color: transparent; background-color: #FF7315; border-radius: 3px; font-family:syncopate;">BUY
                    NOW</button>
            </div>
        </div>
        <img src="images/MA.png" alt="Modern Art Images" style=" width:40%; justify-content: center;" />
    </section>

    <section class="wow" style="display: flex; padding: 40px;">
        <img src="images/IA.png" alt="Modern Art Images" style=" width:40%; justify-content: center;" />
        <div class="thing" style="padding-top: 30px;">
            <div class="left">
                <h1>INDIAN ARTS</h1>
                <p style="align-items: center; color: #c0c0c0; font-size: 24px;">
                    The Ancient Art History of India which gives more Information about the great India and it’s
                    culture.
                </p>
                <button
                    style="border-color: transparent; background-color: #FF7315; border-radius: 3px; font-family:syncopate;">BUY
                    NOW</button>
            </div>
        </div>
    </section>
    <div class="MagicScroll" data-options="width: 100%; items: fit; step: 1;">
        <img src="images/carousel1.png" style="width:40%;" />
        <img src="images/carousel2.png" style="width:40%;" />
        <img src="images/carousel1.png" style="width:40%;" />
    </div>
</body>
<script>

</script>

</html>