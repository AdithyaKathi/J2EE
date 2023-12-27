package pack1;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Validate extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		String myUser , myPwd;
		myUser = request.getParameter("user");
		myPwd = request.getParameter("password");
		
		RequestDispatcher rd1 = request.getRequestDispatcher("login.html");
		RequestDispatcher rd2 = request.getRequestDispatcher("myhome");
		
		if(myUser.equals("admin") && myPwd.equals("9999")) {
			rd2.forward(request, response);
		}else {
			pw.println("<h4 style='color:red'>Invalid Login Details</h4>");
			rd1.include(request, response);
		}
	}
}
