<%-- 
    Document   : projectComponant
    Created on : Dec 21, 2020, 2:11:16 PM
    Author     : Ram
--%>

<%@page import="DAO.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>
        <style>
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
        <%
            int s = Integer.parseInt(request.getParameter("id"));
            String category="";
            if(s==1){
                category="Java";
            }else if(s==2){
                category="Android";
            }else if(s==3){
                category="HTML/CSS/BootStrap";
            }else{
                category="JavaScript";
            }
            Connection con = ConnectionProvider.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from project where category='"+category+"'");

            while (rs.next()) {
                out.print("<div class='card' style='width: 18rem; float : left; margin: 10px; border:1px solid; padding:10px;'>"
                        + "<h5 class='bg-dark' style='color: white; padding :20px;'>" + rs.getString(3) + "(" + rs.getString(2) + ")</h5>"
                        + "<img class='card-img-top' src='../projectImage/" + rs.getString(4) + "'></a>"
                        + "<div class='card-body'>"
                        + "<p>" + rs.getString(5) + "</p>"
                        + "<a href='downloadProject.jsp?id="+rs.getString(1)+"' id='aa' style='color: black;' class='btn btn-outline-primary'>Download Source Code</a>"
                        + "</div>"
                        + "</div>");
            }
        %>

    </body>
</html>
