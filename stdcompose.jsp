<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Complaint System</h1>

<%
if(session != null){
	out.print("<p>Welcome "+session.getAttribute("user").toString());
}
%>

<h1>Student Complaint Page</h1>
<form action="stdcomplaint.jsp">
<p>Enter Complaint   <textarea cols="50" rows="5" name="msg"></textarea></p>
<p><input type="submit" value="Send To Admin"></p>
</form>
<a href="studenthome.jsp">Home</a>
</body>
</html>