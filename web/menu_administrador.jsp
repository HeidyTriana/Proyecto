<%-- 
    Document   : menu_administrador
    Created on : 24/09/2018, 07:54:43 PM
    Author     : Usuario
--%>
<%@page import="javax.swing.JOptionPane"%>
<%
        HttpSession nom=request.getSession();
        String no=(String)nom.getAttribute("envnom");
        
        
        if (no==null){
            
            response.sendRedirect("index.jsp");
            
        }
        
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>ADMINISTRADOR</title>
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
      <a class="navbar-brand" href="menu_administrador.jsp"><span class="glyphicon glyphicon-home logo"></span> ADMINISTRADOR </a>
        <%
        
        HttpSession nombre=request.getSession();
        String nomb=(String)nombre.getAttribute("envnom");
        
        

        %>
        <h1><%=nomb%></h1>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" class="navbar-brand">CONFIGURAR PERFIL <span class="glyphicon glyphicon-cog logo"></a></li>     
        <li><a href="#" class="navbar-brand">CREAR ADMIN <span class="glyphicon glyphicon-user logo"></a></li>
        <li><a href="" class="navbar-brand" ><form action="ServletCerrar" method="post"><input type="submit" name="cerrar" value="CERRAR SESION"></input><span class="glyphicon glyphicon-log-out logo"></form></a></li>
      </ul>
    </div>
  </div>
</nav>

  <div class="row slideanim">
    <div class="col-sm-6 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>MASCOTAS</h1>
        </div>
        <div class="panel-body">
          <img class="img-responsive" src="imagenes\perrituu.png" alt="Chania" >
        </div>
        <div class="panel-footer">

          <h4><strong>Aqui podras encontrar información a cerca de nuestros peluditos disponibles para adopción</strong></h4>
          
          <button class="btn btn-lg">IR >> </button>
        </div>
      </div>      
    </div>   

    <div class="col-sm-6 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>ADOPCIONES</h1>
        </div>
        <div class="panel-body">
          <img class="img-responsive" src="imagenes\perri.png" alt="Chania" >
        </div>
        <div class="panel-footer">
          <h4><strong>Si deseas llevar a cabo un proceso de adopcion aqui podras encontrar los requisitos y documentacion que debes entregar para iniciar el proceso</strong></h4>
          <button class="btn btn-lg">IR >></button>
        </div>
      </div>      
    </div>   

    <div class="col-sm-6 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>EVENTOS</h1>
        </div>
        <div class="panel-body">
          <img class="img-responsive" src="imagenes\perris.png" alt="Chania"  >
        </div>
        <div class="panel-footer">
         <h4><strong>Aqui podras encontrar información a cerca de los eventos próximos para ayudar a nuestros peluditos</strong></h4>
          <button class="btn btn-lg">IR >> </button>
        </div>
      </div>      
    </div> 

    <div class="col-sm-6 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>PQRS</h1>
        </div>
        <div class="panel-body">
          <img class="img-responsive" src="imagenes\pqrs.png" alt="Chania" >
        </div>
        <div class="panel-footer">
          <h4><strong>Si tiene alguna queja, reclamo o petición aqui podras hacerla asi nosotros podremos saber lo que deseas</strong></h4>
          <button class="btn btn-lg"> IR >> </button>
          </form>
        </div>
      </div>      
    </div>   
  </div>


</body>
</body>
</html>
