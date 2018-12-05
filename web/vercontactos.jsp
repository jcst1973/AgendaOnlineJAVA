<%-- 
    Document   : vercontactos
    Created on : 05-dic-2018, 12:38:33
    Author     : Mañanas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="paqueteagenda.Contacto"%>
<%@page import="paqueteagenda.PintarHTML"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//lista_contactos
ArrayList<Contacto> lista_contactos= (ArrayList<Contacto>)request.getAttribute("lista_contactos");
String html_lista=PintarHTML.crearLista(lista_contactos);
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=html_lista%>
    </body>
</html>
