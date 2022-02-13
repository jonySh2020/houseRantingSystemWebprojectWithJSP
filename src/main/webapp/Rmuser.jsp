<%-- 
    Document   : Rmuser.jsp
    Created on : 23-Jun-2021, 10:14:54 am
    Author     : btcse005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error.jsp" %>
<%@page import="java.io.File" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.util.Scanner" %>
<%@page import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3><em>Removing user...</em></h3>
        
        <%! String filePath =""; %>
        <%!String del=""; //string to be deleted %>
        <% String usertype = request.getParameter("Usertype");
        out.println(usertype+"<br>");
        String username=request.getParameter("RmUser");
        String password=request.getParameter("RmPass");
        del="<B>UserName:</B>"+username+"<BR><B>Password:</B>"+password+"<BR>";
         if(usertype.equals("OWNER"))
        {
            
            filePath =request.getRealPath("/")+"mydatabase/OwnerLogin.txt";
            
        }
        else if (usertype.equals("CUSTOMER"))
        {
               filePath =request.getRealPath("/")+"mydatabase/CustomerLogin.txt";
        }
        else
        {   out.println("<h1>An Error is occured.</h1>");
            out.println("Invalid usertype.<br>*usertype must be in CAPITAL only CUSTOMER AND OWNER is allowed. ");
        }
            %>
 
<%!
   public static String fileToString(String filePath) throws Exception{
      String input = null;
      Scanner sc = new Scanner(new File(filePath));
      StringBuffer sb = new StringBuffer();
      while (sc.hasNextLine()) {
         input = sc.nextLine();
         sb.append(input);
      }
      return sb.toString();
   }
%>

   <% 
     
     
     out.println("String for deleting =<br>"+del+"<br>------------------------------------");
     try{
      String result = fileToString(filePath);
      
      out.println("<em>Contents of the file:</em><br> "+result);
      //Replacing the word with desired one
      try{
      result = result.replaceAll(del, "");
      }
      catch (java.util.regex.PatternSyntaxException ex)
      {	
      		out.println(ex);
      }
      //Rewriting the contents of the file
      PrintWriter writer = new PrintWriter(new File(filePath));
      writer.append(result);
      writer.flush();
      out.println("<em>-------------------------------------Contents of the file after replacing the desired word:</em><br>");
      out.println(fileToString(filePath));
      }
      catch( Exception e)
      {
      	out.println(e);
      }
   
 
      out.println("<h2>NO username and password exist with<br><h2>"+del );
            %>
        
        
        
    </body>
</html>
