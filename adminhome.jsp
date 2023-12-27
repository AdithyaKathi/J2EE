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
    if(session != null)
    	out.println("<p>Welcome "+session.getAttribute("user").toString());
 %>
    	
    	<a href="admininbox.jsp">Inbox</a><br>
    	<a href="admincompose.jsp">Compose</a><br>
    	<a href="viewstds.jsp">View Students</a><br>
    	<a href="adminlogout.jsp">Logout</a><br>
    <%
 
    if(session == null)
    	out.println("Login First");  %>
    	
    	<a href="admin.jsp">Re - Login</a>
</body>
</html>