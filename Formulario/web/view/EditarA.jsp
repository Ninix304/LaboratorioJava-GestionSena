<%-- 
    Document   : EditarA
    Created on : 8/05/2023, 8:42:08 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Aprendiz"%>
<%@page import="ModelDao.AprendizDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="view/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="view/css/estilo.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/AprendizEstilo.css" rel="stylesheet" type="text/css"/>
        <title>Editar aprendiz</title>
    </head>
    <body>
        <div id="contenedor">
    <div id="datos">
      <h1>Editar aprendiz</h1>
      <%
      AprendizDao ape = new AprendizDao();
      int id = Integer.parseInt((String)request.getAttribute("id"));
      Aprendiz ap = (Aprendiz)ape.list(id);
      
      
      %>
      
      
      <form action="ControladorAprendiz">
          
        <input type="hidden" name="txtId" value="<%= id%>">
        <label for="documento">Documento</label>
        <input id="documento" type="number" name="txtDoc" value="<%=ap.getDocuApre()%>">
        <label for="nombre">Nombre</label>
        <input id="nombre" type="text" name="txtNom" value="<%=ap.getNombre()%>">
        <label for="apellidos">Apellido</label>
        <input id="apellidos" type="text" name="txtApe" value="<%=ap.getApellido()%>">
        <label for="correo">Correo electrónico</label>
        <input id="correo"  type="email" name="txtEmail" value="<%=ap.getCorreo()%>">

        <label for="nContact">Número de contacto</label>
        <input id="nContact" type="number" name="txtTel" value="<%=ap.getTeleApre()%>">

        <input class="btn btn-primary" type="submit" name="accion" value="EditarA">
      </form>
    </div>
  </div>
    </body>
</html>
