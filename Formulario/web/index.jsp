<%-- 
    Document   : index
    Created on : 19/05/2023, 7:23:53 p. m.
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="view/css/indexestilo.css" rel="stylesheet" type="text/css"/>
        <title>Index</title>
    </head>
    <body>
    <header>
        <h1>Bienvenidos al sistema</h1>
    </header>
        
        <div id="botones">
            <button onclick="location.href='view/FAprendiz.jsp'">Registrar Aprendiz</button>
            <button onclick="location.href='view/FPrograma.jsp'">Registrar Programa</button>
            <button onclick="location.href='view/Ficha.jsp'">Registrar Ficha</button>
        </div>
        <div id="mapa">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15907.49320641163!2d-74.0920531!3d4.6166814!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f99666518c39d%3A0xb29243de447ecdbc!2scentro%20para%20la%20industria%20de%20la%20comunicacion%20grafica!5e0!3m2!1ses-419!2sco!4v1685043791230!5m2!1ses-419!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    <footer>
            <p>Dirección: Cl. 15 #31-42, Bogotá</p>
            <p>Teléfono: Bogotá: 3430111, Resto del país: 018000910270</p>
    </footer>
    </body>
</html>
