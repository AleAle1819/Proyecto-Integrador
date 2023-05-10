<%-- 
    Document   : borrar
    Created on : 4/05/2023, 10:15:05 p. m.
    Author     : Ale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Modelo.*" %>
<%@ page import="Controlador.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
        <link href="efectoborrar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Borrar un usuario</h1>
        
                    
                    <h2>Digite el ID que corresponde al usuario a borrar</h2>
	<% if (request.getAttribute("mensaje") != null) { %>
		<p><%= request.getAttribute("mensaje") %></p>
	<% } %>
        
        <form method="post" action="BorrarUsuarioServlet">
	<h3><label for="ID">ID</label></h3>
            <input type="number" id="ID" name="ID" value="<%=request.getParameter("ID")%>" required>
            <br>
            <button type="submit">Borrar</button>		
        </form>
        <form action="index.jsp">
            <button type="submit">Inicio</button>
        </form>
    </body>
</html>
