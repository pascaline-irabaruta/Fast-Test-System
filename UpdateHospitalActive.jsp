<%-- 
    Document   : UpdateHospitalActive
    Created on : 20-Nov-2020, 15:40:11
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
            Hospital h = new HospitalCont().getOneh(Integer.parseInt(request.getParameter("id")));
            Hospital pa = new Hospital();
            pa.setName(h.getName());
            pa.setDescription(h.getDescription());
            pa.setNbrOfpplePerDay(h.getNbrOfpplePerDay());
            pa.setPassword(h.getPassword());
            pa.setPicture(h.getPicture());
            pa.sethId(h.gethId());
            pa.setUsername(h.getUsername());
            pa.setActive(h.isActive());
            if (pa.isActive()){
            pa.setActive(false);
            } else {
                pa.setActive(true);
            }
            String upt = new HospitalCont().update(pa);
            response.sendRedirect("AdminPage.jsp");
        %>
    </body>
</html>
