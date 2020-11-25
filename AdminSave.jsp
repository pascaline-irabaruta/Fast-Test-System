<%-- 
    Document   : AdminSave
    Created on : 23-Nov-2020, 18:38:15
    Author     : PACY
--%>

<%@page import="Controler.AdminCont"%>
<%@page import="Model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Admin a = new Admin();
            a.setAdminname(request.getParameter("aName"));
            a.setAdusername(request.getParameter("Auname"));
            a.setAdpassword(request.getParameter("apsswd"));
            String crt = new AdminCont().create(a);
            response.sendRedirect("AdminPage.jsp");
            %>
    </body>
</html>
