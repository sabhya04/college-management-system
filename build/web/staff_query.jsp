<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Xeon | OnePage Responsive Theme</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link >
</head><!--/head-->

<body data-spy="scroll" data-target="#navbar" data-offset="0">
    <header id="header" role="banner">
        <div class="container">
            <div id="navbar" class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp"><i class="icon-home"></i></a></li>
                        <li><a href="#about-us">Student</a></li>
                        <li><a href="#services">Login</a></li>
                        <li><a href="#portfolio" >courses</a></li>
                        <li><a href="#pricing">Staff</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header><!--/#header-->
 <section id="mainslider" class="carousel">
    </section><!--/#main-slider-->

        <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%
 Connection c=null;
 ResultSet rs=null;
 Statement s=null;
 String str=request.getParameter("name"); 
 try
 {
 	Class.forName("com.mysql.jdbc.Driver");
 	c=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
 	s=c.createStatement();
        rs=s.executeQuery("Select * from stfdetail where staffid="+str);
        if(rs.next())
        {
        %>
        
        <table border="2" align="center" style="color:black">
            
            <tr><td><h4> Staff Id</td><td><%out.println(rs.getInt(1)); %></td></tr>
            
            
           <tr><td>First Name</td><td><% out.println(rs.getString(2)); %></td></tr>
            
            <tr><td>Last Name</td><td><%out.println(rs.getString(3));%></td></tr>
            
            <tr><td>Email</td><td><%out.println(rs.getString(4));%></td></tr>
            
            <tr><td>Father's Name</td><td><%out.println(rs.getString(5));%></td></tr>
            <tr><td>Which Faculty Member</td><td><%out.println(rs.getString(6));%></td></tr>
            
           <tr><td>Salary</td><td><% out.println(rs.getString(7));%></td></tr>
            
            <tr><td>Which year started serving</td><td><%out.println(rs.getString(8));%></td></tr>
            <tr><td>Phone</td><td><%out.println(rs.getString(9));%></td></tr>
            <tr><td>Fax</td><td><%out.println(rs.getString(10));%></td></tr>
            <tr><td>Sex</td><td><%out.println(rs.getString(11));%></td></tr>
            
            <tr><td>Work Experience</td><td><%out.println(rs.getString(12));%></td></tr>
            
            <tr><td>Reference</td><td><%out.println(rs.getString(13));%></td></tr>
             </h4>
        </table>
            <%
            
        }
        else{
            out.println("Record Not Found");
        }
        
        
        
 	
	c.close();
 	
 	s.close();
 	}
 catch(SQLException sq){}
 catch(ClassNotFoundException e){} 
 %>

    </body>
</html>
