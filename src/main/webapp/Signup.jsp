<%-- 
    Document   : Signup
    Created on : 22-Jun-2021, 6:23:34 pm
    Author     : btcse005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="java.util.Scanner" %>
<%@page import="java.lang.String.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
    </head>
    <body>
        <%! String file; %>
        <%! String globalData=""; %>
        <%! int unlock=0; %>
        <%! String key=null; %>
        <%! String rootpath=""; %>
        <% rootpath=request.getRealPath("/"); %>
        <% String username=request.getParameter("username");
          String password=request.getParameter("password");
          key="<B>UserName:</B>"+username+"<BR>"; %>
            
          <%  if(request.getParameter("Usertype").equals("OWNER"))
            {
                file =rootpath+"mydatabase/OwnerLogin.txt";
                out.println("<center><h1>Welcome New Owner</h1></center><br>");
                
            }
            else if(request.getParameter("Usertype").equals("CUSTOMER"))
            {
                file=rootpath+"mydatabase/CustomerLogin.txt";
                out.println("<center><h1>Welcome New Customer!</h1></center><br>");
                //out.println("<em>sign up is <b>successful</b></em><br>");
            }
            else
            {
                out.println("<h2>user type did not matched :(</h2>");
                out.println("<em>sign up is <b>unsuccessful</b></em><br>");
                response.sendRedirect("Error.jsp");
            }
            
          //  out.println("<em>path of the <b>usertype</b>login.txt is =</em>"+file+"<br>");
          
           //page errorPage="Error.jsp"
           
         
           try{
            File obj1= new File(file);
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
         // out.println(globalData);
         //   out.println("key="+key);
         //   out.println("keylen"+key.length());
            int Maxi=globalData.length();
         //   out.println("maxi="+Maxi);
        
      
      try{
        for(int i=0; i<Maxi; i++){
            int j=0;
            j=globalData.indexOf("<B>UserName:</B>",i);
            //out.println(j);
            if(key.equals(globalData.substring(j,j+key.length())))
            {
                unlock++;
                break;
            }
            i=i+16;
            }
      }
      catch( Exception e)
      {
          unlock=0;
      }
      
          if(unlock==0)
          {   
         try {
               /* PrintWriter pw = new PrintWriter(new FileOutputStream(file));
                pw.println("username="+username+"password="+password);
                //clean up
                pw.close();*/
             FileWriter filewriter = new FileWriter(file, true);
            filewriter.write("<B>UserName:</B>" + username + "<BR>");
            filewriter.write("<B>Password:</B>"+password+"<BR>");
            filewriter.close();
            out.println("<em>sign up is <b>successful</b></em><br>");
            }
            catch (Exception e){
                out.println(e.getMessage());
            }
          }
          else
          { 
              out.println("this username has already taken, try different one!");
              out.println("<h1>Error :( </h1>");
              out.println("<em>sign up is <b>unsuccessful</b></em><br>");
          }
         //   out.println("check the <Usertype>Login.txt in home dir if Usertype matched");
            
        %>
    </body>
</html>
