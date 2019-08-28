<%-- 
    Document   : registration
    Created on : Feb 13, 2019, 4:04:49 PM
    Author     : Ankit Mishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script type="text/javascript">
            function ajaxexample()
            {
          
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
                     var ajaxDisplay=document.getElementById("madhu");
                     ajaxDisplay.innerHTML=ajaxRequest.responseText;
                     madhu=ajaxRequest.responseText;
                    }
                }
                var sname=document.getElementById("em").value;
                var querystring="?email="+sname;
                ajaxRequest.open("GET","getregistration.jsp"+querystring, true);
                ajaxRequest.send(null);
            }
            </script>
      
            <center>
                <h1>Registration Form</h1>
                <table border="1">
                    
                    <tr><td>name:</td><td><input type="text" name="txtname"/></td></tr>
                    <tr><td>email:</td><td><input type="text" name="txtemail" id="em" onchange="ajaxexample()"/></td></tr>
                    <tr><td>password:</td><td><input type="password" name="txtpass"/></td></tr>
                    <tr><td>mobile:</td><td><input type="text" name="txtmob"/></td></tr>
                    <tr><td>address:</td><td><input type="text" name="txtadd"/></td></tr>
                    <tr><td></td><td><input type="submit" value="submit"/></td></tr>
                    
                </table>
                <p id="madhu" ></p>
            </center>
     
    </body>
</html>
