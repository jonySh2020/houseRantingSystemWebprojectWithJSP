<%-- 
    Document   : Adminlogin.jsp
    Created on : 23-Jun-2021, 1:11:32 am
    Author     : btcse005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error.jsp" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center><h1>Hello Admin!</h1></center>
        <center> <h2>Remove username and password from database</h2> 
        <form action="Rmuser.jsp" method="post"> 
            <table>
                <tr>
                    <td>Usertype:</td>
                    <td><input list="Usertype" name="Usertype"/>
                        <datalist id="Usertype" >
                            <option value="CUSTOMER">
                            <option value="OWNER">
                            
                        </datalist>  </td>
                <p>USERTYPE* must be in capital letters. <br> Use "\\" before each special* character in USERNAME and PASSWORD.</p>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="RmUser"> </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="RmPass"> </td>
                </tr>
            </table>
            
            
            <br/><input type="submit" value="Submit"> 
            <input type="reset" value="Reset" >
        </form>
    </center>

        
        
        <%! String filename; %>
        <%! String rootpath=""; %>
        <% rootpath=request.getRealPath("/");
         if(request.getParameter("Que1").equals("2019btcse005") && request.getParameter("Que2").equals("tarun") && 
                request.getParameter("Que3").equals("67890") && request.getParameter("Que4").equals("ice-cream") )
        {
           out.println("<h3><em>All Owner's usernames and passwords:</em></h3>");
         String fileName = rootpath +"mydatabase/OwnerLogin.txt";//"/home/btcse005/NetBeansProjects/Rsystem/src/main/webapp/"+"OwnerLogin.txt";
         
        try
        { BufferedReader reader = new BufferedReader(new FileReader(fileName));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
            out.println(sb.toString());
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        out.println("<br><br><br><hr>");
        out.println("<h3><em>All Customer's usernames and passwords:</em></h3>");
         String fileName2 = rootpath+"mydatabase/CustomerLogin.txt";    
        try
        { BufferedReader reader = new BufferedReader(new FileReader(fileName2));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
            out.println(sb.toString());
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

            }
        else
        response.sendRedirect("Error.jsp");
            %>
            
    </body>
</html>
