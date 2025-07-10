package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;


public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uname=req.getParameter("username");
		String pass=req.getParameter("password");
		
		User user=new User();
		user.setUsername(uname);
		user.setPassword(pass);
		
		if(user.isValid())
		{
			req.setAttribute("uname",uname);
			RequestDispatcher rd=req.getRequestDispatcher("view/welcome.jsp");
			rd.forward(req, resp);
		}
		else
		{
			req.setAttribute("errorMsg","Invalid username and password");
			RequestDispatcher rd=req.getRequestDispatcher("view/login.jsp");
			rd.forward(req, resp);
		}
	}

}
