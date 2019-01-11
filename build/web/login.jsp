<%-- 
    Document   : login
    Created on : 22 Jun, 2018, 11:34:16 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <%@ page import = "java.io.*,java.util.*,java.sql.*"%>

        <%
 Connection c=null;
 ResultSet rs=null;
 Statement s=null;
 String str=request.getParameter("uname"); 
 String str1=request.getParameter("upass");

 	
 try
     
 {
 	
        Class.forName("com.mysql.jdbc.Driver");
 	c=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
 	s=c.createStatement();
	rs=s.executeQuery("Select * from user where NAME='"+str+"' and PASS='"+str1+"'");
        
 	
        
        if(rs.next())
 	{
            session.setAttribute("user",str);
            response.sendRedirect("admin.jsp");
             }
        else{
            %>
            <script type="text/javascript">
                alert("rewrite the password");
                </script>
                <%
           
            response.sendRedirect("newhtml.html");
            
        }
	c.close();
 	rs.close();
 	s.close();
 	}
 catch(SQLException sq){}
 catch(ClassNotFoundException e){}
 %>
            
                        
        </form>
   

    </body>
</html>
