<%-- 
    Document   : LPrograma
    Created on : 3/05/2023, 8:51:06 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Programa"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/ListasEstilo.css" rel="stylesheet" type="text/css"/>
        <link href="view/css/ListasEstilo.css" rel="stylesheet" type="text/css"/>
        <title>Lista de programas</title>
    </head>
    <body>
        <div class="contenedor">
            <h1>Programas registrados en el sistema</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">CODIGO</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>         
                </thead> 
                
                <%
                  ProgramaDao pdao = new ProgramaDao();
                  List<Programa>listar=pdao.listadopro();
                  Iterator<Programa>it=listar.iterator();
                  Programa pro = null;
                  while(it.hasNext()){
                    pro = it.next();
                  
                  
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=pro.getCodprograma()%></td>
                        <td class="text-center"><%=pro.getNomprograma()%></td>
                        <td class="text-center">
                        <div class="acciones">
                            <a class="btn btn-warning" href="ControladorPrograma?accion=editar&id=<%=pro.getCodprograma()%>">
                                EDITAR
                            </a>
                            <a class="btn btn-danger" href="ControladorPrograma?accion=eliminar&id=<%=pro.getCodprograma()%>">
                                ELIMINAR
                            </a>
                        </div>
                        </td>
                    </tr>
                    <% } %>                    
                </tbody>
                
            </table>
        </div>
        
    </body>
</html>
