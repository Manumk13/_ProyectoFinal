<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>
    <head>
        <title>Formulario registro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function validar() {
                var nombre = document.getElementById("nombre").value;
                var apellidos = document.getElementById("apellido").value;
                var email = document.getElementById("email").value;
                var cont = document.getElementById("primercont").value;
                var cont2 = document.getElementById("segundacont").value;
                if (nombre == "" || apellidos == "" || email == "" || cont == "" || cont2 == "") {
                    alert("Rellena el campo vacio");
                    console.log("error");
                } else if (cont !== cont2) {
                    alert("Ponga la misma contraseña");
                } else {
                    document.getElementById("forusuario").submit();
                    console.log("ok");
                    alert("TE HAS REGISTRADO CORRECTAMENTE");
                }
            }

        </script>
        <style>
            *{
              padding: 0;
              margin: 0;
            }
            .fondo{
                background-color: salmon;

                width: 40%;

                border-radius: 20px;

                margin-top: 150px;

                box-shadow: 4px 23px 34px 52px rgba(173,214,219,1);

            }
            
            body{
                
                background-image: url("img/manu grande.jpg")
            }

        </style>
    </head>
    <body>
    <center>
        <div class="fondo">  

           
                <h1>Registro de usuarios</h1>
                <form action="RegistradorServlet" id="forusuario" method="GET">


                    <input type="text" name="nombre" id="nombre" placeholder="Nombre"  ><br><br>
                    <input type="text" name="apellido" id="apellido" placeholder="Apellido"  ><br><br>
                    <input type="email" name="email" id="email" placeholder="Email" required ><br><br>
                    <input type="password" name="password" id="primercont"  placeholder="Contraseña"  ><br><br>
                    <input type="password"   placeholder="Repita la Contraseña" id="segundacont"  ><br><br>

                    <input type="button" value="Aceptar" onclick="validar()" >







                </form>


        </div>  
    </center>
</body>
</html>

