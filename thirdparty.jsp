
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Third Party Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style1.css" rel="stylesheet">
  </link>
    </head>
         <body>
	
	<div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
		</div>

 	

		<div class="content">
		<div class="topnav">
		<a class="active"href="index.html">Home</a>
		<a href="contactus.jsp">Contact Us</a>
                <a href="index.html" >Log Out</a>
         </div>
</div>

   <%
    String id = String.valueOf(session.getAttribute("userid"));
    %>
    <h1 align="right">Welcome <%=id%></h1>
<br>
 <div class="btn-group">
 
  <button class="button"  onclick="document.location.href = 'addscholarship.jsp'"><b>Add Scholarship<br> Details</b></button>
  <button class="button" onclick="document.location.href = 'queries.jsp'"><b>Queries</b></button>
  </div>
</div>

    </body>
</html>
