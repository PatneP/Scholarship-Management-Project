<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<link href="style.css" rel="stylesheet">
        
<%

   String result;
    String fromh=request.getParameter("from");
    String toh=request.getParameter("to");
    String sub=request.getParameter("subject");
    String msg=request.getParameter("message");
   // Get system properties object
        Properties props = System.getProperties();

   // Setup mail server
        String host = "smtp.gmail.com";
        String from = fromh;
        String pass = "iloveudadgmail";
        String to = toh;
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");     //try 465, 25, 587
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.timeout", "25000");

   // Get the default Session object.
        Session mailsession = Session.getDefaultInstance(props);

   try{
      // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailsession);
       
        message.setFrom(new InternetAddress(from));   

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

        // Set Subject: header field
        message.setSubject(sub);
       
        // Now set the actual message
        message.setText(msg);
      //  if you want to send HTML page use  setContent(msg, "text/html");
      // message.setContent("<h1>This is actual message</h1>", "text/html" );
        // Send message
        Transport transport = mailsession.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        result = " Your Query Sent successfully....";
    }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send Query.... Try Again Later..";
    }
%>
<!DOCTYPE html>
<html>
<head></head>
<title>Send Queries</title>
</head>
<body>
    
        <div class="imgcontainer">
		<img src="coep.png"  width="800" height="130" > 
		</div>
     <div align="right">
        <span><a href="thirdparty.jsp"><img src="back1.png"  border=" width=0em " height="50" width="80" title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active" href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
<center>
<h1>Sending Query.. </h1>
</center>
<p align="center">
<%
   out.println("Result: " + result + "\n");
%>
</p>
                </div>
</body>
</html>
