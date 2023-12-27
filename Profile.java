package com.sessions;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns="/profile")
public class Profile extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		RequestDispatcher rd1 = request.getRequestDispatcher("index.html");
		
		HttpSession mySession = request.getSession(false);
		
		if(mySession != null) {
			pw.println("<h1 style='color:blue'>Welcome To Profile Page</h1>");
			String u = mySession.getAttribute("user1").toString();
			pw.println("<p>Hello....."+u+"</p><br>");
			pw.println("<p><a href='logout'>Logout</p>");
		}else {
			pw.println("<p style='color:red'>Please Login First</p>");
			rd1.include(request, response);
		}
		
	}
}
