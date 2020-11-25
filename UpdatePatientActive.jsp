<%-- 
    Document   : UpdatePatientActive
    Created on : 20-Nov-2020, 13:06:16
    Author     : PACY
--%>

<%@page import="Model.Patient"%>
<%@page import="Controler.PatientCont"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Patient p = new PatientCont().getOne(request.getParameter("id"));
            Patient pa = new Patient();
            pa.setName(p.getName());
            pa.setMail(p.getMail());
            pa.setGender(p.getGender());
            pa.setUser_name(p.getUser_name());
            pa.setPassword(p.getPassword());
            System.out.println(p.isActive());
            pa.setActive(p.isActive());
            if (pa.isActive()){
            pa.setActive(false);
            } else {
                pa.setActive(true);
            }
            String upt = new PatientCont().update(pa);
            response.sendRedirect("AdminPage.jsp");
        %>
    </body>
</html>
