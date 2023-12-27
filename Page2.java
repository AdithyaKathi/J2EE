package pack1;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Page2 extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		pw.println("<h1>Welcome To Tourism of India</h1>");
		pw.println("<hr><hr>");
		pw.println("<img src='tours/agra.jpeg'>");
		pw.println("<img src='tours/tirumala.jpeg'>");
	}
}
