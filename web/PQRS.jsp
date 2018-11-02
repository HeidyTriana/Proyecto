<%-- 
    Document   : pqr
    Created on : 9/10/2018, 07:57:49 PM
    Author     : Alejandro
--%>

<%@page import="javax.swing.JOptionPane"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>CIUDADANO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="estilos.css">
  <link rel="shortcut icon" href="imagenes/logpes.png">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato">
</head>

<body>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<br>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="menu_ciudadano.jsp"><span class="glyphicon glyphicon-home logo"></span> CUIDADANO </a>
                          <%
        
        HttpSession nombre=request.getSession();
        String nomb=(String)nombre.getAttribute("envnom");
        
        

        %>
        <h4><%=nomb%></h4>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="" class="navbar-brand" ><form action="ServletCargar" method="post"><input type="submit" name="modificar" value="CONFIGURAR PERFIL"><span class="glyphicon glyphicon-cog "></form></a></li>
        <li><a href="" class="navbar-brand" ><form action="ServletCerrar" method="post"><input type="submit" name="cerrar" value="CERRAR SESION"><span class="glyphicon glyphicon-log-out "></form></a></li>
      </ul>
    </div>
  </div>
</nav>
<br>



<div id="contact" class="container-fluid bg-grey" style="margin-top: 2cm;">
  <center><h1 style="color: #BB0404; font-size: 450%;">PQRS</h1><br>

    <strong><p style="font-family: Lato, sans-serif;color: black;font-size: 125%; ">Aqui usted puede hacer sus peticiones, quejas, reclamos o avisarnos sobre algun animal que necesite de nuestra ayuda</p></strong>
  </center>
<form action="" method="post">
  <div class="row">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="Titulo" placeholder="Titulo" type="text" required>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 form-group">
          <select name="ide">
            <option><%=nomb%></option>
          </select>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="Descripcion" placeholder="Descripcion" rows="5" style="resize: none;"></textarea><br>

       <div class="row">
        <div class="col-sm-6 form-group">
          <STRONG><H4>FOTO : </H4></STRONG><input class="form-control" type="file" name="foto" >
        </div>
      </div>


      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit" name="enviar">Enviar</button>
        </div>
      </div>
    </div>
  </div>
  </form>


</div>

</body>
</html>

