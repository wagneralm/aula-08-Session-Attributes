<%-- 
    Document   : index
    Created on : 1 de abr. de 2021, 13:04:59
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("name") != null) {
        request.setAttribute("name", request.getParameter("name"));
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session - AttWebApp</title>
    </head>
    <body>    <body>

        <header>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
        </header>
        <main>
            <h2>session</h2>
            <%if (request.getAttribute("name") != null) {%>
            <div><%= request.getAttribute("name")%></div>
            <%}%>

            <form method="">
                <label id="name">Name: </label>
                <input type="text" id="name" name="name"/>
                <input type="submit" value="Enviar">
            </form>
        </main>
        <footer>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
