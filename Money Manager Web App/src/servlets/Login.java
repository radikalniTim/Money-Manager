package servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.Date;
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
import components.EncryptionHelper;
import database.ConnectionHelper;

@WebServlet("/Login")
public class Login extends HttpServlet implements FormInputInterface{

	private static final long serialVersionUID = -8766153369545932598L;
	
	private Connection connection;
	private EncryptionHelper encryptionHelper;
	private String email;
	private String password;
	private User loggedUser;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		initDatabaseConnection();
		encryptionHelper = new EncryptionHelper();
		getInputValues(request);
		
		if(checkLoginDetails() && !isAnyFieldEmpty()){
			HttpSession session = request.getSession();
			session.setAttribute("email", loggedUser.getEmail());
			session.setAttribute("role", loggedUser.getRole());
			session.setAttribute("fullname", loggedUser.getFullName());
			session.setMaxInactiveInterval(30*60);
			response.sendRedirect("home.jsp");
		}else{
		    Object errorMsg = "Problem loging in. Please enter existing email and password.";
		    request.setAttribute("errorMsg", errorMsg);
		    request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	
	private boolean checkLoginDetails(){
		final String query = "SELECT * from users JOIN users_roles ON users.role_id = users_roles.idusers_roles WHERE email = ? AND password = ?";
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, encryptionHelper.encrtypString(password));

			final ResultSet resultSet = ps.executeQuery();
			if(resultSet.next()) {
				loggedUser = new User();
				loggedUser.setId(resultSet.getInt("idusers"));
				loggedUser.setBirthDay(resultSet.getDate("birthDay"));
				loggedUser.setEmail(resultSet.getString("email"));
				loggedUser.setFirstName(resultSet.getString("firstName"));
				loggedUser.setLastName(resultSet.getString("lastName"));
				loggedUser.setRole(resultSet.getString("name"));
			    return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			System.out.print("Error on checkLoginDetails:" + e.getMessage());
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public void initDatabaseConnection() {
		connection = ConnectionHelper.getDatabaseConnection();		
	}

	@Override
	public void getInputValues(HttpServletRequest request) {
		email = request.getParameter("email");
		password = request.getParameter("password");		
	}

	@Override
	public boolean isAnyFieldEmpty() {
		if (email.isEmpty() || password.isEmpty()){
			return true;
		}else{
			return false;
		}	
	}

}
