function cambiarfoto(idfoto) {


    console.log(idfoto);
    var id = idfoto;
    var atributo = document.getElementById(id).getAttribute("src");
    console.log(atributo);

    var foto = atributo.substr(18);
    console.log(foto);
    document.getElementById("fotogrande").setAttribute("src", "../img/imggrande/" + foto);



}


function aclarar(event) {
    event.target.style.opacity = "0.5";


}

function oscurecer(event) {

    event.target.style.opacity = "1";
}



function ocultar() {
    document.getElementById('pie').style.display = 'none';
}