<%-- 
    Document   : consulta-asesores
    Created on : 6/05/2023, 8:11:19 p. m.
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
	<title>Consulta de asesores</title>
        <link rel="stylesheet" href="efectoconsulta.css"/>
</head>
<body>
	<h1>Consulta de Asesores</h1>
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
                    List<Asesor> asesores = (List<Asesor>) request.getAttribute("asesores");
                    for (Asesor asesor : asesores) { 
                        %>
				<tr>
                                        <td><%= asesor.getID() %></td>
					<td><%= asesor.getNombre() %></td>
					<td><%= asesor.getApellido() %></td>
					<td><%= asesor.getEdad() %></td>
					<td><%= asesor.getRol() %></td>
				</tr>
			<% } %>                        
                        </tbody>
                </table>              
                <form action="index.jsp">
                    <button type="submit">Inicio</button>
                </form>
        </body>

