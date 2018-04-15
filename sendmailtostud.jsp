
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,scholarshipbean.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style1.css" rel="stylesheet">
        <title>Mail Page</title>
    </head>
    <body>
       <div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
                 <div align="right">
        <span><a href="admin.jsp"><img src="back1.png" height="50" width="80" border=" width=0em " title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active" href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
              
  	<!-- Modal Content -->
 	<form class="modal-content animate" action="sendmail.jsp">

   	 <center><h1>Send Mail To Stud</h1></center>
	<center>
        <table>
            
            <tr><td><b> To : </b></td><td><input type="text" name="to"></td></tr>
            <tr><td><b> From :</b> </td><td><input type="text" name="from"></td></tr>
            <tr><td><b> Subject :</b> </td><td><input type="text" name="message"></td></tr>
            <tr><td><b> Message : </b></td><td><textarea name="subject" rows="5" cols="26"></textarea></td></tr>
        </table>
    	<center><h2><input type="submit" value="Submit Query" class="subaddscho"></h2></center>
     
            </center>
        </form>
                </div>
       </div>

    </body>
</html>

  
