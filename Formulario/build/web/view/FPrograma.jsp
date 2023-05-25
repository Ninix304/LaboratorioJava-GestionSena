<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registrar Programa</title>
    <link href="css/ProgramaEstilo.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="contenedor">
        <h1>Registro de Programas</h1>
        <div class="col-lg-6">
            <form action="../ControladorPrograma">
                <div class="form-group">
                    <label for="codigo">Codigo de Programa:</label>
                    <input class="form-control" type="number" name="txtcodpro" id="codigo">
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre del Programa:</label>
                    <input class="form-control" type="text" name="txtnombrepro" id="nombre">
                </div>
                <input class="btn btn-danger" type="submit" name="accion" value="AgregarPro">
            </form>
        </div>
    </div>
</body>
</html>
