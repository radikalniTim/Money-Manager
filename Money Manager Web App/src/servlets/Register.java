package servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Person;
import database.ConnectionHelper;

/**
 * Servlet implementation class UserData_servlet
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Person newUser;
	private Connection connection;
	
	private String firstName;
	private String lastName;
	private String birthday;
	private String email;
	private String pass;
	private String repeatPass;
	private String income;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		connection = ConnectionHelper.getDatabaseConnection();
		response.setContentType("text/html");
		
		getRequestValues(request);
			   	   
		if (isAnyFieldEmpty()){				   
			
		}else{
			
			//if(..........CHECK FOR DUPLICATES IN DATABASE -> IF EVERYTHING IS OK CONTINUE
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
		
	    return;
	}
	
	public void getRequestValues(HttpServletRequest request){
		firstName = request.getParameter("firstname");
		lastName = request.getParameter("lastname");
		birthday = request.getParameter("birthday");
		email = request.getParameter("email");
		pass = request.getParameter("password");
		repeatPass = request.getParameter("repeatPassword");
		income = request.getParameter("income");
	}
	
	public boolean isAnyFieldEmpty(){
		if (firstName.isEmpty() || lastName.isEmpty() || birthday.isEmpty() || email.isEmpty() || pass.isEmpty() || repeatPass.isEmpty()){
			return true;
		}else{
			return false;
		}
	}
}
