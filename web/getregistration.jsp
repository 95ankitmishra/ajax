<%-- 
    Document   : getregistration
    Created on : Feb 13, 2019, 4:10:48 PM
    Author     : Ankit Mishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            
            String email=request.getParameter("email");
             Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/production","root","");
                   Statement stmt=con.createStatement();
                   ResultSet rs=stmt.executeQuery("select count(*)from registration where email= '"+email+"'");
                   rs.next();
                   int i=rs.getInt(1);
                   if(i>0)
                   {
                       out.println("user allready exist");
                    
                   }
                       else
                       {
                     out.println("new user");
                               }
                  
        %>
    </body>
</html>
