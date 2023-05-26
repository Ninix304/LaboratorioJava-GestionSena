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
    <link href="css/ListasEstilo.css" rel="stylesheet" type="text/css"/>
    <link href="view/css/ListasEstilo.css" rel="stylesheet" type="text/css"/>
    <title>Lista de aprendices</title>
</head>
<body>
    <div class="contenedor">
        <h1>Aprendices registrados en el sistema</h1>
        <table id="tabla-aprendices">
            <thead>
                <tr>
                    <th class="text-center">ID</th>
                    <th class="text-center">DOCUMENTO</th>
                    <th class="text-center">NOMBRE</th>
                    <th class="text-center">APELLIDO</th>
                    <th class="text-center">CORREO</th>
                    <th class="text-center">TELEFONO</th>
                    <th class="text-center">ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <%
                    AprendizDao dao = new AprendizDao();
                    List<Aprendiz> listar = dao.listadoA();
                    Iterator<Aprendiz> it = listar.iterator();
                    Aprendiz usu = null;
                    while (it.hasNext()) {
                        usu = it.next();
                %>
                <tr>
                    <td class="text-center"><%= usu.getId() %></td>
                    <td class="text-center"><%= usu.getDocuApre() %></td>
                    <td class="text-center"><%= usu.getNombre() %></td>
                    <td class="text-center"><%= usu.getApellido() %></td>
                    <td class="text-center"><%= usu.getCorreo() %></td>
                    <td class="text-center"><%= usu.getTeleApre() %></td>
                    <td class="text-center">
                        <div class="acciones">
                            <a class="btn btn-danger" href="ControladorAprendiz?accion=eliminar&id=<%= usu.getId() %>">
                                ELIMINAR
                            </a>
                            <a class="btn btn-warning" href="ControladorAprendiz?accion=editar&id=<%= usu.getId() %>">
                                EDITAR
                            </a>
                        </div>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
            <button onclick="location.href='index.jsp'">Volver al inicio</button>
    </div>
</body>
</html>
