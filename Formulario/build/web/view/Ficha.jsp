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
    <link href="css/FichaEstilo.css" rel="stylesheet" type="text/css"/>
    <title>Registrar ficha</title>
</head>
<body>
    <div id="contenedor">
        <div id="datos">
            <h1>Formulario de Ficha</h1>
            
            <form action="../ControladorFicha">
            
                <label for="codficha">Código de Ficha</label><br>
                <input type="number" id="codficha" name="txtCodFicha"><br>
                
                <label for="cantap">Cantidad Aprendices</label><br>
                <input type="number" id="cantap" name="txtCantAp">
                
                <div>
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
                
                
                <div>
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
                <input type="submit" name="accion" value="AgregarFi"><br>
                <input type="submit" name="accion" value="Listar">
            </form>
        </div>
    </div>
</body>
</html>
