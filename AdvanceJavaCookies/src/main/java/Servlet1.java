

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
		
		String u=req.getParameter("uname");
		PrintWriter out=resp.getWriter();
		
		if(u.equals("admin"))
		{
			Cookie c=new Cookie("u1",u);
			resp.addCookie(c);
			RequestDispatcher f1=req.getRequestDispatcher("Servlet2");
			f1.forward(req, resp);
		}
		else
		{
			out.println("LoginFail!!!");
		}
	}

}
