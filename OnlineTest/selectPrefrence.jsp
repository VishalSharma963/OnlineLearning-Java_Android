<%-- 
    Document   : selectPrefrence
    Created on : Dec 13, 2020, 12:42:10 PM
    Author     : Ram
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="../errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">
        <title>Starting Test</title>
        
        <style>
            body{
                background: linear-gradient(to right,#d500f9,#1976d2);
            }
        </style>
    </head>
    <body>
        <div class="container" >
            <div class="text-center" style="padding: 20px; background-color: rgb(0,0,0,.5)">
                <h1 style="color: white;">Please Select One</h1>
                <hr style="background-color: yellow">
                <form method="get" style="padding: 30px;" action="OnlineTest.jsp">
                    <select class="form-control mb-4" name="catagory">
                        <option>Android</option>
                        <option>Java</option>
                        <option>C</option>                                               
                    </select>
                    
                    <input type="submit" class="btn btn-outline-primary form-control" value="Start">
                </form>                
            </div>         

        </div>



        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
