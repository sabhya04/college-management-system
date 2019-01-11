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
String str=request.getParameter("fname"); 
String str1=request.getParameter("lname");
String str2=request.getParameter("email"); 
String str3=request.getParameter("portweb");
String str4=request.getParameter("pos");  
String str5=request.getParameter("salary");
String str6=request.getParameter("start");
String str7=request.getParameter("phone");
String str8=request.getParameter("fax");
String str9=request.getParameter("sex");
String str10=request.getParameter("last");
String str11=request.getParameter("refrence");

try
 {
 	Class.forName("com.mysql.jdbc.Driver");
 	c=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
 	s=c.createStatement();
	s.executeUpdate("INSERT INTO `student`.`stfdetail` (`fname`, `lname`, `email`, `portweb`, `pos`, `salary`, `start`, `phone`, `fax`, `sex`, `last`, `refrence`) VALUES('"+str+"', '"+str1+"', '"+str2+"', '"+str3+"', '"+str4+"', '"+str5+"',"
                + " '"+str6+"', '"+str7+"', '"+str8+"', '"+str9+"', '"+str10+"', '"+str11+"')");
 	response.sendRedirect("/managementsystem/success.jsp");
        
        
 	
	c.close();
 	
 	s.close();
 	}
 catch(SQLException sq){}
 catch(ClassNotFoundException e){} 
 %>

    </body>
</html>
