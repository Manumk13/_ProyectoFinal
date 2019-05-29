<%-- 
    Document   : vercesta
    Created on : 28-may-2019, 11:14:01
    Author     : cice
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
        <%
            ArrayList<String> cesta = (ArrayList<String>)session.getAttribute(("cesta"));
            if (cesta!=null){
                for (String producto : cesta) {
                    out.print("<tr><td>" + producto + "</td></tr>");
                }
            }
        %>
        </table>
        <a href="https://www.paypal.com/es/home">LOGOTIPO DE PAYPAL</a>
    </body>
</html>
