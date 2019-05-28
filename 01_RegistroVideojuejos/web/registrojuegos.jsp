<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession misession = request.getSession(true);
    if (misession.getAttribute("validado") == null) {
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
    <body >
    <center> <h1> Registro de juegos </h1></center>

    <div>
        <form action="RegistroServlet" method="GET" ><center>
                <input type="text" name="imagen" id="imagen" placeholder="URL Imagen" ><br><br>

                <input type="text" name="nombre" id="nombre" placeholder="Nombre" required><br><br>
                <input type="text" name="compañia" id="compañia" placeholder="Compañia" required ><br><br>
                <input type="text" name="desarrollador" id="desarrollador" placeholder="Desarrollador" required><br><br>
                <input type="text" name="plataforma" id="plataforma" placeholder="Plataforma" required> <br><br>
                <input type="text" name="genero" id="genero" placeholder="Genero" required> <br><br>

                <input type="number" step=0.01 name="precio" id="precio" placeholder="Precio"> <br><br>

                <input type="submit" value="Registrar">


            </center> 
        </form>
    </div>
</body>
</html>
