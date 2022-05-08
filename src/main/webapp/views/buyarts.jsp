
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    image{
Max-width:300px ;
}

    .wow {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        order: 2;
        grid-gap: 3rem;
        margin-bottom: 2rem;

    }



    h1 {
        color: #FF7315;
        font-family: syncopate;
    }

    h3 {
        color: #FF7315;
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
    <h1 style="padding-top: 2%; padding-left: 2%;">BUY THE LATEST ARTS</h1>
    <h3 style="padding-top: 2%; padding-left: 4%; text-decoration: underline;">JOSEPH KLIBANSKY EXCLUSIVE COLLECTION
    </h3>

    <div class="cards" style="padding-left:6%; padding-top: 2%;">
        <div class="row" style="justify-content: space-evenly;">
            <!-- First Card-->
            <div class="card text-white mb-3 "
                style="max-width: 450px; max-height: 460px; border-radius: 5px; background-color: black;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/BIgBang.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title" style="font-weight: bold;">BIG BANG</h5>
                            <p class="card-text"><small class="text-muted">(Black and Gold Edition 2019)</small></p>
                            <p class="card-text" style="font-weight: bold;">
                                <!--Price--> 450 <span style='font-family:Arial;'>&#8377;</span>
                            </p>

                            <a><button class="btn"
                                    style="border-color: transparent; font-weight: bold; background-color: #FF7315;color: black; border-radius: 3px; font-family: Helvetica, sans-serif;">Learn
                                    More
                                </button></a>
                            <a><button class="btn btn-primary"
                                    style="border-color: transparent; font-weight: bold;  border-radius: 3px; font-family: Helvetica, sans-serif;">Add
                                    to Cart
                                </button></a>

                        </div>
                    </div>
                </div>
            </div>

            <!--Second Card-->
            <div class="card text-white mb-3 "
                style="max-width: 450px; max-height: 460px; border-radius: 5px; background-color: black;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/WhiteUniverse.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title" style="font-weight: bold;">WHITE UNIVERSE</h5>
                            <p class="card-text"><small class="text-muted">(Black and Gold Edition 2019)</small></p>
                            <p class="card-text" style="font-weight: bold;">
                                <!--Price--> 900 <span style='font-family:Arial;'>&#8377;</span>
                            </p>

                            <a><button class="btn"
                                    style="border-color: transparent; font-weight: bold; background-color: #FF7315;color: black; border-radius: 3px; font-family: Helvetica, sans-serif;">Learn
                                    More
                                </button></a>
                            <a><button class="btn btn-primary"
                                    style="border-color: transparent; font-weight: bold;  border-radius: 3px; font-family: Helvetica, sans-serif;">Add
                                    to Cart
                                </button></a>

                        </div>
                    </div>
                </div>
            </div>

            <!--Third Card-->
            <div class="card text-white mb-3 "
                style="max-width: 450px; max-height: 460px; border-radius: 5px; background-color: black;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/josep-martins-ojqdD-cWo28-unsplash.jpg" class="img-fluid rounded-start"
                            alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title" style="font-weight: bold;">LUCRATIVE</h5>
                            <p class="card-text"><small class="text-muted">(Black and Gold Edition 2019)</small></p>
                            <p class="card-text" style="font-weight: bold;">
                                <!--Price--> 240 <span style='font-family:Arial;'>&#8377;</span>
                            </p>

                            <a><button class="btn"
                                    style="border-color: transparent; font-weight: bold; background-color: #FF7315;color: black; border-radius: 3px; font-family: Helvetica, sans-serif;">Learn
                                    More
                                </button></a>
                            <a><button class="btn btn-primary"
                                    style="border-color: transparent; font-weight: bold;  border-radius: 3px; font-family: Helvetica, sans-serif;">Add
                                    to Cart
                                </button></a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Arts uploaded by users-->
    <h3 style="padding-top: 2%; padding-left: 4%; text-decoration: underline;">ARTS SOLD BY USERS
    </h3>

    <div class="cards" style="padding-left:6%; padding-top: 2%;">
        <div class="row" style="justify-content: space-evenly;">
        <c:forEach var="i" items="${arts}">
            <!-- First Card-->
            <div class="card text-white mb-3 "
                style="max-width: 450px; max-height: 460px; border-radius: 5px; background-color: black;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="data:image/jpg;base64,${i.image}"  class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title" style="font-weight: bold;">${i.name}</h5>
                            <p class="card-text"><small class="text-muted">by ${i.owner}<br/>
                            ${i.description} </small></p>
                            <p class="card-text" style="font-weight: bold;">
                                <!--Price--> Rating: ${i.ratings}<br/>
                                 <!--Price-->Price: ${i.price} <span style='font-family:Arial;'>&#8377;</span>
                            </p>
                           
                            <a href="/getart/${i.id}"><button class="btn"  
                                    style="border-color: transparent; font-weight: bold; background-color: #FF7315;color: black; border-radius: 3px; font-family: Helvetica, sans-serif;">Learn
                                    More
                                </button></a>
                            <a href="/addtocart/${i.id}"><button class="btn btn-primary" onclick="window.location.href = 'https://ide.geeksforgeeks.org';"
                                    style="border-color: transparent; font-weight: bold;  border-radius: 3px; font-family: Helvetica, sans-serif;">Add
                                    to Cart
                                </button></a>

                        </div>
                    </div>
                </div>
            </div>
          </c:forEach>
          

         
        </div>
    </div>

</body>
<script>

</script>

</html>