
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,scholarshipbean.*"%>
<!DOCTYPE html>
<%@ page import = "scholarshipbean.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet">
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
	
            <script src="jquery-1.7.1.js" type="text/javascript"></script>
            <script src="jquery.validate.js" type="text/javascript"></script>
            <script type="text/javascript">
                
function char_only1(evt)
{
	evt=(evt)?evt:event;
	var charCode=(evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode  :
		((evt.which) ? evt.which : 0));
	if(charCode > 31 && (charCode < 65 || charCode > 90 ) && (charCode < 97 || charCode > 122) && (charCode != 9) && (charCode!=32))
		{ 
		alert("Enter letters only.");
		return false;
	    }
	return true;
	}
</script>
    </head>
    <body>
        <%
            if("Submit".equals(request.getParameter("submit")))
{
Connection con;
String castes="";
String content=request.getParameter("content");
String caste[]=request.getParameterValues("caste");
String dos=request.getParameter("dos");
for(int i=0;i<caste.length;i++){
    castes+=caste[i]+" ";
}

        DBConnector dbc = new DBConnector();
        con=dbc.getDbConnection();
        PreparedStatement ps=con.prepareStatement("insert into notice(content,caste,dos)values(?,?,?)");
        ps.setString(1,content);
        ps.setString(2,castes);
        ps.setString(3,dos);
        ps.executeUpdate();       
        response.sendRedirect("notice.jsp");
 
 }
 %>
      
        <div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
		</div>
         <div align="right">
        <span><a href="admin.jsp"><img src="back1.png" height="50" width="80" border=" width=0em " title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a  href="index.html">Home</a>
		<a class="active" href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
                </div>
        
        <form class="modal-content animate" method="post" action="addnotice.jsp">

   	<center> 
	<center><h1>Add Notices</h1></center>
    	<table>

        <tr>
            <td><b>Content : </b></td><td><input type="text" name="content" onkeypress="return char_only1(event);"></td>
        </tr>
        
        <tr>
	        <td><b>Caste Criteria : </b></td>
	    	<td><label class="container">OPEN <input type="checkbox" checked="checked" name="caste" value="OPEN,"><span class="checkmark"></span></label></td>
		<tr><td></td><td><label class="container">OBC <input type="checkbox" name="caste" value="OBC,"><span class="checkmark"></span></label></td></tr>
		<tr><td></td><td><label class="container">SC <input type="checkbox" name="caste" value="SC,"><span class="checkmark"></span></label></td></tr>
	        <tr><td></td><td><label class="container">ST <input type="checkbox" name="caste" value="ST,"><span class="checkmark"></span></label></td></tr>
		<tr><td></td><td><label class="container">SBC <input type="checkbox" name="caste" value="SBC,"><span class="checkmark"></span></label></td></tr>
		<tr><td></td><td><label class="container">VJ <input type="checkbox" name="caste" value="VJ,"><span class="checkmark"></span></label></td></tr>
		<tr><td></td><td><label class="container">NT-B <input type="checkbox" name="caste" value="NT-B"><span class="checkmark"></span></label></td></tr>
		<tr><td></td><td><label class="container">NT-C <input type="checkbox" name="caste" value="NT-C"><span class="checkmark"></span></label></td></tr>
		<tr><td></td><td><label class="container">NT-D <input type="checkbox" name="caste" value="NT-D"><span class="checkmark"></span></label></td></tr>
        </tr>
        
        
        <tr>
            <td><b>Date Of Submission :</b> </td><td><input type="date" name="dos" ></td>
        </tr>
        
        </table>
        <center><input type="submit" value="Submit" name="submit" class="subaddscho"></center>
     
        </center>
        </form>
    </body>
</html>
