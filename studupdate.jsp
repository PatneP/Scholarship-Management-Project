<%-- 
    Document   : studentdetails.jsp
    Created on : 10 Apr, 2018, 9:31:25 AM
    Author     : Chinmayi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="scholarshipbean.*,java.sql.*"%>
<!DOCTYPE html>

 
        <%
        Connection con;
        PreparedStatement pst;
        String name,mis,mobnumber,branch,year,email,dob,gender,cgpa,caste,category,marksheet,castecertificate,fathernm,fincome,mothernm,mincome,accholdername,bankname,address,accno,ifsc,micr;
              
 if("fill student details".equals(request.getParameter("fill student details")))
{    
mis=request.getParameter("mis");
email=request.getParameter("email");
cgpa=request.getParameter("cgpa");
caste=request.getParameter("caste");
category=request.getParameter("category");
marksheet=request.getParameter("marksheet");
castecertificate=request.getParameter("casstecertificate");
fathernm=request.getParameter("fathernm");
fincome=request.getParameter("fincome");
mothernm=request.getParameter("mothernm");
mincome=request.getParameter("mincome");
accholdername=request.getParameter("accholdername");
bankname=request.getParameter("bankname");
address=request.getParameter("address");
accno=request.getParameter("accno");
ifsc=request.getParameter("ifsc");
micr=request.getParameter("micr");

Class.forName("com.mysql.jdbc.Driver");
 
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship?user=root&password=chinmayi123");
 
pst=con.prepareStatement("insert into studdetail(mis,email,cgpa,caste,category,marksheet,casetcertificate,fathernm,fincome,mothernm,mincome,accholdername,bankname,accno,ifsc,micr)"
        +"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

pst.setString(1,mis);
pst.setString(2,email);
pst.setString(3,cgpa);
pst.setString(4,caste);
pst.setString(5,category);
pst.setString(6,marksheet);
pst.setString(7,castecertificate);
pst.setString(8,fathernm);
pst.setString(9,fincome);
pst.setString(10,mothernm);
pst.setString(11,mincome);
pst.setString(12,accholdername);
pst.setString(13,bankname);
pst.setString(14,address);
pst.setString(15,accno);
pst.setString(16,ifsc);
pst.setString(17,micr);

	response.sendRedirect("student.jsp");
}
        %>
        <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student details Page</title>
        <link href="style1.css" rel="stylesheet"></link>
        
        <style>
            input[type=text],input[type=password],select , input[type="file"],textarea,input[type="date"] {
    			width: 250px;
    			padding: 15px;
    			border: 1px solid #ccc;
    			border-radius: 4px;
    			resize: vertical;
			}
            .addstud {
    			display: inline-block;
  			padding: 15px 32px;
  			font-size: 19px;
			margin: -63px 1px;
  			cursor: pointer;
  			text-align: center;
  			text-decoration: none;
  			outline: none;
  			color: #fff;
  			background-color: #4CAF50;
  			border: none;
  			border-radius: 15px;
  			box-shadow: 0 5px #999;
			  
			}
		.addstud:active {
  			background-color: #3e8e41;
  			box-shadow: 0 5px #666;
  			transform: translateY(4px);
			}
		.subaddstud {
    			background-color: #4CAF50;
    			border: none;
			border-radius: 15px;
  			box-shadow: 0 5px #999;
    			color: white;
    			padding: 15px 32px;
    			text-align: center;
    			text-decoration: none;
    			display: inline-block;
    			font-size: 15px;
    			margin: 45px 1px;
    			cursor: pointer;
			transition: all 0.5s;
			}
		.subaddstud:active {
  			background-color: #3e8e41;
  			box-shadow: 0 5px #666;
  			transform: translateY(4px);
			}
        </style>
        
        <script src="jquery-1.7.1.js" type="text/javascript"></script>
<script src="jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript">
function validate()
{ 
	var str="";
if(document.form1.mis.value=="")
	{
	 	str+="Enter mis\n";
	}
if(document.form1.accno.value=="")
   {
     	str+="Enter account number\n";
   }
   if(str!="")
	   {
	   alert(str);
	   return false;
	   }
   else
	   {
	   
	   return true;
	   }
}
$(document).ready(function()
{
	$('#form1').validate(
		{
			
			rules:
				{
				   mis:
					   {
					    required:true,
					    mis:true
					   },
					accno:
						{
						required:true
						},
					ifsc:
						{
						required:true,
						
						}
				},
				messages:
					{
					 accholdername:
						 {
						    required:"Please enter account holder's name",
						    accholdername:"Enter account holder's name"
						 },
                                        mis:
						 {
						    required:"Please enter mis",
						    mis:"Enter valid mis"
						 },
					accno:
						{
						    required:"Please enter account number"
					    },
					ifsc:
						{
							 required:"Please enter valid ifsc",
							
						}

					}
		}	
	
	);
	//enable validation for this page
	
});


function char_only1(evt)
{
	evt=(evt)?evt:event;
	var charCode=(evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode  :
		((evt.which) ? evt.which : 0));
	if(charCode > 31 && (charCode < 65 || charCode > 90 ) && (charCode < 97 || charCode > 122)&&charCode!=9)
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
       
            
            <div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
		</div>
        <div align="right">
        <span><a href="student.jsp"><img src="back1.png" height="50" width="80" border=" width=0em " title="home" ></a></span>
        </div>
        <div class="a">
 	<!-- Button to open the modal login form -->
	<button onclick="document.getElementById('id01').style.display='block'" class="addscho"><b>Update&nbsp;Details</b></button>
	</div>
 	 
	<div class="content">
		<div class="topnav">
		<a class="active"href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>

<div id="id01" class="modal">
  	<span onclick="document.getElementById('id01').style.display='none'"
	class="close" title="Close Modal">&times;</span>


 <form class="modal-content animate" action="studentdetails.jsp">

   <center> 
<center><h1>Update Details</h1></center>
        <table>
<tr>
    <td>
        <h2 style="color: #4CAF50"><b> Personal Information:</b><br></h2>
        <tr>
            <td><b>Name:</b> </td><td><input type="text" name="name" placeholder="Name" required></td></td>
        </tr>
        <tr>
		    <td><b> MIS: </b></td><td><input type="text" name="mis" placeholder="MIS" required></td>
        </tr>
		<tr>
		    <td><b> Mobile Number:</b> </td><td><input type="text" name="mobileno" placeholder="Mobile Number" required></td>
        </tr>
		<tr>
                    <td><b> Branch: </b></td><td>
                    <select name="branch">
                        <option value="Civil Engineering">Civil Engineering</option>
                         <option value="Mechanical Engineering">Mechanical Engineering</option>
                         <option value="Electrical Engineering">Electrical Engineering</option>
                         <option value="Electronics Engineering">Electronics Engineering</option>
                         <option value="Computer Engineering">Computer Engineering</option>
                         <option value="Information Technology">Information Technology</option>
			  <option value="Planning">Planning</option> 
			   <option value="Production Engineering">Production Engineering</option>
			  <option value="Instrumentation Engineering">Instrumentation Engineering</option>
			   <option value="Metallurgy Engineering">Metallurgy Engineering</option>
                    </select></td>
                </tr><br>
		 <tr>
                     <td> <b>Year:</b> </td><td> <select name="year">
                         <option value="FY Btech">FY Btech</option>
			   <option value="SY Btech">SY Btech</option>
			   <option value="TY Btech">TY Btech</option>
			   <option value="Btech">Btech</option>
			   <option value="FY Mtech">FY Mtech</option>
			   <option value="SY Mtech">SY Mtech</option>
                         </select></td>
                    
                </tr>
		
		 <tr>
		    <td><b> Email: </b></td><td><input type="text" name="email" placeholder="Enter Email" required></td>
        </tr> 
		
		<tr>
		    <td><b> Birth Date:</b> </td><td><input type="date" name="dob" ></td>
                </tr>
		 <tr>
		    <td><b> Gender:</b> </td><td><input name="gender" type="radio" value="male" required>Male<input name="Gender"  type="radio" value="female" required>Female</td>
        </tr>
		<tr>
		    <td><b> Cgpa:</b> </td><td><input type="text" name="cgpa" placeholder="Cgpa" required></td>
        </tr>
		<tr>
		    <td><b> Cast:</b> </td><td><input type="text" name="cast" placeholder="Caste" required></td>
        </tr>
		<tr>
		    <td><b> Category:</b> </td><td><input type="text" name="category" placeholder="Category" required></td>
        </tr>
        <tr>
		    <td><b> Attach Marksheet:</b> </td><td><input type="file" name="marksheet"  required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Attach Caste Certificate:</b> </td><td><input type="file" name="castecertificate"  required></td>&nbsp;&nbsp;
                </tr>
                <td><h2 style="color: #4CAF50"><b>Family Details:</b></h2></td><br>
		<tr>
		    <td><b> Father's Name:</b> </td><td><input type="text" name="fathernm" placeholder="Father's " required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Father's Income:</b> </td><td><input type="text" name="fincome" placeholder="Father's Income" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Mother's Name:</b> </td><td><input type="text" name="mothernm" placeholder="Mother" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Yearly family Income:</b> </td><td><input type="text" name="mincome" placeholder="Mother's Income" required></td>&nbsp;&nbsp;
                </tr>
                <td><h2 style="color: #4CAF50"><b>Bank Details:</b></h2></td><br>
		<tr>
		    <td><b> Account Holder's Name:</b> </td><td><input type="text" name="accholdername" placeholder="Name Of Account Holder" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Name Of Bank:</b> </td><td><input type="text" name="bankname" placeholder="Name Of Bank" required></td>&nbsp;&nbsp;
        </tr>
         </tr>
		<tr>
		    <td><b> Address:</b> </td><td><input type="text" name="address" placeholder="Bank Address" required></td>&nbsp;&nbsp;
        </tr>
        <tr>
		    <td><b> Account Number:</b> </td><td><input type="text" name="accno" placeholder="Account Number" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> IfSC Code:</b> </td><td><input type="text" name="ifsc" placeholder="IfSC Code" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> MICR Code:</b> </td><td><input type="text" name="micr" placeholder="MICR Code" required></td>&nbsp;&nbsp;
        </tr>
        
		
		</table>

  <tr><td>
          &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
     
     <input type="submit"  name="signup" value="Submit" class="cancelbtn" onclick ="return validate();">
	</td></tr>     
</div>
       
</center>
  </form>
</div> 
     </div>
    </body>
</html>

    </body>
</html>
