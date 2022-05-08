<html>

<head>
    <title>Gallery Cart</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compactable" content="ie-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" type="text/css" charset="utf-8">


    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
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

    .review h2 {
        color: #FF7315;
        font-family: Helvetica, sans-serif;
        font-weight: 400;
        line-height: 30px;
    }

    h3 {
        color: #FF7315;
        font-family: Helvetica, sans-serif;
        font-weight: 400;
    }

    /* Basic Styling */

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 15px;
        display: flex;
    }

    /* Columns */
    .left-column {
        width: 65%;
        position: relative;
    }

    .right-column {
        width: 35%;
        margin-top: 60px;
    }


    /* Left Column */
    .left-column img {
        max-width: 600px;
        position: absolute;
        left: 0;
        top: 0;

        transition: all 0.3s ease;
    }

    .left-column img.active {
        opacity: 1;
    }


    /* Right Column */

    /* Product Description */
    .product-description {
        border-bottom: 1px solid #E1E8EE;
        margin-bottom: 20px;
    }

    .product-description span {
        font-size: 12px;
        color: #FF7315;
        letter-spacing: 1px;
        text-transform: uppercase;
        text-decoration: none;
    }

    .product-description h1 {
        font-weight: 300;
        font-size: 52px;
        color: #43484D;
        letter-spacing: -2px;
    }

    .product-description p {
        font-size: 16px;
        font-weight: 300;
        color: #86939E;
        line-height: 24px;
    }

    /* Product Configuration */
    .product-color span,
    .cable-config span {
        font-size: 14px;
        font-weight: 400;
        color: #86939E;
        margin-bottom: 20px;
        display: inline-block;
    }

    /* Product Color */
    .product-color {
        margin-bottom: 30px;
    }





    /* Cable Configuration */
    .cable-choose {
        margin-bottom: 20px;
    }

    .cable-choose button {
        border: 2px solid #E1E8EE;
        border-radius: 6px;
        padding: 13px 20px;
        font-size: 14px;
        color: #5E6977;
        background-color: #fff;
        cursor: pointer;
        transition: all .5s;
    }



    /* Product Price */
    .product-price {
        display: flex;
        align-items: center;
    }

    .product-price span {
        font-size: 26px;
        font-weight: 300;
        color: #43474D;
        margin-right: 20px;
    }

    .cart-btn {
        display: inline-block;
        background-color: #FF7315;
        border-radius: 6px;
        font-size: 16px;
        font-family: Syncopate;
        color: black;
        text-decoration: none;
        padding: 12px 30px;
        transition: all .5s;
    }

    .cart-btn:hover {
        background-color: black;
        color: #FF7315;

    }

    div.stars {
        width: 270px;
        display: inline-block;
    }

    input.star {
        display: none;
    }

    label.star {
        float: right;
        padding: 10px;
        font-size: 36px;
        color: #444;
        transition: all .2s;
    }

    input.star:checked~label.star:before {
        content: '\f005';
        color: #FD4;
        transition: all .25s;
    }

    input.star-5:checked~label.star:before {
        color: rgb(9, 176, 0);
        text-shadow: 0 0 20px #952;
    }

    input.star-1:checked~label.star:before {
        color: #F62;
    }

    label.star:hover {
        transform: rotate(-15deg) scale(1.3);
        color: white;
    }

    label.star:before {
        content: '\f006';
        font-family: FontAwesome;
    }

    /* Responsive */
    @media (max-width: 940px) {
        .container {
            flex-direction: column;
            margin-top: 60px;
        }

        .left-column,
        .right-column {
            width: 100%;
        }

        .left-column img {
            width: 300px;
            right: 0;
            top: -65px;
            left: initial;
        }
    }

    @media (max-width: 535px) {
        .left-column img {
            width: 220px;
            top: -85px;
        }
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

    <div class="heading">
        <p style="padding: 10px;color: #86939E; line-height: 24px; text-decoration: underline;">Buy Art > ${arts.name }
            > Learn More</p>
    </div>
    <main class="container">

        <!-- Left Column / Headphones Image -->
        <div class="left-column">
            <img src="data:image/jpg;base64,${arts.image}" alt="">

        </div>


        <!-- Right Column -->
        <div class="right-column">

            <!-- Product Description -->
            <div class="product-description">
                <!--Name of seller-->
                <span style="font-weight: bold;">${arts.owner }</span>
                <!--Art Name-->
                <h1 style="color: white;">${arts.name }</h1>
                <p>${arts.description}</p>
            </div>



            <!-- Product Pricing -->
            <div class="product-price">
                <span style="font-weight: bold; color: rgb(206, 206, 206);">
                    Price:${arts.price } <span style='font-family:Arial;font-weight: bold; color: rgb(206, 206, 206);'>&#8377;</span></span>
                <a href="#" class="cart-btn">ADD TO CART</a>
            </div>
            <br>
            <div class="review">
                <h2>Reviews</h2>
            </div>
            <!--Display some reviews here-->


            <div class=" stars">
                <form action="/giverating" method="post">
                    <h3>Add your Review</h3>
                    <input type="hidden" name="artid" value="${arts.id}" />
                    <input class="star star-5" id="star-5" type="radio" value="5" name="star" />
                    <label class="star star-5" for="star-5"></label>
                    <input class="star star-4" id="star-4" type="radio" value="4" name="star" />
                    <label class="star star-4" for="star-4"></label>
                    <input class="star star-3" id="star-3" type="radio" value="3" name="star" />
                    <label class="star star-3" for="star-3"></label>
                    <input class="star star-2" id="star-2" type="radio" value="2" name="star" />
                    <label class="star star-2" for="star-2"></label>
                    <input class="star star-1" id="star-1" type="radio" value="1" name="star" />
                    <label class="star star-1" for="star-1"></label>
                    <button type="submit" class="btn btn-danger">submit</button>
                </form>
            </div>

        </div>
    </main>

</body>
<script>

</script>

</html>