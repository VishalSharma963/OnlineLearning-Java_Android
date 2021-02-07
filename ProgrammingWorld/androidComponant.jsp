<%-- 
    Document   : androidComponant
    Created on : Dec 12, 2020, 2:55:58 PM
    Author     : Ram
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="../errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CodeStyle/prism.css" rel="stylesheet" type="text/css"/>
        <script src="../CodeStyle/prism.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                background-color: silver;
                border-radius: 10px;
                padding: 10px;
            }
            #desc{
                font-size: 20px;
                color: black;
            }
            pre{
                border: 1px solid;                
                padding: 10px;
                border-radius: 10px;                
                overflow: auto;
            }         
        </style>
    </head>
    <body>        
        <%!
            Connection con;
            ResultSet rs;
            Statement st;
        %>



        <%
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                con = ConnectionProvider.getConnection();
                st = con.createStatement();

                rs = st.executeQuery("SELECT * FROM  androidcomponant WHERE id=" + id);

                while (rs.next()) {
                    out.print("<h1>" + rs.getString(2) + "</h1>"); //program name
                    out.print("<p id='desc'>" + rs.getString(5) + "</p><hr>"); //program description
                    out.print("<p id='desc'>MainActivity.java</p>");
                    out.print("<pre><code class='highlight language-java'>" + rs.getString(4) + "</code></pre>"); //program code
                    out.print("<hr><p id='desc'>activity_main.xml</p>");
                    out.print("<pre><code class='highlight language-xml'>" + rs.getString(3) + "</code></pre>"); //program code

                    //if any drawable
                    int a = Integer.parseInt(rs.getString(8));
                    if (a == 1) {
                        out.print("<hr><h3>back.xml</h3>");
                        out.print("<img class='img-fluid' src='../Image/drawable.png'>");
                        out.print("<pre><code class='highlight language-xml'>" + rs.getString(7) + "</code></pre>");
                    
                    //if any second activity
                    } else if (a == 2) {                        
                        Statement st1 = con.createStatement();
                        ResultSet rs1 = st1.executeQuery("SELECT * FROM  andsecondactivity WHERE id=" + id);
                        while (rs1.next()) {
                            out.print("<br><br>");
                            out.print("<br><h1>Create a new Activity</h1>");
                            out.print("<img class='img-fluid' src='../projectImage/" + rs1.getString(4) + "' alt='not found'>");
                            out.print("<p id='desc'>SecondActivity.java</p>");
                            out.print("<pre><code class='highlight language-java'>" + rs1.getString(3) + "</pre>");
                            out.print("<hr><p id='desc'>Activity_second.xml</p>");
                            out.print("<pre class='highlight language-xml'>" + rs1.getString(2) + "</pre>");
                        }
                    } else {
                        out.print("<br><br>");
                    }
                    //output
                    out.print("<h1>Output :</h1>");
                    out.print("<div class='text-center'><img id='output' class='img-fluid' src='../projectImage/" + rs.getString(6) + "' alt='not found'></div>"); //program image

                }

            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, e);

            }

        %>  

    </body>
</html>
