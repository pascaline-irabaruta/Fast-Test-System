<%-- 
    Document   : Hospital
    Created on : 11-Nov-2020, 14:00:32
    Author     : PACY
--%>

<%@page import="Controler.BookingsCont"%>
<%@page import="Model.Hospital"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Bookings"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body id="aptbody">
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
                            <a class="nav-link text-white" href="Homepage.jsp">Signin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="Homepage.jsp">Contact</a>
                        </li>
                    </ul>
                    <div class="form-inline my-2 col-md-3 ">
                        <i class="nav-item social-icon fab fa-twitter sicon"></i>
                        <i class="nav-item social-icon text-white fab fa-facebook sicon"></i>
                        <i class="nav-item social-icon text-white fab fa-instagram sicon"></i>
                        <i class="nav-item social-icon text-white fas fa-envelope  sicon"></i>
                        <a id="create" href="LogOut.jsp" class="nav-item  active btn btn-light">Log out</a> 
                    </div>
                </div>
            </nav>
        </header>
        <section id="pb">
            <h2 class="text-center">Available Appointments</h2>
            <div class="container">
                <div class="row">
                    <%
                        Hospital h = (Hospital) session.getAttribute("hospital");
                        System.out.println(h.getName());

                        List<Bookings> patients = new BookingsCont().findPatients(h.getName());
                        if (patients.isEmpty()) {
                    %>
                    <h2 class="text-white">No bookings made yet!</h2>
                    <%
                    } else {
                        for (Bookings b : patients) {
                            Bookings boo = new BookingsCont().getOneb(b.getBooking_id());
                            session.setAttribute("upSt", boo);
                   
                    %>
                    <div class="col-4">
                        <div id="pcard" class="card">
                            <div class="card-body">
                                <strong>Full names:&nbsp;</strong><span><%=b.getPatientName()%></span> <br>
                                <strong>Appointment Date: &nbsp;</strong><span><%=b.getDateOfTesting()%></span><br>
                                <strong>Status:&nbsp;</strong><span id="stat"><%=b.getStatus()%></span>
                            </div>
                            <div class="card-footer">
                                <a id="apoint" class="btn-success" href="updateStatus.jsp?id=<%=b.getBooking_id()%>">Update status</a>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
        </section>
    </body>
    <footer id="hospFooter">
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
                                <input type="text" name="" id="email"  placeholder="Enter Email Addrress"> <br>
                                <textarea name="" id="" cols="25" rows="3" placeholder="Your message"></textarea> <br>
                                <button type="submit" class="foot" class="btn btn-secondary">Send</button>
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
</html>
        
</html>
