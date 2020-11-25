<%-- 
    Document   : deleteHospital
    Created on : 13-Nov-2020, 16:06:42
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
            String del = new HospitalCont().delete(h);
            response.sendRedirect("AdminPage.jsp");
            
        %>
    </body>
</html>
