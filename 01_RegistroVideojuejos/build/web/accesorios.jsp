<%-- 
    Document   : juegosps4
    Created on : 28-may-2019, 15:23:51
    Author     : cice
--%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ResultSet filacc = (ResultSet) request.getAttribute("datos");
%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css">
        <link href="https://fonts.googleapis.com/css?family=Audiowide" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+KuaiLe" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Black+Ops+One" rel="stylesheet">
        <title>Inicio</title>
        <script src="js/script.js"></script>
    </head>

    <body>

        <header>

            <div id="men0uprincipal">
                <nav class="navbar navbar-dark bg-dark">
                    <a class="navbar-brand" ><img src="img/manu grande.jpg" width="200"
                                                 height="100" alt=""></a>
                    <a href="index.html">  <h1 class="titulo">MMA GAMES</h1></a>

                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </nav>



            </div>



            <nav id="submenu">

                <nav class="navbar navbar-dark bg-info men">
                    <div class="ul">
                        <ul>
                            <div class="izquierda">
                                <li> <a class="text-white" href="validadorusuarios.jsp"><u>MI CUENTA</u> </a></li>
                            </div>

                            <div class="derecha">
                                <li><a class="text-white" href="registrousuarios.jsp"><u>REGISTRATE</u></a></li>
                            </div>
                        </ul>
                    </div>

                </nav>


            </nav>



        </header>


        <div class="container">

            <div class="container">
                <div class="bd-example">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img
                                    src="http://4.bp.blogspot.com/-Y5dzK5i2OqY/V_Q76eUkxRI/AAAAAAAAAEU/IzNzt92o5HMgLkzvOc9z6T5oM4ia4egeQCK4B/s1600/wallpaper-carrousel-battlefield1.png"
                                    class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Battlefield</h5>
                                    <p>Revolution</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img
                                    src="http://3.bp.blogspot.com/-Hv3ZBdJTLd8/V_Q4mf5zj9I/AAAAAAAAADs/Ezh9cg6advMTaRblj_8GG-Typpe8bQLegCK4B/s1600/carroufifia17.jpg"
                                    class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Fifa</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>


                            <div class="carousel-item">
                                <img
                                    src="http://4.bp.blogspot.com/-E9Mv_fPBBxc/V_Q6ms1LFSI/AAAAAAAAAD4/lLvrTwaKgHsUooy07NaWY3egH_VyuNOLACK4B/s1600/wowlegion1.jpg"
                                    class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Warcraft</h5>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>

                            <div class="carousel-item">
                                <img
                                    src="http://2.bp.blogspot.com/-17oImzTsiDo/V_Q7-ybYn1I/AAAAAAAAAEc/2zXRnpWm-1Y56b6P_LObjAlk2WjJCu6cACK4B/s1600/wallpaper-carrousel-mafia3.png"
                                    class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Mafia</h5>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                        </div>


                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

                <div class="cuerpo ">

                    <div class="filtro  col-4 ">

                        <div class="filconsolas">

                            <h2>FILTRAR</h2>
                            <div class="consola">

                                <h3>CONSOLAS</h3>

                                <div class="contconsola">


                                    <div class="centrar">

                                        <a href="FiltroConsolasServlet?plataforma=Ps4">PS4</a><br>
                                        <a href="FiltroConsolasServlet?plataforma=Xbox One">XBOX ONE</a><br>
                                        <a href="FiltroConsolasServlet?plataforma=Nintendo Switch">NINTENDO SWITCH</a><br>


                                    </div>


                                </div>


                            </div>

                            <div class="consola">

                                <h3>VIDEOJUEGOS</h3>


                                <div class="contconsola">

                                    <div>
                                        <p class="fpc">Filtrar por consola</P>
                                    </div>
                                    <div class="centrar ">
                                        <label ><a href="FiltroJuegosServlet?plataforma=Ps4">PS4</a></label><br>
                                        <label > <a href="FiltroJuegosServlet?plataforma=Nintendo Switch">NINTENDO SWITCH</a> </label><br>
                                        <label > <a href="FiltroJuegosServlet?plataforma=Xbox One">XBOX ONE</a> </label><br>


                                    </div>
                                    <div class="consola">

                                        <a href="FiltroAccesoriosServlet?plataforma=Acc"><h3>ACCESORIOS</h3></a>




                                    </div>
                                    <!--                <div class="centrar">
                                      <div class="logoredes">
                    
                                        <h2>Instagram</h2>
                                        <a href="https://www.instagram.com/mma_games/" target="_blank"><img
                                            src="https://img.programas-gratis.net/ico/instagram.png"></a>
                    
                                        <br>
                    
                                        <h2>Twitter</h2>
                                        <a href="https://twitter.com/MmagamesE" target="_blank"></a><img
                                          src="https://i.guim.co.uk/img/static/sys-images/Observer/Pix/pictures/2011/9/22/1316690227919/applogo-twitter-001.jpg?width=300&quality=85&auto=format&fit=max&s=e6cd378faa1a0ee38b851ee7c4e2fc3c"></a>
                    
                                        <br>
                    
                                        <h2>Facebook</h2>
                                        <a href="https://www.youtube.com/channel/UCDSnShBasZXBrp48Tu87eZA/featured?view_as=subscriber"
                                          target="_blank"><img src="https://img.programas-gratis.net/ico/facebook.png"></a>
                                        <br>
                    
                                        <h2>Youtube</h2>
                                        <a href="  https://www.youtube.com/channel/UCDSnShBasZXBrp48Tu87eZA/featured?view_as=subscriber"
                                          target="_blank"><img
                                            src="https://metro.co.uk/wp-content/uploads/2008/02/youtube_65x651.jpg?quality=90&strip=all"></a>
                    
                    
                                      </div>
                                    </div>
                                    -->
                                    <div class=container1>

                                        <img src="https://pm1.narvii.com/6697/1b71750464af8b887eee6aef882e6225145a8a53_128.jpg">


                                    </div>

                                </div>


                            </div>



                        </div>

                    </div>
                    <br>
                    <div class="principal  col-8 col-sm-8  col-md-8 col-lg-8 col-xl-8">

                        <h2>NUESTRAS MEJORES OFERTAS <span class="badge badge-secondary">New!</span></h2>
                        <div class="card-deck">
                            <div class="card">

                                <img
                                    src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcReAiN0iraLH46FuvXQWR3usPRWHFSf0giQowEnSTNi7k5HY_P6Bjv1a8qB_iO453EmfUXXvGgeBg&usqp=CAc"
                                    class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Sony PlayStation 4 1TB+Sony DualShock 4 Negro V2+Grand Theft Auto V + Read Dead
                                        Redemption</h5>
                                    <p class="card-text">Playstation 4 ya tiene un catálogo de juegos next-gen tremendo, y este año es
                                        difícil resistirse a comprar una PS4, ¿verdad?<br> <a href="ofertas/oferta1.html"
                                                                                              target="_blank"><u>Leer mas...</u></a>
                                        <!--Pues te lo ponemos aún más difícil, porque en Rakuten
                                        ahora mismo te ofrecen el pack PS4 con GTA V a un precio insuperable: tan sólo 395,95 euros.-->
                                    </p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>
                            </div>
                            <div class="card">
                                <img
                                    src="https://gameplanet-53f8.kxcdn.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/8/8/885370951967_1.jpg"
                                    class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">X-BOX ONE 1TB+Control Xbox One
                                        + Juego Halo 5 descargable (Edición limitada)</h5>
                                    <p class="card-text">Halo 5 Guardians: Una historia épica y dos modos multijugador que marcan la más
                                        grande evolución en la
                                        historia de Halo.
                                        La consola de nueva generación de Microsoft. Para facilitar la tarea a quienes quieran refrescarse la
                                        memoria.<br> </p> <a href="ofertas/oferta2.html" target="_blank"><u>Leer mas...</u></a>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>
                            </div>
                            <div class="card">
                                <img
                                    src="https://www.discoazul.com/uploads/media/images/396x396/xjoy-con-set-azul-rojo-nintendo-switch-12.jpg.pagespeed.ic.y0dzZIlh5M.webp"
                                    class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Set de mandos Joy(Rojo Neón (Izquierda) y un mando Joy-Con Azul)
                                        Neón (Derecha).</h5>
                                    <p class="card-text">Un mando o dos.Con los mandos Joy-Con para Nintendo Switch tendrás flexibilidad
                                        total a la hora de
                                        jugar y transformarán por completo tus experiencias de
                                        juego.<br> </p> <a href="ofertas/oferta3.html" target="_blank"><u>Leer mas...</u></a>


                                    </p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </div>

                            </div>
                        </div>
                        <div class="container-fluid">
                            <%
                                while (filacc.next()) {
                            %>
                            <div class="row">

                                <div class="col-12 col-sm-6 col-md-6 col-lg-12 col-xl-12">

                                    <br>

                                    <div class="card mb-3 card text-white bg-dark mb-3 card border-info mb-3 card border radius"
                                         style="max-width: 540px;">

                                        <div class="row no-gutters">

                                            <div class="col-md-4">
                                                <br>
                                                <img
                                                    src="<%=filacc.getString("imagen")%>"
                                                    class="card-img" alt="..." border="1">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h5 class="card-title"><%=filacc.getString("nombre")%></h5>
                                                     <p class="card-text"><%=filacc.getString("plataforma")%></p>
                                                    <p class="card-text"><%=filacc.getString("precio")%>€</p>
                                                    <br><br><br>
                                                    <a class="boton_1"
                                                       href="https://store.steampowered.com/app/346110/ARK_Survival_Evolved/">Comprar ahora</a>

                                                </div>
                                            </div>
                                        </div>

                                    </div>







                                </div>

                            </div>
                             <% } %>
                        </div>



                    </div>
                    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                    crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                    crossorigin="anonymous"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                    crossorigin="anonymous"></script>
                    </body>


                    <footer id="footer">
                        <div id="pie" style="opacity: 1;">
                            <div class="container-fluid">
                                <div class="row">

                                    <div class="col-6 col-sm-12 col-md-12 col-lg-12 col-xl-12  columna">
                                        <div class="boton_02"><button
                                                class="m-header--title--icon iconGame fa-close is-bg_no-bg is-txt_hover-light-grey"
                                                id="btnOverlayCookiesClose"><img
                                                    src="https://cdn.icon-icons.com/icons2/1380/PNG/128/emblemunreadable_93487.png" id="fotogrande"
                                                    width="25" onclick="ocultar()"></button></div>

                                    </div>
                                </div>
                            </div>

                            <font color="orange">
                            <h2>Siguenos en nuestras redes sociales:</h2>
                            </font>

                            <!--Instagram-->
                            <a href="https://www.instagram.com/mma_games/"><img class="logos"
                                                                                src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAAHlBMVEX///8AAADX19fn5+fy8vKPj49cXFw0NDTIyMgLCwu4KPpkAAABYUlEQVRIid2W23LFIAhFvQDi//9woSdGjJjEmfah5SGTMS4vuNkmxO0IMWLaCKyCYNgKFgT2kCBI2iPyf0cA8hkw5XNGmEqttR20vBZCuEO4eAqpuEZQOxQN+oS+ahutENaP09ayDoQLpEZfcDpUdhEeFtCCZF40Yw0ImbGCaaw6f3GR0tsDIxHyiZA+ZgT6UOnIdRGI9IF9AT7C9fsUY8+UIMlBcjyQrOMjAMuiIjeEfYSOPbXMSc8KLxCOPQ10LO0BMZ+9Ng8xCT0T//OISWiA+AqxUsN32zeCTk3CT0grm4wnvEJOwRzFacpxIRgjS2x+0apkIUsrfkAtezSl5Ipf21e3QFmUGC5Kf8z7gMi5+W4ru7Sysw6DF5drcxTrIxfr05oSQx2CNNndFCaDRf8Otl412XjCUsfu4uMc7hDdbGYT6Zr3v3Xx/Qoyu/1tgCD83O2KVIaNkEsh7Py8feILV/0KmMLfyhwAAAAASUVORK5CYII="></a>
                            <!--Facebook-->
                            <a href="https://www.youtube.com/channel/UCDSnShBasZXBrp48Tu87eZA/featured?view_as=subscriber"><img class="logos"
                                                                                                                                src="http://www.outletdeviviendas.com/v_portal/imgs/ic_facebook_gris.png"></a>
                            <!--Twitter-->
                            <a href="https://twitter.com/MmagamesE"><img class="logos"
                                                                         src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAATlBMVEX///8AAAD+/v4BAQH9/f0CAgL8/PwDAwP5+fkXFxcSEhI4ODgzMzOlpaU+Pj4jIyPJyclJSUmbm5vb29uHh4fj4+Nvb29hYWFVVVXPz881sIsKAAACrElEQVRIibVW6XrcMAiUAB27TdI0R9u8/4uWAWTJx+ZftfZnryQYGA45pZr0onQeY1Y3+Ju+iC8R/shRAJtIElGlRDUka/x0+iwBEZIBp+qF7DnwZFudQ2xHV31YqzFJuABKY2rviktiVUIxzOmYq1fOY67KV8656e/FXIcpz1gjoF8xJrWpBGcT++qYe8umX9oD998ZAgUC+mz0qc8Gz4g4VzPZXJtCfUDY0LeSmY371DK3BCpkF59p1Rit5ORKIZ3tTdKC0mASl4miKqAHnmOt5XtFmKeElFxMaoXR+wvcQQUMgDGLDDa0uV01YNdf8wXgwOHbGtA/PrdDyfzhi79DhjPfuwwcDo4mCjyOnCBbZfsp7yFyBDD2PF56HW3+BHUf277tBShODVFemSklVDBsXTFyGelIzs60WbnR3RbJsjdvY5N651VfsNtGKAKlNI5y0+i3nS9heENGlt38U+pB5z7ElrsDZtXFuY8kR8ZOnF0Ad7GEiAsRldWT6cIwcWOMvbsgm1+LFStygE8BnCItLz3CVDIS75GADbFm4TB14/RAxTJKYYluWa3V/GSOnHg87t6dHEYR65HT89j8IHTA9PL8Axx8502z1Opp9PLmyf/QE1VmvXB2rNS9zL6x7NfaSgZnBV3nwjC2HFpqHFWoDUzCppNpbHdZO7D4LXTjU3lsnue3Y9MmO6akXXsP//bbo6sS0kHo0v/iOncycRBKusJo+XguyDh7tQquWNYerztWFD8zBaG59v21p8PxowhS+9Ngc1RXGamQzkPunlhe8pMzgyzPFxKIiCeXl+U4rUzg5XwebqS9T5yJUYOc83ZLmZp6816uVup124i/hPCTVYc9vR3ipE3jE+Psy/i6QIDEP21QSSLXEPGdRP4RY30gDhiJ8D4k4D+Pf4cdD3WaFx4tAAAAAElFTkSuQmCC"></a>
                            <!--Youtube-->
                            <a href=" https://www.youtube.com/channel/UCDSnShBasZXBrp48Tu87eZA/featured?view_as=subscriber"><img class="logos"
                                                                                                                                 src="https://asset-apac.unileversolutions.com/content/dam/unilever/rexona/global/deodorants_and_fragrances/deodorants/rexona_social_youtube-682435.png.ulenscale.50x50.png"></a>

                            <div class="container-fluid">
                                <div class="row">

                                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">

                                        <a href="" class="text-white">
                                            <h2><u>Politica de privacidad</u></h2>

                                        </a>
                                    </div>



                                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                        <a href="Politica.html" class="text-white">
                                            <h2><u>Politicas de uso</u></h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-6 col-sm-12 col-md-12 col-lg-12 col-xl-12  columna">
                                        <a href="file:///F:/Marlon_Munoz/Proyecto_MMA/mmagames.html" class="text-dark">
                                            <h6><u>PAGINA DE INICIO</u></h6>
                                    </div>
                                </div>
                            </div>

                            <div id="copyright">
                                <font color="orange">Venta de videojuegos- Preparando las mejores ofertas ©2019 MMA_GAMES</font>
                            </div>
                            <div id="powered"><a href="file:///F:/Marlon_Munoz/Proyecto_MMA/mmagames.html" target="_blank">Designed and
                                    developed by MMA</a></div><a href="file:///F:/Marlon_Munoz/Proyecto_MMA/mmagames.html" target="_blank">
                            </a>
                        </div>
                </div>

                </footer>
                <footer>

                    <div class="container-fluid">
                        <div class="row">

                            <div class="col-6 col-sm-12 col-md-12 col-lg-12 col-xl-12  columna">




                            </div>
                        </div>
                    </div>

                    <font color="orange">
                    <h2>Siguenos en nuestras redes sociales:</h2>
                    </font>

                    <!--Instagram-->
                    <a href="https://www.instagram.com/mma_games/"><img class="logos"
                                                                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAAHlBMVEX///8AAADX19fn5+fy8vKPj49cXFw0NDTIyMgLCwu4KPpkAAABYUlEQVRIid2W23LFIAhFvQDi//9woSdGjJjEmfah5SGTMS4vuNkmxO0IMWLaCKyCYNgKFgT2kCBI2iPyf0cA8hkw5XNGmEqttR20vBZCuEO4eAqpuEZQOxQN+oS+ahutENaP09ayDoQLpEZfcDpUdhEeFtCCZF40Yw0ImbGCaaw6f3GR0tsDIxHyiZA+ZgT6UOnIdRGI9IF9AT7C9fsUY8+UIMlBcjyQrOMjAMuiIjeEfYSOPbXMSc8KLxCOPQ10LO0BMZ+9Ng8xCT0T//OISWiA+AqxUsN32zeCTk3CT0grm4wnvEJOwRzFacpxIRgjS2x+0apkIUsrfkAtezSl5Ipf21e3QFmUGC5Kf8z7gMi5+W4ru7Sysw6DF5drcxTrIxfr05oSQx2CNNndFCaDRf8Otl412XjCUsfu4uMc7hDdbGYT6Zr3v3Xx/Qoyu/1tgCD83O2KVIaNkEsh7Py8feILV/0KmMLfyhwAAAAASUVORK5CYII="></a>
                    <!--Facebook-->
                    <a href="https://www.youtube.com/channel/UCDSnShBasZXBrp48Tu87eZA/featured?view_as=subscriber"><img class="logos"
                                                                                                                        src="http://www.outletdeviviendas.com/v_portal/imgs/ic_facebook_gris.png"></a>
                    <!--Twitter-->
                    <a href="https://twitter.com/MmagamesE"><img class="logos"
                                                                 src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAATlBMVEX///8AAAD+/v4BAQH9/f0CAgL8/PwDAwP5+fkXFxcSEhI4ODgzMzOlpaU+Pj4jIyPJyclJSUmbm5vb29uHh4fj4+Nvb29hYWFVVVXPz881sIsKAAACrElEQVRIibVW6XrcMAiUAB27TdI0R9u8/4uWAWTJx+ZftfZnryQYGA45pZr0onQeY1Y3+Ju+iC8R/shRAJtIElGlRDUka/x0+iwBEZIBp+qF7DnwZFudQ2xHV31YqzFJuABKY2rviktiVUIxzOmYq1fOY67KV8656e/FXIcpz1gjoF8xJrWpBGcT++qYe8umX9oD998ZAgUC+mz0qc8Gz4g4VzPZXJtCfUDY0LeSmY371DK3BCpkF59p1Rit5ORKIZ3tTdKC0mASl4miKqAHnmOt5XtFmKeElFxMaoXR+wvcQQUMgDGLDDa0uV01YNdf8wXgwOHbGtA/PrdDyfzhi79DhjPfuwwcDo4mCjyOnCBbZfsp7yFyBDD2PF56HW3+BHUf277tBShODVFemSklVDBsXTFyGelIzs60WbnR3RbJsjdvY5N651VfsNtGKAKlNI5y0+i3nS9heENGlt38U+pB5z7ElrsDZtXFuY8kR8ZOnF0Ad7GEiAsRldWT6cIwcWOMvbsgm1+LFStygE8BnCItLz3CVDIS75GADbFm4TB14/RAxTJKYYluWa3V/GSOnHg87t6dHEYR65HT89j8IHTA9PL8Axx8502z1Opp9PLmyf/QE1VmvXB2rNS9zL6x7NfaSgZnBV3nwjC2HFpqHFWoDUzCppNpbHdZO7D4LXTjU3lsnue3Y9MmO6akXXsP//bbo6sS0kHo0v/iOncycRBKusJo+XguyDh7tQquWNYerztWFD8zBaG59v21p8PxowhS+9Ngc1RXGamQzkPunlhe8pMzgyzPFxKIiCeXl+U4rUzg5XwebqS9T5yJUYOc83ZLmZp6816uVup124i/hPCTVYc9vR3ipE3jE+Psy/i6QIDEP21QSSLXEPGdRP4RY30gDhiJ8D4k4D+Pf4cdD3WaFx4tAAAAAElFTkSuQmCC"></a>
                    <!--Youtube-->
                    <a href=" https://www.youtube.com/channel/UCDSnShBasZXBrp48Tu87eZA/featured?view_as=subscriber"><img class="logos"
                                                                                                                         src="https://asset-apac.unileversolutions.com/content/dam/unilever/rexona/global/deodorants_and_fragrances/deodorants/rexona_social_youtube-682435.png.ulenscale.50x50.png"></a>

                    <div class="container-fluid">
                        <div class="row">

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">

                                <a href="" class="text-white">
                                    <h2><u>Politica de privacidad</u></h2>

                                </a>
                            </div>



                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                <a href="Politica.html" class="text-white">
                                    <h2><u>Politicas de uso</u></h2>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-6 col-sm-12 col-md-12 col-lg-12 col-xl-12  columna">
                                <a href="file:///F:/Marlon_Munoz/Proyecto_MMA/mmagames.html" class="text-dark">
                                    <h6><u>PAGINA DE INICIO</u></h6>
                            </div>
                        </div>
                    </div>

                    <div id="copyright">
                        <font color="orange">Venta de videojuegos- Preparando las mejores ofertas ©2019 MMA_GAMES</font>
                    </div>
                    <div id="powered"><a href="file:///F:/Marlon_Munoz/Proyecto_MMA/mmagames.html" target="_blank">Designed and
                            developed by MMA</a></div><a href="file:///F:/Marlon_Munoz/Proyecto_MMA/mmagames.html" target="_blank">
                    </a>
            </div>
        </div>

    </footer>

</html>