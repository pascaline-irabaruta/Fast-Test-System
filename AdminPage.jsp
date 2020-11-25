<%-- 
    Document   : AdminPage
    Created on : 06-Nov-2020, 16:32:17
    Author     : PACY
--%>

<%@page import="Controler.BookingsCont"%>
<%@page import="Model.Bookings"%>
<%@page import="Controler.PatientCont"%>
<%@page import="Model.Patient"%>
<%@page import="java.util.List"%>
<%@page import="Model.Hospital"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <body id="hbody">
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
                            <a class="nav-link text-white" href="#contact">Contact</a>
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
        <section id="hreg">
            <div class="container">
                <h2 style="text-decoration: underline">Register a new Admin</h2>
                <div class="row">
                    <div class="col-sm-5" id="hf">
                        <form id="AForm" action="AdminSave" method="POST" enctype="multipart/form-data">
                            <table border="0">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Full name:</td>
                                        <td><input type="text" name="aName" required="true"/></td>
                                    </tr>
                                    <tr>
                                        <td>Username:</td>
                                        <td><input type="text" name="Auname" required="true"/></td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td> <input type="password" name="apsswd" required="true"/></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" value="Register" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    <div class="col-sm-5" id="lf">

                    </div>
                </div>
                <div class="container">
                        <h2>List of registered patients</h2>
                    <table  class="table table-sm table-striped  table-bordered table table-hover" border="1">
                        <thead>
                            <tr>
                                <th>Patient name</th>
                                <th>Email </th>
                                <th>Gender</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Active</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            List<Patient> pa = new PatientCont().findAll();
                            for (Patient pat : pa) {
                        %>
                        <tr>
                            <td><%=pat.getName()%></td>
                            <td><%=pat.getMail()%></td>
                            <td><%=pat.getGender()%></td>
                            <td><%=pat.getUser_name()%></td>
                            <td><%=pat.getPassword()%></td>
                            <td><%=pat.isActive()%></td>
                            <%
                                if (pat.isActive()) {
                            %>
                            <td>
                                <a value="" class="btn btn-md btn-danger" href="UpdatePatientActive.jsp?id=<%=pat.getUser_name()%>">Deactivate</a>
                            </td>
                            <%
                            } else {
                            %>
                            <td>
                                <a value="" class="btn btn-md btn-danger" href="UpdatePatientActive.jsp?id=<%=pat.getUser_name()%>">Activate</a>
                            </td>
                            <% } %>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>

                </div>
                <div class="row">
                    <h2 class="text-center" style="text-decoration: underline">List of Registered Hospitals</h2>
                    <table  class="table table-sm table-striped  table-bordered table table-hover" border="1">
                        <thead>
                            <tr>
                                <th>Hospital name</th>
                                <th>Description </th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Picture</th>
                                <th>Number of people<br>tested per day</th>
                                <th>Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Hospital> ls = new Controler.HospitalCont().findAll();
                                for (Hospital hs : ls) {
                            %>
                            <tr>
                                <td><%=hs.getName()%></td>
                                <td><%=hs.getDescription()%></td>
                                <td><%=hs.getUsername()%></td>
                                <td><%=hs.getPassword()%></td>
                                <td><%=hs.getPicture()%></td>
                                <td><%=hs.getNbrOfpplePerDay()%></td>
                                <td><%=hs.isActive()%></td>
                                 <%
                                if (hs.isActive()) {
                            %>
                            <td>
                                <a value="" class="btn btn-md btn-danger" href="UpdateHospitalActive.jsp?id=<%=hs.gethId() %>">Deactivate</a>
                                <a class="btn btn-md btn-primary" href="updateHospital.jsp?id=<%=hs.gethId()%>">update</a>
                            </td>
                            <%
                            } else {
                            %>
                            <td>
                                <a value="" class="btn btn-md btn-danger" href="UpdateHospitalActive.jsp?id=<%=hs.gethId()%>">Activate</a>
                                <a class="btn btn-md btn-primary" href="updateHospital.jsp?id=<%=hs.gethId()%>">update</a>
                            </td>
                            <% } %>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
                
                        <div class="container">
                            
                        <h2>List of overall bookings</h2>
                    <table  class="table table-sm table-striped  table-bordered table table-hover" border="1">
                        <thead>
                            <tr>
                                <th>Hospital name</th>
                                <th>Patient name </th>
                                <th>Booked Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            List<Bookings> bo = new BookingsCont().findAll();
                            for (Bookings boo : bo) {
                        %>
                        <tr>
                            <td><%=boo.getHospitalName() %></td>
                            <td><%=boo.getPatientName() %></td>
                            <td><%=boo.getDateOfTesting() %></td>
                            <td><%=boo.getStatus() %></td>
                            <% } %>
                        </tr>
                        </tbody>
                    </table>

                </div>
                        
            </div>
        </section>
    </body>
</html>
