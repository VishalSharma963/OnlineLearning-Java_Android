<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection,java.sql.ResultSet,java.sql.Statement" %>
<html>
    <head>

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
            #aa{
                font-size: 10px;                                 
            }
            #aa:hover{
                font-size: 10px;
                text-decoration: none;
                box-shadow: none;
            }

        </style>
    </head>
    <body>
        <div id="nav-placeholder"></div>        

        <div class="container mt-2"> 
            <div class="row">
                <div id="first" class="col-md-3 col-sm-12" style="border-right: 1px solid black;">
                    <div id="componant">
                        <%!
                            private Connection con;
                            private ResultSet rs;
                            private Statement st;
                        %>

                        <ul class="list-group">
                            <a onclick="location.reload();"><li class="list-group-item active">Category</li></a>

                            <%
                                try {
                                    con = ConnectionProvider.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from category");

                                    while (rs.next()) {
                                        out.print("<button class='btn-outline-dark' onClick='loadData(" + rs.getString(1) + ")' class='btn btn-outline-primary'><li class='list-group-item'>" + rs.getString(2) + "</li></button>");

                                    }

                                } catch (Exception e) {
                                }
                            %>
                        </ul>
                    </div>
                    <div id="hide_componant">
                        <Button id="fa" class="mb-2 bg-info fa form-control" aria-hidden="true">See all Category</button>
                    </div>
                </div>

                <div id="second" class="col-md-9 col-sm-12">                                                          
                    <div class="bg-dark text-center">
                        <span style="font-size: 25px; color: white;">ALL PROJECT</span>
                        <img src="../Image/arrow.gif" width="100px;" height="100px;">
                    </div>
                    <div id="anim">                        

                        <%
                            rs = st.executeQuery("select * from project");

                            while (rs.next()) {
                                out.print("<div class='card' style='width: 18rem; float : left; margin: 10px; border:1px solid; padding:10px; height :550px;'>"
                                        + "<h5 class='bg-dark' style='color: white; padding :20px;'>" + rs.getString(3) + "(" + rs.getString(2) + ")</h5>"
                                        + "<img class='card-img-top' src='../projectImage/" + rs.getString(4) + "'></a>"
                                        + "<div class='card-body'>"
                                        + "<p>" + rs.getString(5) + "</p>"
                                        + "<a href='downloadProject.jsp?id="+rs.getString(1)+"' id='aa' style='color: black;' class='btn btn-outline-primary'>Download Source Code</a>"
                                        + "</div>"
                                        + "</div>");
                            }
                            con.close();
                            rs.close();
                            st.close();;

                        %>

                    </div>
                    <div id="and"></div>
                </div>

            </div>

        </div>

        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script>
                                function loadData(getid) {
                                    $.ajax({
                                        url: "projectComponant.jsp",
                                        data: {id: getid},
                                        success: function (data, textStatus, jqXHR) {
                                            $('#anim').slideUp(1000);
                                            $('#and').html(data);
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


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

    </body>   
</html>
