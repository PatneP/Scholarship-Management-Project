<%-- 
    Document   : login
    Created on : Apr 8, 2018, 12:03:11 AM
    Author     : Panu
--%>


<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "scholarshipbean.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
       <%
 Connection con;
 String userid = request.getParameter("userid");
 String password = request.getParameter("psw");
 String status="";
 
DBConnector dbc = new DBConnector();
con=dbc.getDbConnection();
 Statement st = con.createStatement();
 ResultSet rs;
 rs = st.executeQuery("select * from login where userid='"
    + userid + "' and password='" + password + "'");
 if (rs.next()) {
 session.setAttribute("userid", userid);
 status=rs.getString("status");
session.setAttribute("status",status);
 }
 else
 {
 out.println("Invalid User");
    }
 if(status.equals("third party"))
response.sendRedirect("thirdparty.html");
 if(status.equals("admin"))
response.sendRedirect("admin.jsp");
if(status.equals("student"))
response.sendRedirect("student.jsp");
%>

    </body>
</html>
