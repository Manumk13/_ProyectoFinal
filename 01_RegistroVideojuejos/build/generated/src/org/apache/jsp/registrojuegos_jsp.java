package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registrojuegos_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');

HttpSession misession= request.getSession(true);
if (misession.getAttribute("validado")==null){
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/indexadmin.jsp");
        dispatcher.forward(request, response);
}

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <center> <h1> Registro de juegos </h1></center>\n");
      out.write("       \n");
      out.write("    <div>\n");
      out.write("        <form action=\"RegistroServlet\" method=\"GET\" ><center>\n");
      out.write("                <input type=\"text\" name=\"imagen\" id=\"imagen\" ><br><br>\n");
      out.write("             \n");
      out.write("                <input type=\"text\" name=\"nombre\" id=\"nombre\" placeholder=\"Nombre\" required><br><br>\n");
      out.write("                <input type=\"text\" name=\"compañia\" id=\"compañia\" placeholder=\"Compañia\" required ><br><br>\n");
      out.write("                <input type=\"text\" name=\"desarrollador\" id=\"desarrollador\" placeholder=\"Desarrollador\" required><br><br>\n");
      out.write("                <input type=\"text\" name=\"plataforma\" id=\"plataforma\" placeholder=\"Plataforma\" required> <br><br>\n");
      out.write("                <input type=\"text\" name=\"genero\" id=\"genero\" placeholder=\"Genero\" required> <br><br>\n");
      out.write("               \n");
      out.write("                <input type=\"number\" step=0.01 name=\"precio\" id=\"precio\" placeholder=\"Precio\"> <br><br>\n");
      out.write("                \n");
      out.write("                <input type=\"submit\" value=\"Registrar\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            </center> \n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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
