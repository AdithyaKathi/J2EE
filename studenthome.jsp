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
	out.print("<p>Welcome...."+session.getAttribute("user").toString());
}
%>
<a href="stdinbox.jsp">Inbox</a><br>
<a href="stdcompose.jsp">Compose</a><br>
<a href="stdlogout">Logout</a>

</body>
</html>