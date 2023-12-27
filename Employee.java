package pack1;

import javax.servlet.*;
//import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(urlPatterns="/go")
public class Employee extends HttpServlet{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		String name , job ;
		int salary;
		name = request.getParameter("empname");
		job = request.getParameter("empjob");
		salary = Integer.parseInt(request.getParameter("empsalary"));
		
		pw.println("<center><h1>Employee Details</h1><br><table border='1'> <tr> <td>Name </td> <td>"+name+"</td> </tr>"
				+ " <tr> <td>Job</td> <td>"+job+"</td> </tr>"
				+ " <tr> <td>Monthly Salary</td> <td>"+salary+"</td> </tr>"
				+ " <tr> <td>Daily Salary</td> <td>"+(salary/30)+"</td> </tr>"
				+ " <tr> <td>Annual Salary</td> <td>"+(salary*12)+"</td> </tr>"
				+ "</table></center>");
	}
}