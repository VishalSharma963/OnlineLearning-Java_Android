<%-- 
    Document   : androidComponant
    Created on : Dec 12, 2020, 2:55:58 PM
    Author     : Ram
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page errorPage="../errorPage.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link href="../CodeStyle/prism.css" rel="stylesheet" type="text/css"/>
        <script src="../CodeStyle/prism.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        <style>
            a:hover{                
                box-shadow: none;
                text-decoration: none;                
            }
            li{
                color :blue;
            }
            li:hover{
                color : black;
            }
            h1{
                background : linear-gradient(to right,rgba(32,35,13),rgba(145,124,64));
                color: white;
                border-radius: 10px;
                padding: 10px;
                
            }
            #desc{
                font-size: 20px;
                color: black;
            }
         
        </style>
    </head>
    <body>
        <%!
            private Connection con;
            private ResultSet rs;
            private Statement st;
        %>

        
       
            <%
                int id = Integer.parseInt(request.getParameter("id"));
                try {
                    con = ConnectionProvider.getConnection();
                    st = con.createStatement();
                    
                    rs = st.executeQuery("SELECT * FROM  javacomponant WHERE id="+id);

                    while (rs.next()) {  

                        out.print("<h1 class='text-center mt-2'>"+rs.getString(2) +"</h1>"); //program name
                        out.print("<p id='desc'>"+rs.getString(4)+"</p>"); //program                         
                        out.print("<pre><code class='highlight language-java'>"+rs.getString(3)+"</code></pre>"); //program code
                        out.print("<h2>Output :</h2>");
                        out.print("<img class='img-fluid mb-2' src='../projectImage/"+rs.getString(5)+"' alt='not found'>"); //program image

                    }

                } catch (Exception e) {
                    out.print(e);
                }

            %>                                      
                
        
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
      
    </body>
</html>
