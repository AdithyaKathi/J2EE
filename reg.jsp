<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Complaint System</h1>
<%
String  u , p , n , c , b , m;
int i = Integer.parseInt(request.getParameter("sid"));

u = request.getParameter("user");
p = request.getParameter("pwd");
n = request.getParameter("name");
c = request.getParameter("college");
b = request.getParameter("branch");
m = request.getParameter("mobile");

Class.forName("org.postgresql.Driver");

String url = "jdbc:postgresql://localhost:5433/demo";
String uname = "postgres";
String pass = "0000";
Connection con = DriverManager.getConnection(url,uname,pass);

Statement stmt = con.createStatement();

String query = "insert into student_clogin values(id,'"+u+"','"+p+"','"+n+"','"+c+"','"+b+"','"+m+"')";
int k = stmt.executeUpdate(query);
if(k>0){
	out.println("<p>Registration Successful....<a href='student.jsp'>Back To Home</a>");
}else
	out.println("<p>Registration Failed......Try Again.......<a href='student.jsp'>Back To Home</a>");
%>
</body>
</html>