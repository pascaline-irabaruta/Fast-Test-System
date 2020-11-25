<%-- 
    Document   : userReg
    Created on : 20-Jun-2020, 15:38:55
    Author     : PACY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
          <style>
        body{
            background-image: url("C:/Users/PACY/Pictures/wal1.jpg"); 
            background-size:inherit;
            background-position: center;
            background-repeat: no-repeat;  
            color: whitesmoke;
        }
         .regform {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
            border: 2px solid white;
            padding:30px;
        }
        .heading img{
            float: none;
            width: 60px;
            height: 60px;
            position: relative;
            border-radius: 50%
        }
        .heading h1{
            
            text-align: center;
            position: relative;
            color: white;
            font-size: 400%;
            font-style: italic;      
        }
        h3 {
            color: whitesmoke;
            text-align: center;
        }
        
    </style>
    <body>
        <div class="heading">
            <h1><b><img src="C:\Users\PACY\Pictures\charity1.png" alt="logo"/>Charity</b><sub>save a life</sub></h1>
      </div>
        <h3><b> NGO Registration Form</h3>
        <div class="regform">
        <form action="ngoSave.jsp" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name of N.G.O:</td>
                        <td><input type="text" name="ngoName"/></td>
                    </tr>
                    <tr>
                        <td>Field</td>
                        <td><input type="text" name="field"/></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td> <input type="text" name="description"/></td>
                    </tr>
                    <tr>
                        <td>Upload file</td>
                        <td> <input type="file" name="ngofile"/></td>
                    </tr>
                     <tr>
                        <td>Upload NGO picture</td>
                        <td> <input type="file" name="ngopic"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
      </div>
    </body>
</html>
