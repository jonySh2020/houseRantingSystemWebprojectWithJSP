<%-- 
    Document   : LoginCheck_owner
    Created on : 22-Jun-2021, 1:21:19 pm
    Author     : btcse005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Scanner" %>
<%@page errorPage="Error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String username = request.getParameter("username");
           String password = request.getParameter("password"); %>
           <% String key="<B>UserName:</B>"+username+"<BR><B>Password:</B>"+password+"<BR>"; %>
           <% String rootpath=request.getRealPath("/"); %>
           
           <%!String fileName =""; %>
           <% fileName=rootpath+"mydatabase/OwnerLogin.txt"; %>
           <%!String globalData=""; %>
           <%! int unlock=0; %>
         
         <%  try{
            File obj1= new File(fileName);
            Scanner obj2=new Scanner(obj1);
            while(obj2.hasNextLine())
            {
                String data=obj2.nextLine();
                globalData=globalData+data;
                
            }
            obj2.close();
        }
        catch (FileNotFoundException e)
        {
            e.printStackTrace();
        }
         //   out.println(globalData);
         //   out.println("key="+key);
            
           for(int i=0; i<globalData.length(); i++)
			{
					if (globalData.indexOf('<',i)!= -1)/*index of returns -1 when the character or string not occurs*/ 
					{	int j=globalData.indexOf('<',i);
						if(key.equals(globalData.substring(j,j+key.length())))
							{
								unlock++;
                                                                break;
							}
                    
 			               }}
                
                
          //  out.println("unlock="+unlock); 
            if (unlock==0)
                response.sendRedirect("Error.jsp");
            else
            {
                session.setAttribute("username", username);
                response.sendRedirect("Ownerlogin.html");
            }
            
        %>
    </body>
</html>
