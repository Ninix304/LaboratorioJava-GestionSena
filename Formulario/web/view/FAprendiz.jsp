<%-- 
    Document   : index
    Created on : 27/04/2023, 7:30:11 p. m.
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <link href="view/css/estilo.css" rel="stylesheet" type="text/css"/>
  <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
  <title>Registro de Aprendiz</title>
</head>
<body>
  <div id="contenedor">
    <div id="datos">
      <h1>Registro de aprendiz</h1>
      <form action="ControladorAprendiz">
          
        <label for="documento">Documento</label>
        <input id="documento" type="number" name="txtDoc">

        <label for="apellidos">Apellido</label>
        <input id="apellidos" type="text" name="txtApe">

        <label for="nombre">Nombre</label>
        <input id="nombre" type="text" name="txtNom">

        <label for="correo">Correo electrónico</label>
        <input id="correo"  type="email" name="txtEmail">

        <label for="nContact">Número de contacto</label>
        <input id="nContact" type="number" name="txtTel">

        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
      </form>
    </div>
  </div>
</body>
</html>
