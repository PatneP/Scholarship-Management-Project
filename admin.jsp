
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Page</title>
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
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
                <a href="index.html" >Log Out</a>
         </div>
</div>

  
    <h1 align="right">Welcome 141608000</h1>
<br>
 <div class="btn-group">
 
  <button class="button"  onclick="document.location.href = 'viewscholarshipadmin.jsp'"><b>See Scholarship<br> Details</b></button>
  <button class="button" onclick="document.location.href = 'viewstudent.jsp'"><b>See Student Details</b></button>
  <button class="button" onclick="document.location.href = 'sendmailtostud.jsp'"><b>Send Mail To Students</b></button>
  <button class="button" onclick="document.location.href = 'SendStudDetailsToTp.jsp'"><b>Send Student Details To <br>Third Party</b></button>
  <button class="button" onclick="document.location.href = 'addnotice.jsp'"><b>New Notice</b></button>

 </div>
</div>

    </body>
</html>
