package pack1;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(urlPatterns="/page1",initParams = @WebInitParam(name="city",value="Bharat"))
public class Greeting extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		ServletConfig myConfig = getServletConfig();
		String city = myConfig.getInitParameter("city");
		
		pw.println("Howdy "+city);
	}
}
