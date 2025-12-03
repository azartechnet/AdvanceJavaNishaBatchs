

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		String r1=req.getParameter("empid");
		String r2=req.getParameter("empname");
		
		if(r1.equals("admin")&&r1.equals("admin"))
		{
			RequestDispatcher ds=req.getRequestDispatcher("sucess.html");
			ds.forward(req, resp);
		}
		else
		{
			RequestDispatcher ds=req.getRequestDispatcher("fail.html");
			ds.include(req, resp);
		}
	}

}
