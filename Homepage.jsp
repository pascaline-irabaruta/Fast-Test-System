<%-- 
    Document   : Homepage
    Created on : 21-Jul-2020, 10:41:25
    Author     : PACY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Lakki+Reddy&display=swap" rel="stylesheet">
        <title>FastTestSystem</title>
        <link rel="stylesheet" href="styles.css" type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@500&display=swap" rel="stylesheet">
        <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
              integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <script src="scripts.js"></script>
        <link rel="icon" href="C:/Users/PACY/Pictures/charity1.png">
    </head>

    <body id="body">

        <header id="home">
            <nav class="navbar navbar-expand-lg navbar-light bg fixed-top">
                <h2 class=" navbar-brand logo text-white">Fast<span class="spanLogo">Test</span></h2>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link text-white" id="homep" href="Homepage.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a id="navsign" class="nav-link text-white" href="Homepage.jsp">Log in</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#Contact">Contact</a>
                        </li>
                    </ul>
                    <div class="form-inline my-2 col-md-4 ">
                        <i class="nav-item social-icon fab fa-twitter sicon"></i>
                        <i class="nav-item social-icon text-white fab fa-facebook sicon"></i>
                        <i class="nav-item social-icon text-white fab fa-instagram sicon"></i>
                        <i class="nav-item social-icon text-white fas fa-envelope  sicon"></i> 
                        <a id="create" href="#healthy" class="nav-item  active btn btn-light" style="font-size: 14px">Healthy covid19 measures</a>
                    </div>
                </div>
            </nav>
        </header>

        <div id="homepage">
            <div class="headerContent">
                <h1>WELCOME TO <span class="logo1">Fast</span><span class="spanLogo1">Test</span></h1>
                <p><strong>GET YOUR COVID19 TEST FASTER.</strong></p>
                <button id= "reg" type="button" class=" btn ">Create account</button>
                <p id="para">Register as a
                    <a id="ho" herf="#hospForm" style="color: blue"style="text-decoration:underline">Hospital?</a>
                    or a 
                    <a id="pab" herf="#regForm" style="color: blue" style="text-decoration:underline">Patient?</a> 
                </p>
                
                <form id="hospForm" action="HospitalSave" method="POST" enctype="multipart/form-data">
                    <table border="0">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Hospital name:</td>
                                <td><input type="text" name="hName" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><input type="text" name="hdes" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Picture</td>
                                <td> <input type="file" name="hpict" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Number of people they test per day</td>
                                <td> <input type="number" name="hnbr" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Username</td>
                                <td> <input type="text" name="husname" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td> <input type="password" name="hpwd" required="true"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Create account" /></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <form id ="regForm" action="donorsave.jsp" method="POST">
                    <table border="0">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Names:</td>
                                <td><input type="text" name="Donorname" placeholder="Full name" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Username:</td>
                                <td><input type="text" name="username" placeholder="username" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td> <input type="email" name="usermail" placeholder="your email" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td> 
                                    <select name="gender">
                                        <option value="male">male</option>
                                        <option value="female">female</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td> <input type="password" name="userpswd" placeholder="password" required="true"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Create account"/></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <!--<h5 id="sgnin">Already has an account? <a id="signinLink" href="#">Signin</a> </h5>-->
                <button id= "sgnin" type="button" class=" btn ">Log in</button>
                <% String msg = (String) session.getAttribute("validatte");
                    if (msg != null) {
                %>
                <h5 id="vd"><%=msg%></h5>
                <%
                    }
                %>
                <form id="signinForm" action="sign_in.jsp" method="POST">
                    <table border="0">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Username:</td>
                                <td><input type="text" name="unames" placeholder="Full name" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><input type="password" name="upswds" placeholder="username" required="true"/></td>
                            </tr>
                            <tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Log in"/></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
        <section>

        </section>
        <section id="about" class="m-5" >
            <h3 class="text-center"><span class="spanLogo">ABOUT US</span></h3>
            <p class="text-center" id="abt">Fast<span class="spanLogo">Test</span> is made to help  people who wants to be tested for COVID19 and wants their test to be as fast as possible.
                This system allows users to choose the hospitals of their preferences and fill in informations needed so as to not waste more time 
                when getting tested.
                This is a fully trusted platform and all information recorded remains confidential.</p>
        </section>
        <section id="healthy">
            <h3 class="text-center"><span class="spanLogo">Safe Coronavirus measures</span></h3>
            <div id="healthyc" class="container">
                <div class="slideshow-container">

                    <!-- Full-width images with number and caption text -->
                    <div class="mySlides fade">
                        <img src="https://www.isn-nice.com/uploaded/News_Manager/Coronavirus/Combi_1.png" >
                    </div>

                    <div class="mySlides fade">
                        <img src="https://i.ytimg.com/vi/nOa8wIhQdzo/maxresdefault.jpg" >
                    </div>

                    <div class="mySlides fade">
                        <img src="https://pbs.twimg.com/media/EZx0651XsAAAvKU.jpg">

                    </div>
                </div>
                <br>

                <!-- The dots/circles -->
                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
            </div>
            <script>
                var slideIndex = 0;
                showSlides();

                function showSlides() {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    slideIndex++;
                    if (slideIndex > slides.length) {
                        slideIndex = 1;
                    }
                    for (i = 0; i < dots.length; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
                    setTimeout(showSlides, 3000); // Change image every 2 seconds
                }
            </script>
        </section>
        <footer>
            <section id="Contact">
                <div class="card footer mb-3" style="background-color: rgb(248, 226, 226);">
                    <div class="card-body">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title logo2">Fast<span class="spanLogo2">Test</span></h5>
                                    <p class="card-text text-black-50" style=" font-family: 'Kite One', sans-serif;">It is an
                                        online platform that is going to help people to get tested for COVID19 as fast as possible 
                                        .</p>
                                </div>
                                <div class="col">
                                    <h5 class="card-title text-black-50"
                                        style="margin-left: 88px; font-weight: bold;font-family: 'Piazzolla', serif;">Follow Us
                                    </h5>
                                    <ul class="listul">
                                        <li><a href="#">Twitter</a></li>
                                        <li><a href="#">Instagram</a></li>
                                    </ul>
                                </div>
                                <div class="col">
                                    <h5 class="card-title text-black-50" style=" font-weight: bold;font-family: 'Piazzolla', serif;">Reach out to us</h5>
                                    <form method="POST" action="SendMailServlet">
                                        <input type="text" name="mails" id="email"  placeholder="Enter Email Addrress"> <br>
                                        <textarea name="mssg" id="" cols="25" rows="3" placeholder="Your message"></textarea> <br>
                                        <input type="submit" class="foot" class="btn btn-secondary" value="Send">
                                    </form>
                                    <br>
                                    <br>
                                    <div class="Iconss">
                                        <pre> <p><a href="#"><i class="fas fa-map-marker-alt fa-lg" style="color: black;"></i></a>     <a href="#"><i class="fas fa-phone fa-lg" style="color: black;"></i></a>     <a href="#"><i class="fas fa-globe fa-lg" style="color: black;"></i></a></p></pre>
              </div>
            </div>
          </div>
        </div>
        <div class="text-center">
          <p class="card-text copyright"><small> Copyright 2020 | FastTest</small></p>
        </div>
      </div>
    </section>
  </footer>
</body>

</html>