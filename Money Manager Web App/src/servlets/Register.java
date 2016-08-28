package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.User;
import database.ConnectionHelper;

/**
 * Servlet implementation class UserData_servlet
 */
@WebServlet("/Register")
public class Register extends HttpServlet implements FormInputInterface{
	private static final long serialVersionUID = 1L;
	private User newUser;
	private Connection connection;
	
	private String firstName;
	private String lastName;
	private String birthday;
	private String email;
	private String pass;
	private String repeatPass;
	private String income;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		initDatabaseConnection();
		response.setContentType("text/html");
		
		getInputValues(request);
			   	   
		if (isAnyFieldEmpty()){				   
		    Object errorMsg = "Please fill all fields.";
		    request.setAttribute("errorMsg", errorMsg);
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}else{
			if(checkIfEmailExists()){
			    Object errorMsg = "User with this email already exists.";
			    request.setAttribute("errorMsg", errorMsg);
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}else{
				//TODO
				request.getRequestDispatcher("welcome.jsp").forward(request, response);
			}
		}
		
	    return;
	}
	
	
	@Override
	public void initDatabaseConnection() {
		connection = ConnectionHelper.getDatabaseConnection();		
	}

	@Override
	public void getInputValues(HttpServletRequest request) {
		firstName = request.getParameter("firstname");
		lastName = request.getParameter("lastname");
		birthday = request.getParameter("birthday");
		email = request.getParameter("email");
		pass = request.getParameter("password");
		repeatPass = request.getParameter("repeatPassword");
		income = request.getParameter("income");		
	}

	@Override
	public boolean isAnyFieldEmpty() {
		if (firstName.isEmpty() || lastName.isEmpty() || birthday.isEmpty() || email.isEmpty() || pass.isEmpty() || repeatPass.isEmpty()){
			return true;
		}else{
			return false;
		}		
	}
	
	public boolean checkIfEmailExists(){
		final String query = "SELECT * from users WHERE email = ?";
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, email);

			final ResultSet resultSet = ps.executeQuery();
			if(resultSet.next()) {
			    return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			System.out.print("Error on checkIfEmailExists:" + e.getMessage());
			e.printStackTrace();
		}
		return false;
	}
}
