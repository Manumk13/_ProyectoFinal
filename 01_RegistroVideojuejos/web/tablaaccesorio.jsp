<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ResultSet accesorios = (ResultSet) request.getAttribute("datos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TABLA ACCESORIOS</title>
        <style>
            .principal{

                background-color: teal;
                color: whitesmoke;

            }

            table{


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
                while (accesorios.next()) {
            %>


            <tr>
                <td class="principal">ID</td>
                <td class="principal">IMAGEN</td>
                <td class="principal">NOMBRE</td>
                <td class="principal">PLATAFORMA</td>
                <td class="principal">DESCRIPCION</td>
                <td class="principal">PRECIO</td>
                <td class="principal">BORRAR</td>

            </tr>
            <tr>
                <td><%=accesorios.getInt("id")%></td>
                <td><img width="100px" src="<%=accesorios.getString("imagen")%>"</td>

                <td><%=accesorios.getString("nombre")%></td>
                <td><%=accesorios.getString("plataforma")%></td>
                <td><%=accesorios.getString("descripcion")%></td>
                <td><%=accesorios.getFloat("precio")%>€</td>
                <td><a href="BorradoAccesoriosServlet?idAccesorios=<%=accesorios.getInt("id")%>">Borrar</a></td>

            </tr>
            <% }%>
        </table>
    </body>
</html>

