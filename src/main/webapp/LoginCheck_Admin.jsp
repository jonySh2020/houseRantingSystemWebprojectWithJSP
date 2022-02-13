<%-- 
    Document   : LoginCheck_Admin
    Created on : 22-Jun-2021, 1:21:42 pm
    Author     : btcse005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String username = request.getParameter("username");
            String password = request.getParameter("password");
            if ((username.equals("admin") && password.equals("Myhome"))) {
                session.setAttribute("username", username);
                response.sendRedirect("Adminlogin.html");
            } else
                response.sendRedirect("Error.jsp");
        %>    </body>
</html>
