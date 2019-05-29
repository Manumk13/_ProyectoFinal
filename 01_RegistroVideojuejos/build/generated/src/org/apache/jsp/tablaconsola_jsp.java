package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class tablaconsola_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    ResultSet consolas = (ResultSet) request.getAttribute("datos");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>TABLA CONSOLAS</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .principal{\n");
      out.write("                \n");
      out.write("                background-color: teal;\n");
      out.write("                color: whitesmoke;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            table{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                background-color: gold;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                \n");
      out.write("                text-decoration: none;\n");
      out.write("                color: #0000FF;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            ");

                while (consolas.next()) {
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"principal\">ID</td>\n");
      out.write("                <td class=\"principal\">IMAGEN</td>\n");
      out.write("\n");
      out.write("                <td class=\"principal\">NOMBRE</td>\n");
      out.write("                <td class=\"principal\">PLATAFORMA</td>\n");
      out.write("                <td class=\"principal\">DESCRIPCION</td>\n");
      out.write("\n");
      out.write("                <td class=\"principal\">PRECIO</td>\n");
      out.write("                 <td class=\"principal\">ELIMINAR</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"id\">");
      out.print(consolas.getInt("id"));
      out.write("</td>\n");
      out.write("                <td><img width=\"100px\" src=\"");
      out.print(consolas.getString("imagen"));
      out.write("\"</td>\n");
      out.write("\n");
      out.write("                <td>");
      out.print(consolas.getString("nombre"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(consolas.getString("plataforma"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(consolas.getString("descripcion"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(consolas.getFloat("precio"));
      out.write("€</td>\n");
      out.write("                <td><a href=\"BorradoConsolasServlet?idConsolas=");
      out.print(consolas.getInt("id"));
      out.write("\">Borrar</a></td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            ");
 }
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
