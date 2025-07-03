

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet("/LoggingFilter")
public class LoggingFilter implements Filter {
	
	public void init(FilterConfig config)
	{
		System.out.println("LoggingFilter initialized");
	}
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain) throws IOException, ServletException
	{
		System.out.println("Request received at::"+new java.util.Date());
		
		//pass the request along the filter chain
		
		chain.doFilter(request, response);
		
		System.out.println("Response sent at::"+new java.util.Date());
	}
	public void destroy()
	{
		System.out.println("loggingFilter destroyed..");
	}
	
	
	

}
