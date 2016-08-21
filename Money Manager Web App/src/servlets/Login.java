package servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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

import components.EncryptionHelper;
import database.ConnectionHelper;

@WebServlet("/Login")
public class Login extends HttpServlet{

	private static final long serialVersionUID = -8766153369545932598L;
	
	private Connection connection;
	private EncryptionHelper encryptionHelper;
	private String email;
	private String password;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		encryptionHelper = new EncryptionHelper();
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		if(checkLoginDetails()){
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			session.setMaxInactiveInterval(30*60);
			response.sendRedirect("home.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}
	}
	
	private boolean checkLoginDetails(){
		connection = ConnectionHelper.getDatabaseConnection();
		final String query = "SELECT * from users WHERE email = ? AND password = ?";
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, encryptionHelper.encrtypString(password));

			final ResultSet resultSet = ps.executeQuery();
			if(resultSet.next()) {
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
}
