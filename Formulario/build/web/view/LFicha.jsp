<%-- 
    Document   : LFicha
    Created on : 19/05/2023, 9:12:52 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.Ficha"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="view/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de fichas</title>
    </head>
    <body>
        <div class="contenedor">
            <h1>Fichas registradas en el sistema</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Codigo de ficha</th>
                        <th class="text-center">Cantidad de Aprendices</th>
                        <th class="text-center">Codigo de programa</th>
                        <th class="text-center">Codigo de Aprendiz</th>
                    </tr>         
                </thead> 
                
                <%
                  FichaDao fidao = new FichaDao();
                  List<Ficha>listar=fidao.listaFichas();
                  Iterator<Ficha>it=listar.iterator();
                  Ficha fi=null;
                  while(it.hasNext()){
                    fi=it.next();
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=fi.getCodFicha()%></td>
                        <td class="text-center"><%=fi.getCantAprendiz()%></td>
                        <td class="text-center"><%=fi.getCodPrograma()%></td>
                        <td class="text-center"><%=fi.getCodAprendiz()%></td>
                        
                        <td class="text-center">
                            <a class="btn btn-danger" href="../ControladorFicha?accion=editar&codFicha=<%=fi.getCodFicha()%>">EDITAR</a>
                            <a class="btn btn-warning" href="ControladorFicha?accion=eliminarfi&codficha=<%=fi.getCodFicha()%>">ELIMINAR</a>

                        </td>
                    </tr>
                    <% } %>                    
                </tbody>
                
            </table>
        </div>
        
    </body>
</html>
