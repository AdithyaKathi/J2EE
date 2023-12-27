package pack1;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(urlPatterns="/Add")
public class Add extends HttpServlet{
	protected void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		int one , two;
		one = Integer.parseInt(request.getParameter("one"));
		two = Integer.parseInt(request.getParameter("two"));
		
		
		pw.println("<p>Result = "+(one+two));
	}
}
