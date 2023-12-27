<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Complaint System</h1>
<h1>Student Registration</h1>

<form action="reg.jsp">
<p>Enter Student Id  <input type="text" name="sid"></p><br>
<p>Enter Username    <input type="text" name="user"></p><br>
<p>Enter Password    <input type="text" name="pwd"></p><br>
<p>Enter Name        <input type="text" name="name"></p><br>
<p>Enter College     <input type="text" name="college"></p><br>
<p>Enter Branch      <input type="text" name="branch"></p><br>
<p>Enter Mobile No   <input type="text" name="mobile"></p><br>
<input type="submit" value="Register">
</form>

<a href="index.jsp">Home</a>
</body>
</html>