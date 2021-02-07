<%-- 
    Document   : javaTutorial
    Created on : Nov 23, 2020, 9:37:50 PM
    Author     : Ram
--%>

<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page errorPage="../errorPage.jsp" %>
<%@page import="java.sql.Connection,java.sql.ResultSet,java.sql.Statement" %>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        <title>BMNV</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">                


        <style>
            #fa{
                font-size: 40px;
            }
            li:hover{
                color: black;
            }
            body::-webkit-scrollbar {
                width: 1em;
            }
        </style>
    </head>
    <body>
        <div id="nav-placeholder"></div>        

        <div class="container-fluid">             
            <div id="appdiv" style="padding: 10px; border: 1px solid red;" class="text-center bg-dark">                
                <div class="text-center">
                    <span><button class="btn btn-outline-warning" id="app">Hide <i class="fa fa-eye-slash" aria-hidden="true"></i></button></span>
                </div>
                <a style="text-decoration: none; color: white;" target="_blank" href="https://play.google.com/store/apps/details?id=com.bmnv.myapplication">                    
                    <p>Download java application from Play Store by BMNV </p>
                </a>                
            </div>

            <div class="row">
                <div id="first" class="col-md-3 col-sm-12" style="border-right: 1px solid black;">
                    <div id="componant" style="height: 90vh; scrollbar-width: none; overflow: auto;">
                        <%!
                            Connection con;
                            ResultSet rs;
                            Statement st;
                        %>

                        <ul class="list-group">
                            <a onclick="location.reload();"><li class="list-group-item active">JAVA</li></a>

                            <%
                                try {
                                    con = ConnectionProvider.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from javacomponant");

                                    while (rs.next()) {
                                        out.print("<button onClick='loadData(" + rs.getString(1) + ")' class='btn btn-outline-primary'><li class='list-group-item'>" + rs.getString(2) + "</li></button>");

                                    }

                                } catch (Exception e) {
                                       out.print(e);
                                }
                            %>
                        </ul>
                    </div>
                    <div id="hide_componant">
                        <i id="fa" class="fa fa-bars" aria-hidden="true"></i>
                    </div>
                </div>

                <div id="second" class="col-md-6 col-sm-12">                                                          
                    <div id="anim" style="height: 90vh; scrollbar-width: 1px; overflow: auto;">
                        <h1 style="color: black;">What is an JAVA ?</h1>
                        <p style="font-size: 17px;">

                            Java is a class-based, object-oriented programming language that is designed to have as few
                            implementation dependencies as possible. It is a general-purpose programming language intended 
                            to let application developers write once, run anywhere (WORA), meaning that compiled Java
                            code can run on all platforms that support Java without the need for recompilation.<br>
                            Java applications are typically compiled to bytecode that can run on any Java virtual
                            machine (JVM) regardless of the underlying computer architecture. The syntax of Java is 
                            similar to C and C++, but has fewer low-level facilities than either of them. The Java 
                            runtime provides dynamic capabilities (such as reflection and runtime code modification) 
                            that are typically not available in traditional compiled languages. As of 2019, Java was one
                            of the most popular programming languages in use according to GitHub, particularly for 
                            client-server web applications, with a reported 9 million developers. 

                        </p>
                        <img class="img-fluid" src="../Image/java.png">

                        <br><br>
                        <table class="table">

                            <tbody>
                                <tr>                                
                                    <td>Developer</td>
                                    <td><a href="https://en.wikipedia.org/wiki/Java_(programming_language)" target="_blank">James Gosling</a></td>                                
                                </tr>
                                <tr>                                
                                    <td>Filename extensions</td>
                                    <td>	.java, .class, .jar</td>                                
                                </tr>
                                <tr>                                
                                    <td>Initial release	</td>
                                    <td>May 23, 1995</td>                                
                                </tr>

                            </tbody>
                        </table>
                    </div>

                    <div>      
                        <div id="loader" class="text-center" style="display: none;">
                            <div class="spinner-border" role="status">
                                <span class="sr-only">Loading...</span>                            
                            </div>
                            <p>Loading...</p>
                        </div>

                        <div  id="cont" style="height: 90vh; scrollbar-width: none; overflow: scroll;">

                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-12">
                    
                </div>
            </div>

        </div>

        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script>
                                function loadData(getid) {
                                    $('#loader').show();
                                    $.ajax({
                                        url: "javaComponant.jsp",
                                        data: {id: getid},
                                        success: function (data, textStatus, jqXHR) {
                                            $('#loader').hide();
                                            $('#anim').slideUp(1000);
                                            $('#cont').html(data);
                                        }

                                    });
                                    if (window.matchMedia('(max-width: 767px)').matches) {
                                        $('#componant').hide();
                                        $('#hide_componant').show();

                                    } else {
                                        $('#hide_componant').hide();
                                    }
                                }


                                $(document).ready(function () {
                                    $('#app').click(function () {
                                        $('#appdiv').hide();
                                    });
                                    $("#nav-placeholder").load("../NavBar.html");


                                    if (window.matchMedia('(max-width: 767px)').matches) {
                                        $('#componant').hide();

                                    } else {
                                        $('#hide_componant').hide();
                                    }

                                    $('.fa').click(function () {
                                        $('#componant').fadeIn();
                                        $('#hide_componant').hide();
                                    });

                                });
        </script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/webkit.js/0.1.0/webkit.js" integrity="sha512-4radB7wSGlmlQJiqgJadNNYINr9oy4iIfeTlv0a7x/AmtOqwNqtndOSusv70X0GmRstJKuNFNQ1w3T27Nq9A5w==" crossorigin="anonymous"></script>
        
           </body>   
</html>
