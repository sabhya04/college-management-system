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
 String rno=request.getParameter("rno");
 String str=request.getParameter("name"); 
 String str1=request.getParameter("fname");
 String str2=request.getParameter("poadd"); 
String str3=request.getParameter("padd");
String str4=request.getParameter("sex");  
String str5=request.getParameter("city");
String str6=request.getParameter("course");
String str7=request.getParameter("district");
String str8=request.getParameter("state");
String str9=request.getParameter("pincode");
String str10=request.getParameter("email");
String str11=request.getParameter("dob");
String str12=request.getParameter("mnumber");
try
 {
 	Class.forName("com.mysql.jdbc.Driver");
 	c=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
 	s=c.createStatement();
	s.executeUpdate("UPDATE `student`.`student` set name='"+str+"' , fname='"+str1+"',  poadd='"+str2+"',  padd='"+str3+"', sex='"+str4+"', city='"+str5+"', course='"+str6+"', district='"+str7+"',  state='"+str8+"', pincode='"+str9+"', email='"+str10+"', dob='"+str11+"', mnumber='"+str12+"' where rno="+rno+";");
 	response.sendRedirect("/managementsystem/success.jsp");
        
        
 	
	c.close();
 	
 	s.close();
 	}
 catch(SQLException sq){}
 catch(ClassNotFoundException e){} 
 %>

    </body>
</html>
