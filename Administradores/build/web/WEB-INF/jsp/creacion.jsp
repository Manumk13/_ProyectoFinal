<%-- 
    Document   : creacion
    Created on : 24-may-2019, 9:13:56
    Author     : cice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Admin</title>
        <script>
            function mensaje() {
                var nombre = document.getElementById("nombre").value;
                var apellidos = document.getElementById("apellidos").value;
                var email = document.getElementById("email").value;
                var cont = document.getElementById("cont").value;
                var cont2 = document.getElementById("cont2").value;
                if (nombre == "" || apellidos == "" || email == "" || cont == "" || cont2 == "") {
                    alert("Rellena el campo vacio");
                    console.log("error");
                } else if (cont !== cont2) {
                    alert("Ponga la misma contraseña");
                } else {
                    document.getElementById("formadmin").submit();
                    console.log("ok");
                }
            }



        </script>
        <style>
            .fondo{
                background-color: salmon;

                width: 40%;

                border-radius: 20px;

                margin-top: 150px;

                box-shadow: 4px 23px 34px 52px rgba(173,214,219,1);

            }


        </style>
    </head>
    <body>

    <center>
        <div class="fondo">
            <h1>REGISTRO DE ADMINISTRADORES</h1>
            <form  method="POST" id="formadmin">

                <input type="text" name="nombre" id="nombre" placeholder="Nombre" ><br><br>
                <input type="text" name="apellidos" id="apellidos" placeholder="Apellidos"><br><br>
                <input type="text" name="email" id="email" placeholder="Email"  ><br><br>
                <input type="password" name="password" id="cont" placeholder="Contraseña"  ><br><br>
                <input type="password"  id="cont2" placeholder="Repite la Contraseña"  ><br><br>
                <input type="button"  value="Agregar" onclick="mensaje()" >


            </form>
        </div>
    </center>
</body>
</html>
