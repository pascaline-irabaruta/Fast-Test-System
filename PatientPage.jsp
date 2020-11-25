<%-- 
    Document   : PatientPage
    Created on : 09-Nov-2020, 08:53:16
    Author     : PACY
--%>

<%@page import="Controler.BookingsCont"%>
<%@page import="Model.Bookings"%>
<%@page import="Model.Patient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Hospital"%>
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
    <body>
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
                            <a class="nav-link text-white" href="#Contact">Contact</a>
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
        <section id="hosbody">
            <%
                String ms = (String) session.getAttribute("message");
                if (ms != null) {
            %>
            <h2><%=ms%></h2>
            <%session.removeAttribute("message");

                }            %>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <button id="recent" class="btn-secondary">View your recent booked appointments</button>
                        <%
                            Patient pat = (Patient) session.getAttribute("patient");
                            if (pat == null) {
                        %>
                        <h3>You have no recent bookings yet</h3>
                        <%
                            }
                        %>
                        <table id="ptable" border="1">
                            <thead>
                                <tr>
                                    <th>Hospital name</th>
                                    <th>Appointment date</th>
                                </tr>
                            </thead>
                            <%
        //                        Patient pat = (Patient) session.getAttribute("patient");
                                List<Bookings> bo = new BookingsCont().findAll();
                                int check = 0;
                                for (Bookings b : bo) {
                                    if (b.getPatientName().equals(pat.getName())) {
                                        check = 1;
                            %>

                            <tbody>
                                <tr>
                                    <td><%=b.getHospitalName()%></td>
                                    <td><%=b.getDateOfTesting()%></td>
                                    <td></td>
                                </tr>
                                <%

                                        }
                                    }
                                    if (check == 0) {
                                %>
                                <tr> 
                                    <td id="t">No recent bookings yet</td>
                                    <td></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="container">
                <h2 class="text-center">Available Hospitals</h2>
                <div class="row">
                    <%
                        List< Hospital> ho = new ArrayList<>();
                        ho = new Controler.HospitalCont().findAll();
                        for (Hospital hosp : ho) {
                    %>
                    <div class="col-sm-4">
                        <div id="hcard" class="card">
                            <div class="card-header">
                                <img class="card-img-top" src="./ressources/<%=hosp.getPicture()%>"> 
                            </div>
                            <div class="card-body">
                                <strong><%=hosp.getName()%></strong>
                                <p><%=hosp.getDescription()%></p>
                            </div>
                            <div class="card-footer">
                                <a id="apoint" class="btn-success" href="bookingPage.jsp?id=<%=hosp.gethId()%>">MAKE AN APPOINTMENT</a>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>

                </div>
            </div>


        </section>
    </body>
    <footer id="pf">
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
