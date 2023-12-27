package pack1;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Third extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		int num1 = Integer.parseInt(request.getParameter("n1"));
		int num2 = Integer.parseInt(request.getParameter("n2"));
		
		
		pw.println("<h3>Addition = "+(num1+num2)+"</h3>");
	}
}
