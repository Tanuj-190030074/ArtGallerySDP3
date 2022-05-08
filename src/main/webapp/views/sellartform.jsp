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
        color: #FF7315;
        font-family: syncopate;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }



    .container {
        max-width: 1100px;
        padding: 0 20px;
        margin: 0 auto;
    }

    .panel {
        margin: 100px auto 40px;
        max-width: 500px;
        text-align: center;
    }

    .button_outer {
        background: black;
        border-radius: 30px;
        text-align: center;
        height: 50px;
        width: 200px;
        display: inline-block;
        transition: .2s;
        position: relative;
        overflow: hidden;
    }

    .btn_upload {
        padding: 15px 10px 110px;
        color: #FF7315;
        font-family: Syncopate;
        text-align: center;
        overflow: hidden;
        z-index: 3;
        white-space: nowrap;
    }

    .btn_upload input {
        position: absolute;
        width: 100%;
        top: 0;
        width: 100%;
        height: 105%;
        cursor: pointer;
        opacity: 0;
    }

    .file_uploading {
        width: 100%;
        height: 10px;
        margin-top: 20px;
        background: black;
    }

    .file_uploading .btn_upload {
        display: none;
    }

    .processing_bar {
        position: absolute;
        left: 0;
        top: 0;
        width: 0;
        height: 100%;
        border-radius: 30px;
        background: #FF7315;
        transition: 3s;
    }

    .file_uploading .processing_bar {
        width: 100%;
    }

    .success_box {
        display: none;
        width: 50px;
        height: 50px;
        position: relative;
    }

    .success_box:before {
        content: '';
        display: block;
        width: 9px;
        height: 18px;
        border-bottom: 6px solid #fff;
        border-right: 6px solid #fff;
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);
        position: absolute;
        left: 17px;
        top: 10px;
    }

    .file_uploaded .success_box {
        display: inline-block;
    }

    .file_uploaded {
        margin-top: 0;
        width: 50px;
        background: #FF7315;
        height: 50px;
    }

    .uploaded_file_view {
        max-width: 300px;
        margin: 40px auto;
        text-align: center;
        position: relative;
        transition: .2s;
        opacity: 0;

        padding: 15px;
    }

    .file_remove {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        display: block;
        position: absolute;
        background: black;
        line-height: 30px;
        color: #FF7315;
        font-size: 12px;
        cursor: pointer;
        right: -15px;
        top: -15px;
    }

    .file_remove:hover {
        background: #222;
        transition: .2s;
    }

    .uploaded_file_view img {
        max-width: 100%;
    }

    .uploaded_file_view.show {
        opacity: 1;
    }

    .error_msg {
        text-align: center;
        color: #f00
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

    <h1 style="padding: 2%;">ADD A NEW ART</h1>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <form action="addP" method="post" enctype="multipart/form-data">
        <div class="container-md">
            <div class="col align-items-start">
                <br>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="Name" placeholder="IMAGE NAME" name="pname" onkeydown="return event.key != 'Enter';"
                        style="background-color: black; border-color: black; color: rgb(203, 203, 203);">
                    <label for="floatingInput"
                        style="color: #FF7315; background-color: transparent; font-family: 'Syncopate', sans-serif;">NAME</label>
                </div>
                <br>
                <div class="form-floating mb-3">
                  <textarea rows="" cols="" placeholder="DESCRIPTION" class="form-control" id="Descriptiom" name="desc" style="background-color: black; border-color: black; color: rgb(203, 203, 203); height:100px;"></textarea>
                    
                    <label for="floatingInput"
                        style="color: #FF7315; background-color: transparent; font-family: 'Syncopate', sans-serif;">DESCRIPTION</label>
                </div>
                <br>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="Price" name="price" placeholder="Enter the Price ₹" onkeydown="return event.key != 'Enter';"
                        style="background-color: black; border-color: black; color: rgb(203, 203, 203);">
                    <label for="floatingInput"
                        style="color: #FF7315; background-color: transparent; font-family: 'Syncopate', sans-serif;">PRICE</label>
                </div>
                <div class="container">
                    <div class="panel">
                        <div class="button_outer">
                            <div class="btn_upload">
                                <input type="file" id="upload_file" name="file">
                                UPLOAD IMAGE
                            </div>
                            <div class="processing_bar"></div>
                            <div class="success_box"></div>
                        </div>
                    </div>
                    <div class="error_msg"></div>
                    <div class="uploaded_file_view" id="uploaded_view">
                        <span class="file_remove">X</span>
                    </div>
                </div>
                <br>

            </div>
            <center>
                <input type="submit"
                    style="width: 200px; height: 40px;  font-family: 'Syncopate', sans-serif; font-size: large; background-color: #FF7315; color: black; border-color: transparent;"
                    value="SEND DETAILS">
            </center>
        </div>
    </form>

</body>
<script>
    var btnUpload = $("#upload_file"),
        btnOuter = $(".button_outer");
    btnUpload.on("change", function (e) {
        var ext = btnUpload.val().split('.').pop().toLowerCase();
        if ($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            $(".error_msg").text("Not an Image...");
        } else {
            $(".error_msg").text("");
            btnOuter.addClass("file_uploading");
            setTimeout(function () {
                btnOuter.addClass("file_uploaded");
            }, 3000);
            var uploadedFile = URL.createObjectURL(e.target.files[0]);
            setTimeout(function () {
                $("#uploaded_view").append('<img src="' + uploadedFile + '" />').addClass("show");
            }, 3500);
        }
    });
    $(".file_remove").on("click", function (e) {
        $("#uploaded_view").removeClass("show");
        $("#uploaded_view").find("img").remove();
        btnOuter.removeClass("file_uploading");
        btnOuter.removeClass("file_uploaded");
    });
</script>

</html>