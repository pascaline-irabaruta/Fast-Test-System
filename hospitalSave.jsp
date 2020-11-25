<%-- 
    Document   : adreg
    Created on : 20-Jun-2020, 15:25:46
    Author     : PACY
--%>

<%@page import="Controler.HospitalCont"%>
<%@page import="Model.Hospital"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Hospital n = new Hospital();
            n.setName(request.getParameter("hName"));
            n.setDescription(request.getParameter("hdes"));
            n.setPicture(request.getParameter("hpict"));
            n.setPassword(request.getParameter("hpwd"));
            n.setUsername(request.getParameter("husname"));
            n.setNbrOfpplePerDay(Integer.valueOf(request.getParameter("hnbr")));
            String message = new Controler.HospitalCont().create(n);
            Hospital h = new HospitalCont().findOne(request.getParameter("husname"));
            session.setAttribute("hospital", h);
            response.sendRedirect("HospitalPage.jsp");
        %>
        <h1>thank you</h1>

    </body>
</html>
