
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,scholarshipbean.*"%>
<!DOCTYPE html>
<%@ page import = "scholarshipbean.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Third Party Page</title>
        <link href="style.css" rel="stylesheet"></link>
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

function numbers_only(evt)
{
	evt=(evt)? evt:event;
	var charCode=(evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode  :
		((evt.which) ? evt.which : 0));
	if((charCode!=37&&charCode!=46)&&(charCode > 57 || charCode<48))
		{ 
		alert("Enter numbers only.");
		return false;
	    }
	return true;
	}

</script>
    </head>
    <body>
       <%
 if("Addscholarship".equals(request.getParameter("addscholarship")))
{
Connection con;
String castes="";
String orgname=request.getParameter("orgname");
String caste[]=request.getParameterValues("caste");
String cgpa=request.getParameter("cgpa");
String  income=request.getParameter("income");
String fileuploaded=request.getParameter("fileuploaded");
for(int i=0;i<caste.length;i++){
    castes+=caste[i]+" ";
}

        DBConnector dbc = new DBConnector();
        con=dbc.getDbConnection();
        PreparedStatement ps=con.prepareStatement("insert into addscholarship(orgname,caste,cgpa,income,fileuploaded)values(?,?,?,?,?)");
        ps.setString(1,orgname);
        ps.setString(2,castes);
        ps.setString(3,cgpa);
        ps.setString(4,income);
        ps.setString(5,fileuploaded);
        ps.executeUpdate();       
        response.sendRedirect("thirdparty.jsp");
 
 }
 %>
       
       <div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
		</div>
	 <div align="right">
        <span><a href="thirdparty.jsp"><img src="back1.png" height="50" width="80" border=" width=0em " title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active"href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>


 	<form class="modal-content animate" method="post" action="addscholarship.jsp">

   	<center> 
	<center><h1>Add Scholarship</h1></center>
    	<table>

        <tr>
            <td><b>Organization Name : </b></td><td><input type="text" name="orgname" onkeypress="return char_only1(event);"></td>
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
       	 	<td><b>CGPA Criteria : </b></td><td><input type="text" name="cgpa" onkeypress="return numbers_only(event);"></td>
    	</tr>
    	<tr>
        	<td><b>Income Criteria : </b></td><td><select name="income">
			
			<option value ="Below 1,00,000">Below 1,00,000</option>
			<option value ="1,00,000 - 3,00,000">1,00,000 - 3,00,000</option>
			<option value ="3,00,000 - 5,00,000">3,00,000 - 5,00,000</option>
			<option value ="Above 5,00,000">Above 5,00,000</option>
    	</tr>
    	<tr>
        	<td><b>Upload File :</b> </td><td><input type="file" name="fileuploaded"></td>
    	</tr>
    	</table>
        <br>
      	<input type="submit" class="subaddscho" name="addscholarship" value="Addscholarship">&nbsp;&nbsp;      
	</center>
        </form>
        </div>
                </div>
        
    </body>
</html>
