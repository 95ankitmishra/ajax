<%-- 
    Document   : ajaxdata
    Created on : Feb 21, 2019, 2:05:47 PM
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
<!--        this is sample change-->
        <%
           String sid=request.getParameter("sid");
           Class.forName("com.mysql.jdbc.Driver");
           String text="<option>select city</option>";
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebilling","root","");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from city where sname='"+sid+"'");
           while(rs.next())
           {
               text=text+"<option>"+rs.getString(2)+"</option>";
           }
           out.println(text);
        %>
    </body>
</html>
