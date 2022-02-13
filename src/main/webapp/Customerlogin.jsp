<%-- 
    Document   : Customerlogin
    Created on : 16-Jun-2021, 5:43:31 pm
    Author     : btcse005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error.jsp"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello Customer!</h1>
        <h4> Your submitted information is here:</h4>
        <% String val=request.getParameter("CustomerName"); %>
        <p>Name of Owner is = <%= val %></p>
        <% out.println("mail id ="+request.getParameter("mailid")); %><br>
        <% out.println("contact No ="+request.getParameter("contactNO")); %>
        <h3>House information entered:</h3>
        <% out.println("No of rooms wanted ="+request.getParameter("roomsNO")); %><br>
         <% out.println("City ="+request.getParameter("City")); %><br>
        <% out.println("District ="+request.getParameter("district")); %><br>
        <% out.println("State ="+request.getParameter("state")); %><br>
        <% out.println("Maxrent ="+request.getParameter("Maxrent")); %><br>
        <br>
        <hr>
        
        <form action="">
            <input type="checkbox" name="accept" > Accept and continue
            <input type="submit" >
        </form>
        
    </body>
</html>
