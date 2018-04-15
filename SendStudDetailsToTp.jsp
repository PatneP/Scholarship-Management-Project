
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>	
		.imgcontainer {
   			text-align: left;
    			margin: 24px 0 12px 150;
			
			}
                        .content {
   			max-width: 1000px;
    			margin: auto;
			}
		.topnav {	
			background-color: #333;
			overflow: hidden;
			}
		.topnav a {
    			float: left;
    			color: #f2f2f2;
    			text-align: center;
    			padding: 14px 16px;
    			text-decoration: none;
    			font-size: 17px;
			}
		.topnav a:hover {
    			background-color: #ddd;
    			color: black;
			}
		.topnav a.active {
    			background-color: #4CAF50;
    			color: white;
			}
		h1   {color: green;}
		#play_button {
    			position:absolute;
			transition: .5s ease;
 			right: 202px;
    			top: 198px;
			}
		</style>
	
    </head>
    <body>
        <div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
		</div>
         <div align="right">
        <span><a href="admin.jsp"><img src="back1.png" height="50" width="80" border=" width=0em " title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active" href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
                    <h1>Send Stud detail to tp</h1>
    
    </body>
</html>
