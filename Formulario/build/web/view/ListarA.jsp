<%-- 
    Document   : ListarA
    Created on : 3/05/2023, 7:16:40 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Model.Aprendiz"%>
<%@page import="ModelDao.AprendizDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="view/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de aprendices</title>
    </head>
    <body>
        <div class="contenedor">
            <h1>Aprendices registrados en el sistema</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">DOCUMENTO</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">APELLIDO</th>
                        <th class="text-center">CORREO</th>
                        <th class="text-center">TELEFONO</th>
                    </tr>         
                </thead> 
                
                <%
                  AprendizDao dao = new AprendizDao();
                  List<Aprendiz>listar=dao.listadoA();
                  Iterator<Aprendiz>it=listar.iterator();
                  Aprendiz usu=null;
                  while(it.hasNext()){
                    usu=it.next();
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=usu.getId()%></td>
                        <td class="text-center"><%=usu.getDocuApre()%></td>
                        <td class="text-center"><%=usu.getNombre()%></td>
                        <td class="text-center"><%=usu.getApellido()%></td>
                        <td class="text-center"><%=usu.getCorreo()%></td>
                        <td class="text-center"><%=usu.getTeleApre()%></td>
                        
                        <td class="text-center">
                            <a class="btn btn-danger" href="../ControladorAprendiz?accion=editar&id=<%=usu.getId()%>">EDITAR</a>
                            <a class="btn btn-warning" href="../ControladorAprendiz?accion=eliminar&id=<%=usu.getId()%>">ELIMINAR</a>
                        </td>
                    </tr>
                    <% } %>                    
                </tbody>
                
            </table>
        </div>
        
    </body>
</html>
