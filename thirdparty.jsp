<%-- 
    Document   : thirdparty
    Created on : Apr 9, 2018, 11:48:43 AM
    Author     : priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,scholarshipbean.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
 if("Signup".equals(request.getParameter("signup")))
{
Connection con;
String caste="";
String orgname=request.getParameter("orgname");
String castes[]=request.getParameterValues("caste");
String name=request.getParameter("name");
String  userid=request.getParameter("userid");
String password=request.getParameter("password");
String cnf=request.getParameter("cpsw");
String file=request.getParameter("legaldoc");
for(int i=0;i<castes.length;i++){
    caste+=castes[i]+" ";
}

 
DBConnector dbc = new DBConnector();
con=dbc.getDbConnection();   
PreparedStatement ps;
ps=con.prepareStatement("insert into addscholarship(orgname,name,userid,file)values('"+orgname+"','"+caste+"','"+name+"','"+userid+"','"+file+"')");
ps.setString(1,orgname);
ps.setString(2,caste);
ps.setString(3,name);
ps.setString(4,userid);
ps.setString(5,file);
ps.executeUpdate();

response.sendRedirect("sucess.html");
 
 }
       
       
       
       
       %>
    </body>
</html>
