

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		String e1=req.getParameter("email");
		String c1=req.getParameter("college");
		
		if(e1.equals("admin@gmail.com"))
		{
			HttpSession sess=req.getSession();
			
			sess.setAttribute("k1",e1);
			sess.setAttribute("k2",c1);
			
			RequestDispatcher rd=req.getRequestDispatcher("Servlet2");
			rd.forward(req, resp);
		}
		else
		{
			out.println("LoginFail!!!");
		}
	}

}
