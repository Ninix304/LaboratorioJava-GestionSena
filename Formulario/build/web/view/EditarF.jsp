<%-- 
    Document   : EditarF
    Created on : 25/05/2023, 2:19:19 p. m.
    Author     : Ninix
--%>

<%@page import="Model.Aprendiz"%>
<%@page import="ModelDao.AprendizDao"%>
<%@page import="Model.Programa"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page import="Model.Ficha"%>
<%@page import="ModelDao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="view/css/AprendizEstilo.css" rel="stylesheet" type="text/css"/> 
        <link href="view/css/FichaEstilo.css" rel="stylesheet" type="text/css"/>
        <title>Editar Ficha</title>
    </head>
    <body>
        <div id="contenedor">
    <div id="datos">
      <h1>Editar Ficha</h1>
      <%
      FichaDao fdao = new FichaDao();
      int id = Integer.parseInt((String)request.getAttribute("codFicha"));
      Ficha fi = new Ficha();
      fi=fdao.list(id);
      
      %>
      
      
      <form action="ControladorFicha">
          
        <label for="id">Codigo de ficha</label>
        <input id="id" type="number" name="txtCodFicha" value="<%=fi.getCodFicha()%>">

        <label for="apellidos">Cantidad de aprendices</label>
        <input id="apellidos" type="text" name="txtCantAp" value="<%=fi.getCantAprendiz()%>">
        
        <div class="form-control">
                <label>Nombre Programa:</label>
                <select name="txtCodPro" id="codpro">
                <option value="">Seleccione un programa</option><br>
                <%ProgramaDao pro = new ProgramaDao();
                List<Programa>lista = pro.listadopro();
                     
                %>
                <% 
                for(Programa li:lista){%>
                <option value="<%=li.getCodprograma()%>"><%=li.getCodprograma()%> - <%=li.getNomprograma()%></option>
                <%}%>
            </select> 
                
            </div>
            
            
            <div class="form-control">
                <label>Nombre aprendiz:</label>
                <select name="txtCodAp" id="codap">
                <option value="">Seleccione un Aprendiz</option><br>
                <%AprendizDao adao = new AprendizDao();
                List<Aprendiz>list = adao.listadoA();
                     
                %>
                <% 
                for(Aprendiz li:list){%>
                <option value="<%=li.getId()%>"><%=li.getId()%> - <%=li.getNombre()%></option>
                <%}%>
            </select>    
            </div>


        <input class="btn btn-primary" type="submit" name="accion" value="EditarFi">
      </form>
    </div>
  </div>
    </body>
</html>
