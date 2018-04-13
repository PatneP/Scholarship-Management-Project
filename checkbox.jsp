<%-- 
    Document   : checkbox
    Created on : Apr 12, 2018, 12:46:23 PM
    Author     : Panu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<form method="post" action="insertmultiple.jsp" >
Select Languages:<br>
<input type="checkbox" name="lang" value="C/C++,">C/C++<br>
<input type="checkbox" name="lang" value="JAVA,">Java<br>
<input type="checkbox" name="lang" value="C#,">C#<br>
<input type="checkbox" name="lang" value="PERL,">PERL<br>
<input type="checkbox" name="lang" value="PYTHON,">PYTHON<br>
<input type="submit" value="Submit">
</form>
</body>
</html>