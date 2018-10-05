<%-- 
    Document   : animales
    Created on : 4/10/2018, 06:50:42 PM
    Author     : Usuario
--%>

<%@page import="modelo.ingresoGSani"%>
<%@page import="modelo.consultas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>CIUDADANO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="estilos1.css">
  <link rel="shortcut icon" href="https://image.flaticon.com/icons/png/512/22/22744.png">
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
        <li><a href="" class="navbar-brand" ><form action="ServletCerrar" method="post"><input type="submit" name="cerrar" value="CERRAR SESION"><span class="glyphicon glyphicon-log-out "></form></a></li>
      </ul>
    </div>
  </div>
</nav>
    <br>
    <br>
    <br>
        <center>           
        <div id="tabla" class="tabla" >
            <h1> ANIMALES </h1>
            <table border="1" >
                <tr> 
                    <th style="width: 100px" id="Fila">MICRO CHIP</th>
                    <th style="width: 100px" id="Fila" >NOMBRE</th>
                    <th style="width: 100px" id="Fila" >EDAD</th>
                    <th style="width: 100px" id="Fila" >COLOR</th>
                    <th style="width: 100px" id="Fila" >RAZA</th>
                    <th style="width: 100px" id="Fila" >FOTO</th>
                                      
                </tr>
                
                <% 
                ArrayList<ingresoGSani> lisdat =new ArrayList<>();
                consultas con=new consultas();
                lisdat=con.consultaani();
                ingresoGSani igs=new ingresoGSani();
                
                for (int i=0; i< lisdat.size();i++){
                    igs=lisdat.get(i);
                   
                    
                %>
                
                 <form action="servletmodiani">
                 <tr>
                     
                    <th id="columna"><input style="width: 140px" type="text" name="mi" value="<%=igs.getMicro()%>" readonly </th><br>
                    <th id="columna"><input style="width: 100px" type="text" name="no" value="<%=igs.getNombre()%>"readonly </th><br>
                    <th id="columna"><input style="width: 140px" type="text" name="ed" value="<%=igs.getEdad()%>"  </th><br>
                    <th id="columna"><input style="width: 140px" type="text" name="co" value="<%=igs.getColor()%>" readonly </th><br>
                    <th id="columna"><input style="width: 140px" type="text" name="ra" value="<%=igs.getRaza()%>"  readonly </th><br>
                    <th id="columna"><input style="width: 140px" type="text" name="fo" value="<%=igs.getFoto()%>" </th><br>


                    <th><input  type="submit" name="btnmodificar"  Value="Modificar"   </th>
                    <th><input type="submit" name="btneliminar" value="Eliminar"</th>
                    
                 
                </tr> 
                </form>
                    
        
        <%
          }  
        %>
        
        
             </table>
            </div>
        </center>
    </div>

</center>
</body>
</html>
