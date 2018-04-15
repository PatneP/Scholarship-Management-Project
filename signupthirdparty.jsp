
<%@page contentType="text/html" pageEncoding="UTF-8" import="scholarshipbean.*,java.sql.*"%>
<!DOCTYPE html>
<%@ page import = "scholarshipbean.*"%>
        <%
           
 if("Signup".equals(request.getParameter("signup")))
{
Connection con;
 String orgname=request.getParameter("orgname");
String name=request.getParameter("name");
String  userid=request.getParameter("userid");
String password=request.getParameter("password");
String cnf=request.getParameter("cpsw");
String file=request.getParameter("legaldoc");
 
DBConnector dbc = new DBConnector();
con=dbc.getDbConnection();


	PreparedStatement ps=con.prepareStatement("insert into thirdparty(orgname,name,userid,password,legaldoc,status)values(?,?,?,?,?,default)");
            ps.setString(1,orgname);
            ps.setString(2,name);
            ps.setString(3,userid);
            ps.setString(4,password);
            ps.setString(5,file);
            ps.executeUpdate();
            
	response.sendRedirect("index.html");
}	
            %>
   <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet"></link>
        
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
if(document.form1.orgname.value=="")
	{
	 	str+="Enter orgname\n";
	}
if(document.form1.psw.value=="")
   {
     	str+="Enter Password\n";
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
				   uid:
					   {
					    required:true,
					    uid:true
					   },
					password:
						{
						required:true
						},
					cnf:
						{
						required:true,
						equalTo:"#psw"
						}
				},
				messages:
					{
					 orgname:
						 {
						    required:"Please enter organization name",
						    orgname:"Enter valid organization name"
						 },
                                        userid:
						 {
						    required:"Please enter user id",
						    userid:"Enter valid user id"
						 },
					password:
						{
						    required:"Please enter password"
					    },
					cnf:
						{
							 required:"Please enter password",
							 equalTo:"Enter same value again"
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
	if(charCode > 31 && (charCode < 65 || charCode > 90 ) && (charCode < 97 || charCode > 122)&&(charCode!=9) && (charCode!=32))
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
        <span><a href="index.html"><img src="back1.png" height="50" width="80" border=" width=0em " title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active" href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>

 	<!-- Modal Content -->
 <form class="modal-content animate" action="signupthirdparty.jsp">

   <center> 
<center><h1>Sign Up</h1></center>
    <table>
<tr>
<td>
       <tr>
            <td><b>Organization Name:</b> </td><td><input type="text" name="orgname" placeholder="Organization Name" onkeypress="return char_only1(event);"></td>
        </tr>

        <tr>
            <td><b>Name:</b> </td><td><input type="text" name="name" placeholder="Name" onkeypress="return char_only1(event);"></td>
        </tr>
      
		  <tr>
            <td><b>User Id:</b> </td> <td><input type="text" name="userid" placeholder="User Id" ></td>
        </tr> 
		
		 <tr>
		    <td><b> Create a Password: </b></td><td><input type="password" name="password" placeholder="Create Password" required></td>
        </tr> 
		<tr>
		    <td><b> Confirm Your Password:</b> </td><td><input type="password" name="cpsw" placeholder="Confirm Password" required></td>
        </tr>
		<tr>
		    <td><b>Legal Document:<br>(Provide company related document)</b> </td><td><input type="file" name="legaldoc" ></td>
        </tr>
</td>
</tr>

  <tr><td>
          
          &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
     
     <input type="submit"  name="signup" value="Signup" class="subaddscho" onclick ="return validate();">
	</td></tr>     
</div>
       
</center>
  </form>
</div> 
     </div>
    </body>
</html>