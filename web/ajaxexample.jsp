<%-- 
    Document   : ajaxexample
    Created on : Feb 21, 2019, 2:18:36 PM
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
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebilling","root","");
           Statement stmt=con.createStatement();
        %>
        <script type="text/javascript">
            function ajaxexample()
            {
                alert("calling");
                var ajaxrequest;
                try
                {
                    ajaxRequest=new XMLHttpRequest();
                }
                catch(exception){
                    alert("browser not supported");
                }
                ajaxRequest.onreadystatechange=function()
                {
                    if(ajaxRequest.readyState==4)
                    {
                     var ajaxDisplay=document.getElementById("ajaxDisplay");
                     ajaxDisplay.innerHTML=ajaxRequest.responseText;
                    }
                }
                var sname=document.getElementById("state").value;
                var querystring="?sid="+sname;
                ajaxRequest.open("GET","ajaxdata.jsp"+querystring, true);
                ajaxRequest.send(null);
            }
            </script>
            <center>
                <table border="1">
                    <tr><td>state</td><td><select id="state" onchange="ajaxexample()" name="op">
                    <option></option>
                    <%
                        ResultSet rs=stmt.executeQuery("select * from state");
                        while(rs.next())
                        {
                            %>
                            <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                            <%} %>
                    </select></td></tr>
                    <tr><td>city</td><td><select id="ajaxDisplay"></select></td></tr>
                    <tr><td></td><td><button>save</button></td></tr>
                </table>
            </center>
    </body>
</html>
