<%-- 
    Document   : insertmultiple
    Created on : Apr 12, 2018, 12:47:49 PM
    Author     : Panu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
String languages="";
String lang[]=request.getParameterValues("lang");
for(int i=0;i<lang.length;i++){
    languages+=lang[i]+" ";
}

        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship", "root", "pranali123");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into try(language) values('"+languages+"')");
        out.println("Data is successfully inserted into database.");
        }
        catch(Exception e){
        System.out.println(e);
        }
        %>