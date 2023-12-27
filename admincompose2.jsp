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
<h1> Complaint System </h1>
<%
if(session != null){
	out.print("<p>Welcome....."+session.getAttribute("user").toString());
}

String u , msg;
u = request.getParameter("user");
msg = request.getParameter("rmsg");

Class.forName("org.postgresql.Driver");

String url = "jdbc:postgresql://localhost:5433/demo";
String uname = "postgres";
String pass = "0000";

Connection con = DriverManager.getConnection(url,uname,pass);

Statement stmt = con.createStatement();

String query = "insert into sinbox values(id,'"+msg+"','"+u+"')";
int k = stmt.executeUpdate(query);
con.commit();

if(k > 0){
	out.println("<p>Message Sent Successfully <a href='adminhome.jsp'>Back To Home</a>");
	
}else{
	out.println("<p>Failed....<a href='adminhome.jsp'>Back To Home</a></p>");
}
%>
</body>
</html>