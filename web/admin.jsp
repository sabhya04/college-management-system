<%-- 
    Document   : admin.jsp
    Created on : 28 Jun, 2018, 12:20:01 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <% String str=(String)session.getAttribute("user");
     
        
       if (str==null)
               {
            response.sendRedirect("newhtml.html");                   
                }

       %>
       <%@include file="template/admin/admin.html" %>
    </body>
</html>
