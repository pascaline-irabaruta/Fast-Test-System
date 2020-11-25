<%-- 
    Document   : updateStatus
    Created on : 14-Nov-2020, 18:35:24
    Author     : PACY
--%>

<%@page import="Model.Status"%>
<%@page import="Controler.BookingsCont"%>
<%@page import="Model.Bookings"%>
<%@page import="Controler.PatientCont"%>
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
            Bookings b = (Bookings) session.getAttribute("upSt");
            Bookings bo = new Bookings();
            bo.setBooking_id(b.getBooking_id());
            bo.setDateOfTesting(b.getDateOfTesting());
            bo.setHospitalName(b.getHospitalName());
            bo.setPatientName(b.getPatientName());
            bo.setStatus(Status.Tested);
            String upd = new BookingsCont().update(bo);
            response.sendRedirect("HospitalPage.jsp");
        %>
    </body>
</html>
