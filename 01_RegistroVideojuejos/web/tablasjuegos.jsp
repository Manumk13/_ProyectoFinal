<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ResultSet juegos = (ResultSet) request.getAttribute("datos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TABLA JUEGOS</title>

        <style>

            .principal{

                background-color: teal;
                color: whitesmoke;

            }
            table{
                  text-align: center;

                background-color: gold;
            }

            a{

                text-decoration: none;
                color: #0000FF;
            }


        </style>
    </head>
    <body>
        <table border="1">
            <%
                while (juegos.next()) {
            %>


            <tr>
                <td class="principal">ID</td>
                <td class="principal">IMAGEN</td>

                <td class="principal">NOMBRE</td>
                <td class="principal">COMPAÑIA</td>
                <td class="principal">DESARROLLADOR</td>
                <td class="principal">GENERO</td>
                <td class="principal">PLATAFORMA</td>
                <td class="principal">PRECIO</td>
                <td class="principal">BORRAR</td>

            </tr>
            <tr>
                <td><%=juegos.getInt("id")%></td>
                <td><img width="100px" src="<%=juegos.getString("imagen")%>"</td>

                <td><%=juegos.getString("nombre")%></td>
                <td><%=juegos.getString("compañia")%></td>
                <td><%=juegos.getString("desarrollador")%></td>
                <td><%=juegos.getString("genero")%></td>
                <td><%=juegos.getString("plataforma")%></td>

                <td><%=juegos.getFloat("precio")%>€</td>
                <td><a href="BorradoJuegosServlet?idCamiseta=<%=juegos.getInt("id")%>">Borrar</a></td>

            </tr>
            <% }%>
        </table>
    </body>
</html>
