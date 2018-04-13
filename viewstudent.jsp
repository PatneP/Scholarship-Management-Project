<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style1.css" rel="stylesheet">
    </head>
    <body>
          
	<div class="imgcontainer">
		<img src="coep.png" alt="Avatar"  width="800" height="130" > 
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active"href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
</div>





<h1 align="center"> Student Details: </h1>
        
<table width="500px" cellspacing="0" border="1" bordercolor="green" align="center">
<tr bgcolor="green">
<th>Name
<th>MIS
<th>Branch
<th>Year
<th>Mobile Number    
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;

String name, mis,branch,year,mobileno;
        
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship?user=root&password=pranali123");
pst=con.prepareStatement("select name,mis,branch,year,mobileno from student;");
rs=pst.executeQuery();

while(rs.next())
{
name=rs.getString("name");
mis=rs.getString("mis");
branch=rs.getString("branch");
year=rs.getString("year");
mobileno=rs.getString("mobileno");
%>
<tr>

<td><%=name%>
<td><%=mis%>
    <td><%=branch%>
        <td><%=year%>
            <td><%=mobileno%>
</tr>
<%
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
<br>
<br>
 <div class="btn-group">

 <button class="button"  onclick="document.location.href = 'viewscholarshipadmin.jsp'"><b>See Scholarship<br> Details</b></button>
  <button class="button"><b>See Student Details</b></button>
  <button class="button"><b>Send Mail To Students</b></button>
  <button class="button"><b>Send Student Details To <br>Third Party</b></button>


</div>

          </body>
    
    
    
</html>
