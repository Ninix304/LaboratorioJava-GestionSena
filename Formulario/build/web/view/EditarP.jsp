<%-- 
    Document   : EditarA
    Created on : 8/05/2023, 8:42:08 p. m.
    Author     : APRENDIZ
--%>


<%@page import="Model.Programa"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="view/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="view/css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Editar programa</title>
    </head>
    <body>
        <div id="contenedor">
    <div id="datos">
      <h1>Editar Programa</h1>
      <%
      ProgramaDao pro = new ProgramaDao();
      int id = Integer.parseInt((String)request.getAttribute("codprograma"));
      Programa p = new Programa();
      p=pro.list(id);
      
      %>
      
      
      <form action="ControladorPrograma">
          
        <label for="id">Codigo de programa</label>
        <input id="id" type="number" name="txtcodpro" value="<%=p.getCodprograma()%>">

        <label for="apellidos">Nombre del programa</label>
        <input id="apellidos" type="text" name="txtnombrepro" value="<%=p.getNomprograma()%>">


        <input class="btn btn-primary" type="submit" name="accion" value="Editar">
      </form>
    </div>
  </div>
    </body>
</html>