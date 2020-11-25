<%-- 
    Document   : LogOut
    Created on : 21-Nov-2020, 09:31:10
    Author     : PACY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("Homepage.jsp");
        %>
    </body>
</html>
