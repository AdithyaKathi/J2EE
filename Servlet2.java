package pack1;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Servlet2 extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		ServletConfig myConfig = getServletConfig();
		String college = myConfig.getInitParameter("college");
		pw.println("College Is "+college);
	}
}
