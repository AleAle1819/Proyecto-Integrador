<%-- 
    Document   : editar
    Created on : 4/05/2023, 9:52:57 p. m.
    Author     : Ale
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.*" %>
<%@ page import="Controlador.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
        
        <link href="efectoconsulta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Editar Valor(es)</h1>
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
                        <br>
            
        <form method="post" action="EditarUsuarioServlet">
        <label for="ID">Numero de identificación del usuario a editar (Debe esar escrito igual):</label>
        <input type="number" id="ID" name="ID" required>
        <br>            
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <br>
        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required>
        <br>
        <label for="edad">Edad:</label>
        <input type="number" id="edad" name="edad" required>
        <br>
        <label for="rol">Rol:</label>
        <select id="rol" name="rol"  required>
                <option value="Paciente">Paciente</option>
                <option value="Asesor">Asesor</option>
        </select>
        <br>
        <button type="submit">Guardar cambios</button>

        </form>
        <form action="ConsultaUsuariosServlet" method="get">
            <button type="submit">Consultar</button>
        </form>
        <form action="index.jsp">
             <button type="submit">Inicio</button>
         </form>         
                        
    </body>
</html>
