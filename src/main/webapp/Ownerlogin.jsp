<%-- 
    Document   : Ownerlogin
    Created on : 16-Jun-2021, 8:21:43 am
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
        
      
        
        <h1>Hello Owner!</h1>
        <h4> Your submitted information is here:</h4>
        <% String val=request.getParameter("OwnerName"); %>
        <p>Name of Owner is = <%= val %></p>
        <% out.println("mail id ="+request.getParameter("mailid")); %><br>
        <% out.println("contact No ="+request.getParameter("contactno")); %>
        <h3>House information entered:</h3>
        <% out.println("No of rooms awailable ="+request.getParameter("roomsNO")); %><br>
        <% out.println("House Address ="+request.getParameter("Address")); %><br>
        <% out.println("District ="+request.getParameter("district")); %><br>
        <% out.println("State ="+request.getParameter("state")); %><br>
        <% out.println("Pincode of Area ="+request.getParameter("pincode")); %><br>
        <% out.println("Rent price ="+request.getParameter("rent")); %><br>
        <hr>
        
        
        <%    String accept=request.getParameter("OwnerAccept");
        try 
            { if(accept.equals(null))
                {
              out.println("<em>you have not accepted owner terms and conditions.</em>");
              //response.sendRedirect("Ownerlogin.jsp");
            }
            }
        catch (Exception e)
        {
            out.println("<em>*you have not accepted owner terms and conditions.</em><br><br>");
            
        }
      %>
        
        <form action="">
            <input type="checkbox"  value="checked"> Accept and continue
            <input type="submit" >
        </form>
    </body>
</html>
