<%-- 
    Document   : bookingSave
    Created on : 11-Nov-2020, 01:18:23
    Author     : PACY
--%>

<%@page import="Controler.HospitalCont"%>
<%@page import="Model.Hospital"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="Controler.BookingsCont"%>
<%@page import="Model.Status"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.Bookings"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("message");
            Bookings b = new Bookings();
            b.setPatientName(request.getParameter("pname"));
            b.setHospitalName(request.getParameter("honame"));
            Date d = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("ddate"));
            b.setDateOfTesting(d);
            b.setStatus(Status.Pending);
            
            List<Bookings> all = new BookingsCont().getDayh(d);
            Hospital h = new HospitalCont().getOneHospital(request.getParameter("honame"));
            int count = 0;
            for (Bookings bo : all) {
                    if(bo.getHospitalName().equals(h.getName())){
                        count++;
                    }
            }
            if(count > h.getNbrOfpplePerDay()){
                session.setAttribute("message", "There's no place left on the day you chose, please choose another day or another hospital");
                response.sendRedirect("PatientPage.jsp");
                System.out.println(h.getNbrOfpplePerDay());
                System.out.println(count);
            }
            else{
                String sv = new Controler.BookingsCont().create(b);
                System.out.println("hhh"+h.getNbrOfpplePerDay());
                System.out.println("hhh"+count);
                response.sendRedirect("thankyou.jsp");
            }
            
            
            %>
    </body>
</html>
