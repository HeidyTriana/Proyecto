<%-- 
    Document   : index
    Created on : 28/08/2018, 08:51:22 AM
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>ATAx</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="https://image.flaticon.com/icons/png/512/22/22744.png" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">ATAM</a>
    </div>
    <form action="ServletLogin" method="post">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right"><br>
        <li>&nbsp;<span class="glyphicon glyphicon-user" style="color: black;"></span> <input style="text-align: center; width: 140px; height: 24px;" type="text" name="usu" placeholder="USUARIO"></li>&nbsp;&nbsp;
        <li>&nbsp;<span class="glyphicon glyphicon-asterisk" style="color: black;"><input style="text-align: center; width: 140px; height: 24px; font-family: Montserrat;" type="password" name="clave" placeholder="CONTRASEÑA"></li>&nbsp;
        <li><div id="g">&nbsp;&nbsp;<input id="iniciar" class="field" type="submit" name="ingresar" value="INGRESAR"></div></li>
      </ul>

    </div>
  </form>

  </div>
</nav>

<div class="jumbotron text-center">
  <img style="width: 30%; height: auto; " src="imagenes/logo1.png">
  <img style="width: 55%; height: auto;" src="imagenes/logo2.png"/>
  <form>
    <div class="input-group">
      
      <div class="input-group-btn">
        
      </div>
    </div>
  </form>
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Sobre nosotros</h2><br>
      <h4>Somos una fundacion Animal sin fines de lucro ubicada en el municipio de Mosquera(Cundinamarca).</h4><br>
      <p>Más información</p>
      <br><button class="btn btn-default btn-lg">☺</button>
    </div>
    <div class="col-sm-4">
          <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img class="img-responsive slideanim" src="imagenes/foto.jpg" style="width: 420px; height: 290px;">
      </div>
      <div class="item">
       <img class="img-responsive slideanim" src="imagenes/foto1.png" style="width: 420px; height: 290px;">
      </div>
      <div class="item">
       <img class="img-responsive slideanim" src="imagenes/foto2.png" style="width: 420px; height: 290px;">
      </div>
      <div class="item">
       <img class="img-responsive slideanim" src="imagenes/foto3.png" style="width: 420px; height: 290px;">
      </div>
      <div class="item">
       <img class="img-responsive slideanim" src="imagenes/foto4.png" style="width: 420px; height: 290px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
      </span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey" id="regfon">
  <div class="row" >
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-user logo slideanim" style="color: #BB0404;"></span>
    </div>
    <div class="col-sm-8" >
      <center>
      <h1 style="color: #BB0404; font-size: 450%;">Registrate</h1><br>
            <input style="text-align: center; color: black;" type="number" name="id" placeholder="IDENTIFICACION" required="">
            <br>
            <br>
            <input style="text-align: center; color: black;" type="text" name="nombre" placeholder="NOMBRE" required="" pattern="[A-Za-z]{1,50}">
            <br>
            <br>
            <input style="text-align: center; color: black;" type="text" name="apellido" placeholder="APELLIDO" required="" pattern="[A-Za-z]{1,50}">
            <br>
             <br>
             <input style="text-align: center; color: black;" type="date" name="fecha" required="" >
             <br>
             <br>
             <input style="text-align: center; color: black;" type="text" name="usuario" placeholder="NOMBRE DE USUARIO" required="">
             <br>
             <br>
             <input style="text-align: center; color: black;" type="password" name="clave" placeholder="CONTRASEÑA" required="">
             <br>
             <br>
             <input style="text-align: center; color: black;" type="number" name="telefono" placeholder="TELEFONO" required="">
             <br>
             <br>
             <input style="text-align: center; color: black;" type="text" name="direccion" placeholder="DIRECCION" required="">
             <br>
             <br>
             <input style="text-align: center; color: black;" type="email" name="correo" placeholder="CORREO" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
             <br>
             <br>
             <input  id="archivo" type="file" name="foto" required="">
             <br>
             <br>
             <select name="rol" required>
                 <option value="2">CIUDADANO</option>
             </select>
             <input style="width: 140px; height: 35px; background-color: #BB0404; color: white;" id="reg" type="submit" name="registrar" value="REGISTRARSE"></center>
    </div>
  </div>
</div>

<!-- Container (Services Section) -->
<div id="fon">
<div id="services" class="container-fluid text-center">
  
  <h2>SERVICIOS</h2>
  <h4>Tenemos también estos servicios para tú peludo.</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-home logo-small" style="color: #BB0404"></span>
      <h4>Guardería</h4>
      <p>Cuidamos a tu peludo como si estuviera en casa.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-tint logo-small" style="color: #BB0404"></span>
      <h4>Baño</h4>
      <p>También lo aseamos para que estel limpio.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-scissors logo-small" style="color: #BB0404"></span>
      <h4>Peluquería</h4>
      <p>Lo embellecemos para que esté siempre lindo.</p>
    </div>
    </div>
  </div>
  <br><br>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACTO &nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment"></span></h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Dejanos tus datos y nos pondremos en contacto contigo.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Funza, Cundinamarca</p>
      <p><span class="glyphicon glyphicon-phone"></span> +57 3176588130</p>
      <p><span class="glyphicon glyphicon-envelope"></span> huellashuerfanas@gmail.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comentario" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Enviar</button>
        </div>
      </div>
    </div>
  </div>
</div>


<div id="portfolio" class="container-fluid text-center bg-grey">
 <H1>DONACIONES</H1><br><br>
 <h3>Puedes ayudarnos...</h3><br>
   <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-credit-card logo-small" style="color: #BB0404"></span>
      <h4>Por medio de nuestra cuenta...</h4>
      <p>XXXXXXXXX</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-cutlery logo-small" style="color: #BB0404"></span>
      <h4></h4>
      <p>También lo aseamos para que estel limpio.</p>
    </div>
    </div>
</div>
<!-- Add Google Maps 
<div id="googleMap" style="height:400px;width:100%;"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(41.878114, -87.629798);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->


<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>© 2018 Todos los derechos de autor reservados.</p>
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>
