<%-- 
    Document   : updateHospital
    Created on : 13-Nov-2020, 16:49:29
    Author     : PACY
--%>

<%@page import="Controler.HospitalCont"%>
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
                            <a class="nav-link text-white" id="homep" href="#homepage">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#signin">Signin</a>
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
                        <!-- <a id="create" class="nav-item  active btn btn-light">create post</a> -->
                    </div>
                </div>
            </nav>
        </header>
        <section id="pb">
            <%
            Hospital h = new HospitalCont().getOneh(Integer.parseInt(request.getParameter("id")));
            %>
        <h1>Update a Hospital</h1>
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
                                    <td><input type="text" name="hName" required="true" value="<%=h.getName()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Description:</td>
                                    <td><input type="text" name="hdes" required="true" value="<%=h.getDescription()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Number of people they test per day</td>
                                    <td> <input type="number" name="hnbr" required="true" value="<%=h.getNbrOfpplePerDay()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Username</td>
                                    <td> <input type="text" name="husname" required="true" value="<%=h.getUsername()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td> <input type="password" name="hpwd" required="true" value="<%=h.getPassword()%>"/></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Update" required="true"/></td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
        </section>
    </body>
</html>
