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
   if(session != null){
	   out.println("<p>Welcome "+session.getAttribute("user"));
   }
try{
	Class.forName("org.postgresql.Driver");
	String url = "jdbc:postgresql://localhost:5433/demo";
    String uname = "postgres";
    String pass = "0000";
    
    Connection con = DriverManager.getConnection(url,uname,pass);
    Statement stmt = con.createStatement();
    String qry = "select * from ainbox";
    ResultSet rs = stmt.executeQuery(qry);

    out.println("<table border='1'> <tr><td>id</td> <td>message</td> <td>username</td> </tr>");
    while(rs.next()){
    	out.println("<tr><td>"+rs.getInt(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td></tr>");
    }
    out.println("</table>");
    con.close();
}catch(Exception e){}
	%>
	<a href="adminhome.jsp">Home</a>
</body>
</html>