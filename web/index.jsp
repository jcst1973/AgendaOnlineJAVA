<%-- 
    Document   : index
    Created on : 05-dic-2018, 13:10:24
    Author     : Mañanas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String estado=(String)request.getAttribute("estado_insercion");
    if (estado==null)
    {
        estado="";
    }
    
    %>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #ko{
                color: red;
            }
            #ok
            {
                color: green;
            }
            </style>
    </head>
    <body>
        <%
            if (estado.equals("OK"))
            {
            %>
            <h1 id="ok">Todo ha ido bien</h1>
            <% } else if (estado.equals("KO")) {%>
            <h1 id="ko">Algo ha ido mal</h1>
            <%}%>
        <form action="ServletAgenda" method="GET">
            Nombre: <input type="text" name="nombre">
            Email: <input type="email" name="email">
            <input type="hidden" name="accion" value="insertar">
            <input type="submit" value="Enviar">
        </form>
        <form action="ServletAgenda" method="GET">
            <input type="hidden" name="accion" value="vercontactos">
            <input type="submit" value="Ver contactos">
        </form>
    </body>
</html>
