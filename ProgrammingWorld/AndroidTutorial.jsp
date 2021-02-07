<%-- 
    Document   : AndroidTutorial
    Created on : Nov 23, 2020, 9:38:01 PM
    Author     : Ram
--%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection,java.sql.ResultSet,java.sql.Statement" %>

<html>
    <head>      
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> <script> (adsbygoogle = window.adsbygoogle || []).push({google_ad_client: "my id that adsense generated", enable_page_level_ads: true});</script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

        </style>
    </head>
    <body>
        <div id="nav-placeholder"></div>        

        <div class="container-fluid"> 
            <div class="row">
                <div id="first" class="col-md-3 col-sm-12" style="border-right: 1px solid black;">
                    <div id="componant" style="height: 90vh; overflow: auto;">
                        <%!
                            Connection con;
                            ResultSet rs;
                            Statement st;
                        %>

                        <ul class="list-group">
                            <a onclick="location.reload();"><li class="list-group-item active">Android</li></a>

                            <%
                                try {
                                    con = ConnectionProvider.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from androidcomponant");

                                    while (rs.next()) {
                                        out.print("<button onClick='loadData(" + rs.getString(1) + ")' class='btn btn-outline-primary'><li class='list-group-item'>" + rs.getString(2) + "</li></button>");

                                    }

                                } catch (Exception e) {
                                        out.print(e);
                                } finally {
                                    con.close();
                                    rs.close();
                                    st.close();;
                                }
                            %>
                        </ul>
                    </div>
                    <div id="hide_componant">
                        <i id="fa" class="fa fa-bars" aria-hidden="true"></i>
                    </div>
                </div>

                <div id="second" class="col-md-6 col-sm-12" >
                    <div id="anim" style="height: 90vh; overflow: auto;">
                        <h1 style="color: black;">What is an Android ?</h1>
                        <p style="font-size: 17px;">

                            Android is a mobile operating system based on a modified version of the Linux kernel and 
                            other open source software, designed primarily for touchscreen mobile devices such as 
                            smartphones and tablets. Android is developed by a consortium of developers known as 
                            the Open Handset Alliance and commercially sponsored by Google.<br> 

                            It is free and open source software. its source code is known as Android Open Source
                            Project (AOSP), which is primarily licensed under the Apache License. However most
                            Android devices ship with additional proprietary software pre-installed, most 
                            notably Google Mobile Services (GMS) which includes core apps such as Google 
                            Chrome, the digital distribution platform Google Play and associated Google Play 
                            Services development platform. <br>About 70 percent of Android smartphones run Google's
                            ecosystem. 

                        </p>
                        <img class="img-fluid" src="../Image/android.jpg">

                        <br><br>
                        <table class="table">

                            <tbody>
                                <tr>                                
                                    <td>Developer</td>
                                    <td>mostly Google and the Open Handset Alliance</td>                                
                                </tr>
                                <tr>                                
                                    <td>Written in	</td>
                                    <td>Java (UI), C (core), C++</td>                                
                                </tr>
                                <tr>                                
                                    <td>Initial release	</td>
                                    <td>September 23, 2008</td>                                
                                </tr>

                            </tbody>
                        </table>
                        <div>
                            <hr>
                            <h2 class="bg-primary">How to create new project in android studio</h2>
                            <%
                                String img[] = {"and1", "and2", "and3"};
                                for (int i = 0; i < 3; i++) {
                                    out.print("<h4>Step :" + (i + 1) + "</h4>");
                                    out.print("<img class='img-fluid' src='../Image/" + img[i] + ".png'>");
                                }
                            %>
                        </div>
                    </div>
                    <div>      
                        <div id="loader" class="text-center" style="display: none;">
                            <div class="spinner-border" role="status">
                                <span class="sr-only">Loading...</span>                            
                            </div>
                            <p>Loading...</p>
                        </div>

                        <div  id="cont" style="height: 90vh; overflow: auto;"></div>
                    </div>
                </div>


                <!--                    ads-->
                <div class="col-md-3 col-sm-12">
                    <div>
                        <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-9687007734660221" data-ad-slot="2930227358" data-ad-format="auto">
                        </ins>
                    </div>
                </div>
            </div>

        </div>

        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script>
                                function loadData(getid) {
                                    $('#loader').show();
                                    $('#anim').slideUp(1000);
                                    $.ajax({
                                        url: "androidComponant.jsp",
                                        data: {id: getid},
                                        success: function (data, textStatus, jqXHR) {
                                            $('#loader').hide();
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


    </body>   
</html>
