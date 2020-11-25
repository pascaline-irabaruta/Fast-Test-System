<%-- 
    Document   : update
    Created on : 13-Nov-2020, 17:18:13
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
            Hospital hp = new HospitalCont().getOneHospital(request.getParameter("hName"));
            n.sethId(hp.gethId());
            n.setName(request.getParameter("hName"));
            n.setDescription(request.getParameter("hdes"));
            n.setPicture(request.getParameter("hpict"));
            n.setPassword(request.getParameter("hpwd"));
            n.setUsername(request.getParameter("husname"));
            n.setNbrOfpplePerDay(Integer.parseInt(request.getParameter("hnbr")));
            n.setHstatus(false);
            String message = new Controler.HospitalCont().update(n);
            response.sendRedirect("AdminPage.jsp");
        %>
        %>
    </body>
</html>
