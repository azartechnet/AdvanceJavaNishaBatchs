

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
		
		String t1=req.getParameter("empid");
		
		String t2=req.getParameter("empname");
		
		
		if(t1.equals("admin")&&t2.equals("admin@123"))
		{
			//out.println("LoginSucess!!!");
			RequestDispatcher ds=req.getRequestDispatcher("Sucess.html");
			ds.forward(req, resp);
		}
		else
		{
			RequestDispatcher ds=req.getRequestDispatcher("Fail.html");
			ds.include(req, resp);
			//out.println("LoginFail!!!!");
		}
		
		//out.println("Your empid is::"+t1+"Your empname is::"+t2);
	}

}
