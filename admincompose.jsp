<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
if(session != null){
	out.print("Welcome "+session.getAttribute("user").toString());
}
%>
<h1>Admin Compose Page</h1>
<form action="admincompose2.jsp">

<p>Enter Student Id <input type="text" name="id">
<p>Enter Student Username <input type="text" value="user"></p>
<p>Enter Reply <textarea cols="50"  rows="5" name="rmsg"></textarea></p>
<p><input type="submit" value="Send To Student"></p>
</form>
<a href="adminhome.jsp">Home</a>
</body>
</html>