

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="scholarshipbean.*,java.sql.*"%>
<!DOCTYPE html>

 
        <%
         String id= String.valueOf(session.getAttribute("userid"));
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

 <form class="modal-content animate" action="studupdate.jsp">

   <center> 
<center><h1>Update Details</h1></center>


  <input type="hidden" name="hiddenmis<" value="<%=id%>"> 
<h1>Welcome <%=id%></h1>       
                  <%
                       String name,mis,branch,year,dob,gender,mobileno;
                     String email,cgpa,caste,category, fathernm,fincome,mothernm,mincome,yincome,accholdername,bankname,address,accno,ifsc,micr ;
              
                      Connection con;
try{
    
DBConnector dbc = new DBConnector();
con=dbc.getDbConnection();

Statement st=con.createStatement();
ResultSet rs= st.executeQuery("select name,userid,mobileno,year,dob from student where userid='"+id+"'");
Statement stm=con.createStatement();
ResultSet res= stm.executeQuery("select email,cgpa,caste,category, marksheet,castecertificate,fathernm,fincome,mothernm,mincome,yincome,accholdername,bankname,address,accno,ifsc,micr from studdetails where userid='"+id+"'");
if(rs.next()){
    
%>
        <table>
<tr>
    <td>
        <h2 style="color: #4CAF50"><b> Personal Information:</b><br></h2>
        <tr>
            <td><b>Name:</b> </td><td><input type="text" name="name"   value="<%=rs.getString("name")%>" required></td></td>
        </tr>
        <tr>
		    <td><b> MIS: </b></td><td><input type="text" name="mis"  value="<%=rs.getString("userid")%>" readonly></td>
        </tr>
        <tr>
		    <td><b> Mobile Number:</b> </td><td><input type="text" name="mobileno" value="<%=rs.getString("mobileno")%>" required></td>
        </tr>
        	               
	 <tr>
                     <td> <b>Year:</b> </td><td><input type="text" name="year" value="<%=rs.getString("year")%>" required></td>
                    
                </tr>
                <tr>
		    <td><b> Birth Date:</b> </td><td><input type="text" name="dob" value="<%=rs.getString("dob")%>" required  ></td>
                </tr>
                
                
  <%             
       }
if(res.next())
{
%>
		 <tr>
		    <td><b> Email: </b></td><td><input type="text" name="email" value="<%=res.getString("email")%>" required></td>
        </tr> 
		
		<tr>
		    <td><b> Cgpa:</b> </td><td><input type="text" name="cgpa"   value="<%=res.getString("cgpa")%>" required></td>
        </tr>
		<tr>
		    <td><b> Caste:</b> </td><td><input type="text" name="caste" value="<%=res.getString("caste")%>" required></td>
        </tr>
		<tr>
		    <td><b> Category:</b> </td><td><input type="text" name="category" value="<%=res.getString("category")%>" required></td>
        </tr>
        <tr>
		   
                <td><h2 style="color: #4CAF50"><b>Family Details:</b></h2></td><br>
		<tr>
		    <td><b> Father's Name:</b> </td><td><input type="text" name="fathernm" value="<%=res.getString("fathernm")%>" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Father's Income:</b> </td><td><input type="text" name="fincome" value="<%=res.getString("fincome")%>" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Mother's Name:</b> </td><td><input type="text" name="mothernm" value="<%=res.getString("mothernm")%>" required></td>&nbsp;&nbsp;
        </tr>
		 <tr>
		    <td><b> Mother's Income:</b> </td><td><input type="text" name="mincome" value="<%=res.getString("mincome")%>" required></td>&nbsp;&nbsp;
        </tr>
		
		<tr>
		    <td><b> Yearly family Income:</b> </td><td><input type="text" name="yincome" value="<%=res.getString("yincome")%>" required></td>&nbsp;&nbsp;
                </tr>
                <td><h2 style="color: #4CAF50"><b>Bank Details:</b></h2></td><br>
		<tr>
		    <td><b> Account Holder's Name:</b> </td><td><input type="text" name="accholdername" value="<%=res.getString("accholdername")%>" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> Name Of Bank:</b> </td><td><input type="text" name="bankname" value="<%=res.getString("bankname")%>" required></td>&nbsp;&nbsp;
        </tr>
         </tr>
		<tr>
		    <td><b> Address:</b> </td><td><input type="text" name="address" value="<%=res.getString("address")%>" required></td>&nbsp;&nbsp;
        </tr>
        <tr>
		    <td><b> Account Number:</b> </td><td><input type="text" name="accno" value="<%=res.getString("accno")%>" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> IFSC Code:</b> </td><td><input type="text" name="ifsc" value="<%=res.getString("ifsc")%>" required></td>&nbsp;&nbsp;
        </tr>
		<tr>
		    <td><b> MICR Code:</b> </td><td><input type="text" name="micr" value="<%=res.getString("micr")%>" required></td>&nbsp;&nbsp;
        </tr>
        
                        <%
}
}
catch(Exception e){
out.println(e);
}
%>   
		
		</table>  

  <tr><td>
          &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
     
     <input type="submit"  name="signup" value="Submit" class="cancelbtn" onclick ="return validate();">
	</td></tr>     
</div>
  <%
    
      PreparedStatement stmt;
      PreparedStatement pst;
   name=request.getParameter("name");
    mobileno=request.getParameter("mobileno");
    year=request.getParameter("year");
    dob=request.getParameter("dob");
  
   
email=request.getParameter("email");
cgpa=request.getParameter("cgpa");
caste=request.getParameter("caste");
category=request.getParameter("category");
fathernm=request.getParameter("fathernm");
fincome=request.getParameter("fincome");
mothernm=request.getParameter("mothernm");
mincome=request.getParameter("mincome");
yincome=request.getParameter("yincome");
accholdername=request.getParameter("accholdername");
bankname=request.getParameter("bankname");
address=request.getParameter("address");
accno=request.getParameter("accno");
ifsc=request.getParameter("ifsc");
micr=request.getParameter("micr");

    
    try{
    
DBConnector dbc = new DBConnector();
con=dbc.getDbConnection();

stmt = con.prepareStatement("update student set name=?,mobileno=?,year=?,dob=? where userid='"+id+"'");
stmt.setString(1,name);
stmt.setString(2,mobileno);
stmt.setString(3,year);
stmt.setString(4,dob);
stmt.executeUpdate();



pst = con.prepareStatement("update studdetails set email=?,cgpa=?,caste=?,category=?, fathernm=?,fincome=?,mothernm=?,mincome=?,yincome=?,accholdername=?,bankname=?,address=?,accno=?,ifsc=?,micr=? where userid='"+id+"'");
pst.setString(1,email);
pst.setString(2,cgpa);
pst.setString(3,caste);
pst.setString(4,category);
pst.setString(5,fathernm);
pst.setString(6,fincome);
pst.setString(7,mothernm);
pst.setString(8,mincome);
pst.setString(9,yincome);
pst.setString(10,accholdername);
pst.setString(11,bankname);
pst.setString(12,address);
pst.setString(13,accno);
pst.setString(14,ifsc);
pst.setString(15,micr);
pst.executeUpdate();
response.sendRedirect("student.jsp");
   }
catch(SQLException e)
{
out.println(e.getMessage());
}


%>
      </center>

        </div>
  </form>
</body>

</html>
