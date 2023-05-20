<%@page import="ModelDao.AprendizDao"%>
<%@page import="Model.Aprendiz"%>
<%@page import="Model.Programa"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.rtl.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
    <h1>Formulario de Ficha</h1>
    
    <form action="../ControladorFicha">
    
        <div class="contenedor">
            
            <label for="codficha">Código de Ficha</label><br>
            <input class="form-control" type="number" id="codficha" name="txtCodFicha"><br>
            
            <label for="cantap">Cantidad Aprendices</label><br>
            <input class="form-control"type="number" id="cantap" name="txtCantAp">
            
            <div class="form-control">
                <label>Nombre Programa:</label>
                <select name="txtCodPro" id="codpro">
                <option value="">Seleccione un programa</option><br>
                <%ProgramaDao pro = new ProgramaDao();
                List<Programa>lista = pro.listadopro();
                     
                %>
                <% 
                for(Programa li:lista){%>
                <option value="<%=li.getCodprograma()%>"><%=li.getNomprograma()%></option>
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
                <option value="<%=li.getId()%>"><%=li.getNombre()%></option>
                <%}%>
            </select>    
            </div>
            <input class="btn btn-primary" type="submit" name="accion" value="AgregarFi">
       
                
        
    </form>
</body
