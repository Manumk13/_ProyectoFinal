<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession misession= request.getSession(true);
if (misession.getAttribute("validado")==null){
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/validadoradmin.jsp");
        dispatcher.forward(request, response);
}
%>


<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
                <a href="ConsultaJuegosServlet">Tabla juegos</a>
                 <a href="ConsultaAccesoriosServlet">Tabla Accesorios</a>
                   <a href="ConsultaConsolasServlet">Tabla Consolas</a>
            
            
        </div>
    </body>
</html>
