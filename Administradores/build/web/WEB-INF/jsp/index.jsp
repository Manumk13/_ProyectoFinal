
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset= UTF_8">
        <title>Registro y Consulta de Administradores</title>
        <style>
            a:link {color:black;}
            a:visited {color:black;}
            a:active {color:black;}
            a:hover {color:#0000C2}
            a{
                text-decoration: none;


            }
            body{

                background-color: #C2E0FF;
                color: #000000;
            }

            .titulo{
                background-color: #000000;
                color: #FFFFFF;
                text-align: center;

            }
            .id{
                background-color:#00FFFF ;
                color: #000000;
                text-align: center;


            }
            .info{
               
                color: #000000;
                text-align: center;

            }

        </style>
    </head>

    <body>


        <center>
            <h1>Registro y Consulta de Administradores</h1><br><br>
            <a href="creacion.htm">REGISTRAR NUEVO ADMINISTRADOR</a><br><br>
            <table border="1">
                <tr class="titulo">
                    <td> ID</td>
                    <td> NOMBRE</td>
                    <td> APELLIDOS</td>
                    <td> EMAIL</td>
                    <td> PASSWORD</td>

                </tr>

                <c:forEach var="dato" items="${datos}">

                    <tr class="info">
                        <td class="id"> ${dato.id}</td>
                        <td> ${dato.nombre}</td>
                        <td> ${dato.apellidos}</td>
                        <td> ${dato.email}</td>
                        <td> ${dato.password}</td>

                    </tr>

                </c:forEach>
            </table>
        </center>

    </body>
</html>
