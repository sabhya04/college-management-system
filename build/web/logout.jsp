<%-- 
    Document   : logout.jsp
    Created on : 23 Jun, 2018, 12:14:29 PM
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
        
      <%  session.setAttribute("user",null);
         response.sendRedirect("index.jsp");
           %>
            
    </body>
</html>
