package com.sessions;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;


@WebServlet(urlPatterns="/logout")
public class Logout extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		RequestDispatcher rd1 = request.getRequestDispatcher("index.html");
		
		HttpSession mySession = request.getSession(false);
		
		if(mySession != null) {
			mySession.invalidate();
		}else {
			pw.println("<p style='color:red'>Please Login First</p>");
		}
		
		rd1.include(request, response);
	}
}
