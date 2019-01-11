<%-- 
    Document   : insertjsp.jsp
    Created on : 20 Jun, 2018, 12:16:15 PM
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
 String str1=request.getParameter("uemail");
  String str2=request.getParameter("upass"); 

  try
 {
 	Class.forName("com.mysql.jdbc.Driver");
 	c=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
 	s=c.createStatement();
	s.executeUpdate("Insert into user value('"+str+"', '"+str1+"', '"+str2+"')");
 	out.println("Records Saved Successfully");
        
        
 	
	c.close();
 	
 	s.close();
 	}
 catch(SQLException sq){}
 catch(ClassNotFoundException e){} 
 %>

    </body>
</html>
