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
	out.print("<p>Welcome...."+session.getAttribute("user").toString());
}
try{
	String url = "jdbc:postgresql://localhost:5433/demo";
    String uname = "postgres";
    String pass = "0000";
    
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(url,uname,pass);
    
    Statement stmt = con.createStatement();
    
    String query = "select * from student_clogin";
    
    ResultSet rs = stmt.executeQuery(query);
    
    out.println("<table border='1'><tr> <td>id</td> <td>username</td> <td>password</td> <td>name</td> <td>college</td> <td>branch</td> <td>mobile no</td> </tr>");
    
    while(rs.next()){
    	out.println("<tr> <td>"+rs.getInt(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td> <td>"+rs.getString(6)+"</td> <td>"+rs.getString(7)+"</td></tr>");
    }
    out.print("</table>");
    con.close();
    
}catch(Exception e){}
%>

<a href="adminhome.jsp">Home</a>
</body>
</html>