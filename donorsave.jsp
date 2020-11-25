<%-- 
    Document   : donorsave
    Created on : 17-Oct-2020, 18:19:17
    Author     : PACY
--%>

<%@page import="Model.Gender"%>
<%@page import="Model.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Patient don = new Patient();
        don.setName(request.getParameter("Donorname"));
        don.setUser_name(request.getParameter("username"));
        don.setMail(request.getParameter("usermail"));
        don.setGender(Gender.valueOf(request.getParameter("gender")));
        don.setPassword(request.getParameter("userpswd"));
//        don.isActive();
        String message = new Controler.PatientCont().create(don);
        session.setAttribute("patient", don);
        response.sendRedirect("PatientPage.jsp");
        %>
       <h1>thank you</h1>
       
    </body>
</html>
