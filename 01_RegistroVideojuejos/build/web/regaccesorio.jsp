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
    <center> <h1> REGISTRO DE ACCESORIOS </h1></center>

    <div>
        <form action="RegistroAccesorioServlet" method="GET"><center>
                <input type="text" name="imagen" id="imagen" placeholder="Imagen" required><br><br>

                <input type="text" name="nombre" id="nombre" placeholder="Nombre" required><br><br>
                <input type="text" name="plataforma" id="plataforma" placeholder="Plataforma" required> <br><br>
                <input type="text" name="descripcion" id="descripcion" placeholder="Descripcion"> <br><br>

                <input type="number" step=0.01 name="precio" id="precio" placeholder="Precio" required> <br><br>

                <input type="submit" value="Registrar Accesorios">

       
            </center> 
        </form>
    </div>
</body>
</html>
