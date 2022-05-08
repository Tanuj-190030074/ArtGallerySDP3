<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <script src="js/jquery.Rating.js"></script>
<script>
$(function() {
    $('span.stars').stars();
});
</script>
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
        color: #FF7315;
        font-family: syncopate;
    }

    h3 {
        color: white;
        font-family: syncopate;
    }

    .table {
        max-width: 900px;
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
    <h1 style="padding:2%;">SELL ARTS</h1>
    <center>
        <h3>ARTS FOR SALE BY YOU</h3>
        <div class="table">
            <table class="table table-striped table-bordered table-dark">
                <thead>
                    <tr>
                        <th scope="col">image</th>
                        <th scope="col">Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">rating</th>
                        <th scope="col">status</th>
                        <th scope="col">action</th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach var="emp" items="${arts}">

<tr>
<td><img alt="" src="data:image/jpg;base64,${emp.image}" style="width: 100px;height: 100px;"></td>
<td><a href="/getart/${emp.id}">${emp.name}</a></td>
<td>${emp.description}</td>
<td>${emp.price}  </td>
<td>${emp.ratings}</td>
<c:choose>
         <c:when test = "${emp.isapproved==false}">
            <td><h6 style="color:red;">Not Approved</h6></td>
         </c:when>
         <c:otherwise>
            <td><h6 style="color:green;">Approved</h6></td>
         </c:otherwise>
      </c:choose>
<td><a href="/deleteart/${emp.id}">Delete</a></td>
</tr>
</c:forEach>
                    
                </tbody>
            </table>
        </div>

        <br><br>
        <button
            style="border-color: transparent;  background-color: #FF7315; border-radius: 3px; font-family:syncopate;">
            <a href="sellartform" style="color: black; ">SELL A NEW ART</a></button>
    </center>
</body>
<script>

</script>

</html>