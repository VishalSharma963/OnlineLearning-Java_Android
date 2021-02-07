<%-- 
    Document   : OnlineTest
    Created on : Dec 18, 2020, 8:03:01 AM
    Author     : Ram
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page errorPage="../errorPage.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">
        <title>Test</title>

        <style>
            body{
                background: linear-gradient(to right,#d500f9,#1976d2);
            }
            #div1{
                background-color: rgb(0,0,0,.5);
            }           
            #header{
                background : linear-gradient(to right ,rgba(255,255,255),rgba(61,255,67),rgba(255,255,255));
                padding :20px;
                border-radius:50%;
                color: white;
            }          
        </style>
    </head>
    <body>
        <%
            String str = request.getParameter("catagory");
        %>
        <h1><button title="Go to the Home Screen" data-toggle="modal" data-target="#Modal" class="fa fa-home" aria-hidden="true"></button></h1>

        <div class="container mt-2">            
            <div class="text-center">

                <h1 id='header'><%=str%> </h1>

                <hr style="background-color: #ffff00;">
            </div>

            <div id="div1">
                <%

                    String tblname = "";
                    if (str.equals("Android")) {
                        tblname = "androidquiz";
                    } else if (str.equals("Java")) {
                        tblname = "javaquiz";
                    } else {
                        tblname = "Cquiz";
                    }

                    Connection con = ConnectionProvider.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from " + tblname);
                    int i = 0;

                    while (rs.next()) {
                        out.print("<h1 style='color: #ffff00; padding: 10px;'>" + rs.getString(1) + "</h1>"
                                + "<div style='padding: 30px;'>"
                                + "<p style='font-size: 20px; color: white; '><label id='r" + i + "' ><input  name='radio" + i + "' required='' type='radio'>" + rs.getString(2) + "</label></p>"
                                + "<p style='font-size: 20px; color: #76ff03'><label id='r" + i + "' ><input  name='radio" + i + "' type='radio'>" + rs.getString(3) + "</label></p>"
                                + "<p style='font-size: 20px; color: #ffff00'><label id='r" + i + "' ><input  name='radio" + i + "' type='radio'>" + rs.getString(4) + "</label></p>"
                                + "<p style='font-size: 20px; color: #ff3d00'><label id='r" + i + "' ><input  name='radio" + i + "' type='radio'>" + rs.getString(5) + "</label></p>"
                                + "<button id='btn" + i + "'>Show Answer</button><label style='color: white;font-size: 20px; margin-left: 20px;' id='label" + i + "'>" + rs.getString(6) + "</label>"
                                + "</div>");

                        i++;
                    }
                %>                  
            </div>            

            <!-- Modal -->
            <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">                        
                        <div class="modal-body">
                            Do you want to Exit ?
                            <div class="text-center mt-5">
                                <button type="button" class="btn btn-outline-danger" data-dismiss="modal">No</button>
                                <a href="../index.html"><button type="button" class="btn btn-outline-primary">Yes</button></a>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script>
                    $(document).ready(function () {
                        for (var i = 0; i < 10; i++) {
                            $('#label' + i).hide();
                        }

                        $("#btn0").click(function () {
                            $('#btn0').text('Hide Answer');
                            $('#label0').toggle();

                        });
                        $("#btn1").click(function () {
                            $('#btn1').text('Hide Answer');
                            $('#label1').toggle();
                        });
                        $("#btn2").click(function () {
                            $('#btn2').text('Hide Answer');
                            $('#label2').toggle();
                        });
                        $("#btn3").click(function () {
                            $('#btn3').text('Hide Answer');
                            $('#label3').toggle();
                        });
                        $("#btn4").click(function () {
                            $('#btn4').text('Hide Answer');
                            $('#label4').toggle();
                        });
                        $("#btn5").click(function () {
                            $('#btn5').text('Hide Answer');
                            $('#label5').toggle();
                        });
                        $("#btn6").click(function () {
                            $('#btn6').text('Hide Answer');
                            $('#label6').toggle();
                        });
                        $("#btn7").click(function () {
                            $('#btn7').text('Hide Answer');
                            $('#label7').toggle();
                        });
                        $("#btn8").click(function () {
                            $('#btn8').text('Hide Answer');
                            $('#label8').toggle();
                        });
                        $("#btn9").click(function () {
                            $('#btn9').text('Hide Answer');
                            $('#label9').toggle();
                        });


                    });

        </script>        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    </body>
</html>
