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
String u , msg;
u = session.getAttribute("user").toString();
msg = request.getParameter("msg");

Class.forName("org.postgresql.Driver");
String url = "jdbc:postgresql://localhost:5433/demo";
String uname = "postgres";
String pass = "0000";

Connection con = DriverManager.getConnection(url,uname,pass);
Statement stmt = con.createStatement();

String query = "insert into ainbox values(id,'"+msg+"','"+u+"')";

int k = stmt.executeUpdate(query);
con.commit();

if(k > 0){
	out.println("<p>Complaint Raised Successfully <a href='studenthome.jsp'>Back To Home</a>");
}else{
	out.println("<p>Failed Try Again.....<a href='student.jsp'>Back To Home</a>");
}

%>
</body>
</html>