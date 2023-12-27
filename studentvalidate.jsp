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

<%
String u , p;
u = request.getParameter("user");
p = request.getParameter("pwd");

Class.forName("org.postgresql.Driver");

String url = "jdbc:postgresql://localhost:5433/demo";
String uname = "postgres";
String pass = "0000";

Connection con = DriverManager.getConnection(url,uname,pass);

Statement stmt = con.createStatement();
String query = "select * from student_clogin where username = '"+u+"' and pwd = '"+p+"'";
ResultSet rs = stmt.executeQuery(query);

if(rs.next()){
	session.setAttribute("user",u);
	response.sendRedirect("studenthome.jsp");
}else{
	out.print("<p>Invalid Login</p>");
	out.print("<a href='student.jsp'>Relogin</a>");
}
%>
</body>
</html>