<%-- 
    Document   : Discord
    Created on : 9/05/2023, 4:43:42 p. m.
    Author     : Ale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="efectoeditar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <% if (request.getAttribute("mensajeError") != null) { %>
            <h2><%= request.getAttribute("mensajeError") %></h2>                  
        <form action="index.jsp">
            <button type="submit">Volver</button>
        </form>
        <% } else{%>
                <h2><%= request.getAttribute("mensaje") %></h2>
               <br>
                <a href="https://discord.com/register">Crea una cuenta en Discord</a>
                <a href="https://discord.gg/aUTftbp3">Únete a nuestro canal de Discord</a>                
                <form action="index.jsp">
                    <button type="submit">Volver</button>
                </form>
             <% } %>        
    </body>
</html>
