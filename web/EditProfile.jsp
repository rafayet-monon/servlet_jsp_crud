<%-- 
    Document   : EditProfile
    Created on : Mar 8, 2017, 2:24:43 AM
    Author     : ACE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ED</title>
    </head>
    
    <body>
        <h1><p>${param.message}</p></h1>
        <% if (session.getAttribute("name") == null) { %>
    <p> some content </p>
<% } else {%>
    <p> ${name} </p>
<% } %>

    </body>
</html>
