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
        rs=s.executeQuery("Select * from student where rno="+str);
        if(rs.next())
        {
        
        String str3=rs.getString(2);
%>
        <form action="stu_update.jsp" name="StudentRegistration" method="Post" onSubmit="return(validate()); ">

<table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"

  cellspacing="2">


<tr>

  <td colspan=2>

  <center><font size=4><b>Student Updation Form</b></font></center>

  </td>

  </tr>


<tr>
<input type="hidden" name="rno" value="<%=rs.getInt(1) %>" >
  <td>Name</td>
<label for="name"></label>

<td><input type=text name=name size="30" value="<%=rs.getString(2) %>"></td>

  </tr>


<tr>

  <td>Father Name</td>

  <td><input type="text" name="fname" id="fathername" value="<%=rs.getString(3) %>"></td>

  </tr>

  <tr>

  <td>Postal Address</td>

  <td><input type="text" name="poadd" id="paddress" size="30" value="<%=rs.getString(4) %>"></td>

  </tr>


<tr>

  <td>Personal Address</td>

  <td><input type="text" name="padd"

  id="personaladdress" size="30" value="<%=rs.getString(5) %>"></td>

  </tr>


<tr>

  <td>Sex</td>
  <% 
      String gender=rs.getString(6);
      if(gender.equals("Male")){
    %>      
    <td><input type="radio" name="sex" value="male" size="10" checked>">Male
    <input type="radio" name="sex" value="Female" size="10">Female</td>
    <%    
      }
else{
%>
 <td><input type="radio" name="sex" value="male" size="10" >Male
  <input type="radio" name="sex" value="Female" size="10" checked>Female</td>
<%
 }
%>
  

  </tr>


<tr>

  <td>City</td>

  <td><select name="city">

  <option value="<%=rs.getString(7) %>" selected><%=rs.getString(7) %></option>

  <option value="New Delhi">NEW DELHI</option>

  <option value="Mumbai">MUMBAI</option>

  <option value="Goa">GOA</option>

  <option value="Patna">PATNA</option>

  </select></td>

  </tr>


<tr>

  <td>Course</td>

  <td><select name="course">

  <option value="<%=rs.getString(8) %>" selected><%=rs.getString(8) %></option>

  <option value="B.Tech">B.TECH</option>

  <option value="MCA">MCA</option>

  <option value="MBA">MBA</option>

  <option value="BCA">BCA</option>

  </select></td>

  </tr>


<tr>

  <td>District</td>

  <td><select name="district">

  <option value="<%=rs.getString(3) %>" selected><%=rs.getString(3) %></option>

  <option value="Nalanda">NALANDA</option>

  <option value="UP">UP</option>

  <option value="Goa">GOA</option>

  <option value="Patna">PATNA</option>

  </select></td>


</tr>


<tr>

  <td>State</td>

  <td><select Name="state">

  <option value="<%=rs.getString(10) %>" selected><%=rs.getString(10) %></option>

  <option value="New Delhi">NEW DELHI</option>

  <option value="Mumbai">MUMBAI</option>

  <option value="Goa">GOA</option>

  <option value="Bihar">BIHAR</option>

  </select></td>

  </tr>

  <tr>

  <td>PinCode</td>

  <td><input type="text" name="pincode" id="pincode" size="30" value="<%=rs.getString(11) %>"></td>


</tr>

  <tr>

  <td>EmailId</td>

  <td><input type="text" name="email" id="emailid" size="30" value="<%=rs.getString(12) %>"></td>

  </tr>


<tr>

  <td>DOB</td>

  <td><input type="text" name="dob" id="dob" size="30" value="<%=rs.getString(13) %>"></td>

  </tr>


<tr>

  <td>MobileNo</td>

  <td><input type="text" name="mnumber" id="mobileno" size="30" value="<%=rs.getString(14) %>"></td>

  </tr>

  <tr>

  <td><input type="reset"></td>

  <td colspan="2"><input type="submit" value="Update Form" /></td>

  </tr>

  </table>

  </form>
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
