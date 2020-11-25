<%-- 
    Document   : sign_in.jsp
    Created on : 28-Oct-2020, 16:33:32
    Author     : PACY
--%>

<%@page import="Controler.AdminCont"%>
<%@page import="Controler.HospitalCont"%>
<%@page import="Controler.PatientCont"%>
<%@page import="Model.Admin"%>
<%@page import="Model.Hospital"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Patient"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String unm = request.getParameter("unames");
            String upswd = request.getParameter("upswds");

            List<Patient> pat = new ArrayList<>();
            pat = new Controler.PatientCont().findAll();

            List< Admin> ad = new ArrayList<>();
            ad = new Controler.AdminCont().findAll();

            List< Hospital> ho = new ArrayList<>();
            ho = new Controler.HospitalCont().findAll();

            int x = 0;

            for (Patient dn : pat) {
                if (unm.equals(dn.getUser_name()) && upswd.equals(dn.getPassword())) {
                    if (dn.isActive()) {
                        x = 1;

                        session.removeAttribute("validatte");
                        Patient p = new PatientCont().getOne(unm);
                        session.setAttribute("patient", p);
                        response.sendRedirect("PatientPage.jsp");
                    }
                }
            }

            for (Admin adi : ad) {
                if (unm.equals(adi.getAdusername()) && upswd.equals(adi.getAdpassword())) {
                    x = 1;
                    Admin adii = new AdminCont().getA(unm);
                    session.setAttribute("admin", adii);
                    System.out.println(adii);
                    session.removeAttribute("validatte");
                    response.sendRedirect("AdminPage.jsp");
                }
            }

            for (Hospital hos : ho) {
                if (unm.equals(hos.getUsername()) && upswd.equals(hos.getPassword())) {
                    if (hos.isActive()) {
                        x = 1;
                        session.removeAttribute("validatte");
                        Hospital h = new HospitalCont().findOne(unm);
                        session.setAttribute("hospital", h);
                        response.sendRedirect("HospitalPage.jsp");
                    }
                }
            }

            if (x == 0) {
                session.setAttribute("validatte", "invalid username or password");
                response.sendRedirect("Homepage.jsp");
            }
        %>
    </body>
</html>
