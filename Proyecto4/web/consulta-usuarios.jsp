<%-- 
    Document   : consulta-usuarios
    Created on : 1/05/2023, 7:25:00 p. m.
    Author     : Ale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.*" %>
<%@ page import="Controlador.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Consulta de usuarios</title>
        <link rel="stylesheet" href="efectoconsulta.css"/>
</head>
<body>
	<h1>Consulta de usuarios</h1>
	<table>
		<thead>
			<tr>
                                <th>ID</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>Edad</th>
				<th>Rol</th>
			</tr>
		</thead>
		<tbody>
			<% 
                    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
                    for (Usuario usuario : usuarios) { 
                        %>
				<tr>
                                        <td><%= usuario.getID() %></td>
					<td><%= usuario.getNombre() %></td>
					<td><%= usuario.getApellido() %></td>
					<td><%= usuario.getEdad() %></td>
					<td><%= usuario.getRol() %></td>
				</tr>
			<% } %>                        
                        </tbody>
                </table>
                <form action="EditarUsuarioServlet" method="get">
                    <button class="boton" type="submit">Editar</button>
                </form>
                <form action="BorrarUsuarioServlet" method="get">
                    <button class="boton" type="submit">Borrar</button>
                </form>
                <form action="index.jsp">
                    <button class="boton" type="submit">Inicio</button>
                </form>
                <form action="ConsultaAsesoresServlet" method="get">
                    <button class="boton" type="submit">Ver Nuestros Asesores</button>
                </form>
        </body>
        <!-- Ya no editar más, completada esta sección-->
</html>
