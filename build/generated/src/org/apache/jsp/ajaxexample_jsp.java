package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class ajaxexample_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebilling","root","");
           Statement stmt=con.createStatement();
        
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function ajaxexample()\n");
      out.write("            {\n");
      out.write("                alert(\"calling\");\n");
      out.write("                var ajaxrequest;\n");
      out.write("                try\n");
      out.write("                {\n");
      out.write("                    ajaxRequest=new XMLHttpRequest();\n");
      out.write("                }\n");
      out.write("                catch(exception){\n");
      out.write("                    alert(\"browser not supported\");\n");
      out.write("                }\n");
      out.write("                ajaxRequest.onreadystatechange=function()\n");
      out.write("                {\n");
      out.write("                    if(ajaxRequest.readyState==4)\n");
      out.write("                    {\n");
      out.write("                     var ajaxDisplay=document.getElementById(\"ajaxDisplay\");\n");
      out.write("                     ajaxDisplay.innerHTML=ajaxRequest.responseText;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                var sname=document.getElementById(\"state\").value;\n");
      out.write("                var querystring=\"?sid=\"+sname;\n");
      out.write("                ajaxRequest.open(\"GET\",\"ajaxdata.jsp\"+querystring, true);\n");
      out.write("                ajaxRequest.send(null);\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("            <center>\n");
      out.write("                <table border=\"1\">\n");
      out.write("                    <tr><td>state</td><td><select id=\"state\" onchange=\"ajaxexample()\" name=\"op\">\n");
      out.write("                    <option></option>\n");
      out.write("                    ");

                        ResultSet rs=stmt.executeQuery("select * from state");
                        while(rs.next())
                        {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("                            ");
} 
      out.write("\n");
      out.write("                    </select></td></tr>\n");
      out.write("                    <tr><td>city</td><td><select id=\"ajaxDisplay\"></select></td></tr>\n");
      out.write("                    <tr><td></td><td><button>save</button></td></tr>\n");
      out.write("                </table>\n");
      out.write("            </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
