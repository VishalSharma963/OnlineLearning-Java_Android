<%-- 
    Document   : downloadProject
    Created on : Dec 21, 2020, 7:05:36 PM
    Author     : Ram
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width ,initial-scale= 1.0">
        <title>Download project</title>
        <style>
            h1{
                background-color: #ffff00;
                padding: 30px;
                border : 1px solid black;
                border-radius: 10px;
            }
        </style>
    </head>
    <body>
        <div id="header"></div>
        <%
            int id = Integer.parseInt(request.getParameter("id"));

            Connection con = ConnectionProvider.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from project where id=" + id);

        %>

        <div class="container mt-2" style="padding: 30px;">            
            <div>
                <%                    while (rs.next()) {
                        out.print("<h1>" + rs.getString(3) + " - " + rs.getString(2) + "</h1><hr>");
                        out.print("<h3>" + rs.getString(5) + "</h3><br><h2>Output: </h2>");
                        out.print("<img class='img-fluid' src='../projectImage/" + rs.getString(4) + "'>");
                        out.print("<br><br><br><a id='aa' href='../projectSource/" + rs.getString(6) + "' download='" + rs.getString(3) + "' style='color: black;' class='btn btn-outline-success'>Download Source Code in ZIP File<span><i class='ml-2 fa fa-download' aria-hidden='true'></i></span></a>");
                    }
                %>
            </div>
        </div>


        <div>    
            <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
            <script>
                $(document).ready(function(){
                   $('#header').load('../NavBar.html');
                });
            </script>


            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

        </div>
    </body>
</html>
