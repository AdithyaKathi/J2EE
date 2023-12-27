<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Complaint System</h1>

<%
String  u , p;
u = request.getParameter("user");
p = request.getParameter("pw");


Class.forName("org.postgresql.Driver");

String url = "jdbc:postgresql://localhost:5433/demo";
String uname = "postgres";
String pass = "0000";
try{
Connection con = DriverManager.getConnection(url,uname,pass);

Statement stmt = con.createStatement();

String query = "select * from admin_clogin where username = '"+u+"' and pwd='"+p+"'";

ResultSet rs = stmt.executeQuery(query);

if(rs.next()){
	session.setAttribute("user",u);
	response.sendRedirect("adminhome.jsp");
}else{
	out.println("invalid login");
	out.println("<a href='admin.jsp'>Re - Login</a>");
}
con.close();
}catch(Exception e){}
%>
</body>
</html>