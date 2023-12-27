package pack1;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;


@WebServlet(urlPatterns="/add")
public class Book extends HttpServlet{
	protected void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		try {
			RequestDispatcher rd = request.getRequestDispatcher("addbook.html");
			
			String url = "jdbc:postgresql://localhost:5433/demo";
	        String uname = "postgres";
	        String pass = "0000";
	        
	        Class.forName("org.postgresql.Driver"); // ->  OPTIONAL
	        Connection con = DriverManager.getConnection(url,uname,pass);
	        
	        Statement stmt = con.createStatement();
	        
	        String n , a;
	        int i , p;
	        
	        n = request.getParameter("bname");
	        a = request.getParameter("bauthor");
	        
	        i = Integer.parseInt(request.getParameter("bid"));
	        p = Integer.parseInt(request.getParameter("bprice"));
	        
	        
	        String query = "INSERT INTO book_19(bookid, bookname, bookprice, bookauthor) VALUES("+i+",'"+n+"',"+p+",'"+a+"')";
	        
            int r = stmt.executeUpdate(query);
	        
	        if(r > 0) {
	        	pw.print("<p>Book Added Successfully</p>");
	        	rd.include(request,response);
	        }else {
	        	pw.print("<p>Book Isn't Added</p>");
	        	rd.include(request, response);
	        }
	        
	        con.close();
	        
	        
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
