package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8766153369545932598L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("password");
		
		HttpSession session = request.getSession();
		session.setAttribute("user", userName);
		session.setMaxInactiveInterval(30*60);
		response.sendRedirect("index.jsp");
	}
	
	private void checkLoginDetails(){
		//TODO check if user exists in DB and if pass matches
	}
	
}
