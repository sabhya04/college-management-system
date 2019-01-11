
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
        
        String str3=rs.getString(2);
%>
           <form action="staff_update.jsp" id="EmploymentApplication100" method="post" onsubmit="return ValidateForm(this);">
<script type="text/javascript">
function ValidateForm(frm) {
if (frm.First_Name.value == "") { alert('First name is required.'); frm.First_Name.focus(); return false; }
if (frm.Last_Name.value == "") { alert('Last name is required.'); frm.Last_Name.focus(); return false; }
if (frm.Email_Address.value == "") { alert('Email address is required.'); frm.Email_Address.focus(); return false; }
if (frm.Email_Address.value.indexOf("@") < 1 || frm.Email_Address.value.indexOf(".") < 1) { alert('Please enter a valid email address.'); frm.Email_Address.focus(); return false; }
if (frm.Position.value == "") { alert('Position is required.'); frm.Position.focus(); return false; }
if (frm.Phone.value == "") { alert('Phone is required.'); frm.Phone.focus(); return false; }
return true; }
</script>
<table align="center" border="0" cellpadding="5" cellspacing="0">
<tr> <td style="width: 50%">
        <input type="hidden" name="staffid" value="<%=rs.getInt(1) %>" >
 
<label for="First_Name"><b>First name *</b></label><br />
<input name="fname" type="text" maxlength="50" style="width: 260px"  value="<%=rs.getString(2) %>"/>
</td> <td style="width: 50%">
<label for="Last_Name"><b>Last name *</b></label><br />
<input name="lname" type="text" maxlength="50" style="width: 260px"  value="<%=rs.getString(3) %>" />
</td> </tr> <tr> <td colspan="2">
<label for="Email_Address"><b>Email *</b></label><br />
<input name="email" type="text" maxlength="100" style="width: 535px" value="<%=rs.getString(4) %>" />
</td> </tr> <tr> <td colspan="2">
<label for="Portfolio"><b>Father's Name</b></label><br />
<input name="portweb" type="text" maxlength="255"  style="width: 535px" value="<%=rs.getString(5) %>" />
</td> </tr> <tr> <td colspan="2">
<label for="Position"><b>Which Faculty Member*</b></label><br />
<input name="pos" type="text" maxlength="100" style="width: 535px"  value="<%=rs.getString(6) %>" />
</td> </tr> <tr> <td>
<label for="Salary"><b>Salary </b></label><br /> 
<input name="salary" type="text" maxlength="50" style="width: 260px" value="<%=rs.getString(7) %>" /></td> 
<td>
<label for="StartDate"><b>Which year started serving?</b></label><br />
<input name="start" type="text" maxlength="50" style="width: 260px" value="<%=rs.getString(8) %>"/>
</td> </tr> <tr> <td>
<label for="Phone"><b>Phone *</b></label><br />
<input name="phone" type="text" maxlength="50" style="width: 260px" value="<%=rs.getString(9) %>"/>
</td> <td>
<label for="Fax"><b>Fax</b></label><br />
<input name="fax" type="text" maxlength="50" style="width: 260px" value="<%=rs.getString(10) %>" />
</td> </tr> <tr> 

  <td>Sex</td>
  <% 
      String gender=rs.getString(11);
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
  

  
 </tr> <tr> <td colspan="2">
<label for="Organization"><b>Work Experience</b></label><br />
<input name="last" type="text" maxlength="100" style="width: 535px" value="<%=rs.getString(12) %>" />
</td> </tr> <tr> <td colspan="2">
<label for="Reference"><b>Reference / Comments / Questions</b></label><br />
<textarea name="refrence" rows="7" cols="40" style="width: 535px"></textarea>
</td> </tr> <tr> <td colspan="2" style="text-align: center;">
<input name="skip_submit" type="submit" value="Update Application"  />
</td> </tr>
</table>
</form>    <%
            
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
