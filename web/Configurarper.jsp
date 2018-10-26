<%-- 
    Document   : Configurarper
    Created on : 3/10/2018, 08:18:19 AM
    Author     : Usuario
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        HttpSession nom=request.getSession();
        String no=(String)nom.getAttribute("envnom");
        
        
        if (no==null){
            
            response.sendRedirect("index.jsp");
            
        }
        else {
            
            JOptionPane.showMessageDialog(null, no);
            
        }
        
        %>
<html>
<head>
  <title>CONFIGURAR PERFIL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="https://image.flaticon.com/icons/png/512/22/22744.png" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="estilos1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
      <a class="navbar-brand" href="menu_ciudadano.jsp"><span class="glyphicon glyphicon-home"></span> CUIDADANO </a>
        <%
        
        HttpSession nombre=request.getSession();
        String nomb=(String)nombre.getAttribute("envnom");
        
        

        %>
        <h4><%=nomb%></h4>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="" class="navbar-brand" ><form action="ServletCargar" method="post"><input type="submit" name="modificar" value="CONFIGURAR PERFIL"><span class="glyphicon glyphicon-cog "></form></a></li>
        <li><a href="" class="navbar-brand" ><form action="ServletCerrar" method="post"><input type="submit" name="cerrar" value="CERRAR SESION"></input><span class="glyphicon glyphicon-log-out "></form></a></li>
      </ul>
    </div>
  </div>
</nav>
<br>
<center>
    
  <div class="container">  
    <div id="crear">
    <span class="glyphicon glyphicon-cog logo slideanim" style="color: #BB0404;"></span>    
      <br>
        <h1 style="color: #BB0404; font-size:auto;">CONFIGURAR PERFIL</h1>

        <%
        
        HttpSession todo=request.getSession();
        int ide=(Integer)todo.getAttribute("env1");
        String nombree=(String)todo.getAttribute("env2");
        String apellido=(String)todo.getAttribute("env3");
        String fechana=(String)todo.getAttribute("env4");
        String usuario=(String)todo.getAttribute("env5");
        String clave=(String)todo.getAttribute("env6");
        String telefono=(String)todo.getAttribute("env7");
        String direccion=(String)todo.getAttribute("env8");
        String correo=(String)todo.getAttribute("env9");
        String foto=(String)todo.getAttribute("env10");
        int rol=(Integer)todo.getAttribute("env11");
        
         JOptionPane.showMessageDialog(null, ide);
        %>
         <form action="ServletActdatos" method="post">
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="text" name="ide" value="<%=ide%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="text" name="n" value="<%=nombree%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="text" name="a" value="<%=apellido%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="date" name="f" value="<%=fechana%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="text" name="u" value="<%=usuario%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="password" name="c" value="<%=clave%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="number" name="t" value="<%=telefono%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="text" name="d" value="<%=direccion%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="email" name="co" value="<%=correo%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="file" name="fo" value="<%=foto%>"> <br><br>
        <input style="width: auto;height: auto;border: 1px solid #bb0404; border-radius:0 !important;transition: box-shadow 0.5s;outline: red;" type="number" name="r" value="<%=rol%>"> <br><br>
        
      
        <input style="letter-spacing: 2.7px;background-color: red;background: #bb0404;color: white; width: 140px; height: 24px;" type="submit" name="modi" value="ACTUALIZAR"> <br><br>
        </form>
           
           
    </div>
  </div>
</center>
</body>
</html>
