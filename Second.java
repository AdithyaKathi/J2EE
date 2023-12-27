package pack1;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Second extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		pw.println("<h3>Hello "+name+"</h3>");
	}
}
