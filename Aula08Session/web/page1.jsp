<%-- 
    Document   : page1
    Created on : 1 de abr. de 2021, 16:23:14
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page 1 - SessionApp</title>
    </head>
    <body>



        <header>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
        </header>
        <main>
            
        <% if(session.getAttribute("session.username") == null) {%>
        <div><p>Você precisa esta identificado para ter acesso a este conteúdo.</p></div>
        <%}else {%>
            <h2>Page 1</h2>

            <p>Página 1 do site de demonstração do HttpSession.</p>
        <%}%>
        </main>
    </body>
</html>
