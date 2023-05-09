<%-- 
    Document   : index
    Created on : 1/05/2023, 6:56:52 p. m.
    Author     : Ale
--%>
<%//Cambiar%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.*" %>
<%@ page import="Controlador.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="efectosindex.css">
        <title>Agregar usuario</title>
</head>
<body>
	<h1>Agregar usuario</h1>     
        
        <form method="post" action="AgregarUsuarioServlet">
            <h3>Tu ID debe estar bien escrito a la hora de registrarte, o luego, si deseas editarlo, deberás borrarlo.</h3>
                <label for="ID">Numero de identificación:</label>
		<input type="number" id="ID" name="ID" required>
		<br>            
		<label for="nombre">Nombre:</label>
		<input type="text" id="nombre" name="nombre" required>
		<br>
		<label for="apellido">Apellido:</label>
		<input type="text" id="apellido" name="apellido" required >
		<br>
		<label for="edad">Edad:</label>
		<input type="number" id="edad" name="edad" required>
		<br>
		<label for="rol">Rol:</label>
		<select id="rol" name="rol" required>
			<option value="Paciente">Paciente</option>
			<option value="Asesor">Asesor</option>
		</select>
		<br>                
		<button type="submit">Agregar</button>               
                
        </form>        
        <form  action="ConsultaUsuariosServlet" method="get">
            <button type="submit">Consultar</button>
        </form>  
        <form action="ConsultaAsesoresServlet" method="get">
            <button type="submit">Ver Nuestros Asesores</button>
        </form>
        
        <!-- Terminado, no editar más :D -->
    </body>
</html>
