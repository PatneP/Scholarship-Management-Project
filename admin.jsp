<%-- s
    Document   : admin
    Created on : Apr 9, 2018, 10:59:48 AM
    Author     : chinmayi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Page</title>
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
		<a class="active"href="home.html">Home</a>
		<a href="notice.html">Notices</a>
		<a href="#contact">Contact Us</a>
         </div>
</div>


<br>
 <div class="btn-group">
 
  <button class="button"  onclick="document.location.href = 'viewscholarshipadmin.jsp'"><b>See Scholarship<br> Details</b></button>
  <button class="button"><b>See Student Details</b></button>
  <button class="button"><b>Send Mail To Students</b></button>
  <button class="button"><b>Send Student Details To <br>Third Party</b></button>
</div>
</div>

    </body>
</html>
