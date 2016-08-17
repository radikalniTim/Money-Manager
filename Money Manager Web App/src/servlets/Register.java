package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Person;

/**
 * Servlet implementation class UserData_servlet
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Person newUser;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
				
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String repeatPass = request.getParameter("repeatPassword");
		String income = request.getParameter("income");			   
		
		HttpSession session = request.getSession();
		session.setAttribute("email", email);
		session.setMaxInactiveInterval(30*60);
		
		request.setAttribute("firstname", firstName);
		request.setAttribute("lastname", lastName);
		request.setAttribute("birthday", birthday);
		request.setAttribute("password", pass);
		request.setAttribute("repeatPassword", repeatPass);
		request.setAttribute("income", income);
			   
			   
			   
		if (firstName.isEmpty() || lastName.isEmpty() || birthday.isEmpty() || email.isEmpty() || pass.isEmpty() || repeatPass.isEmpty()){				   
			if (firstName.isEmpty()) request.setAttribute("errorfirstname", "Please enter Your first name");				   
			if (lastName.isEmpty()) request.setAttribute("errorlastname", "Please enter Your last name");					   
			if (birthday.isEmpty()) request.setAttribute("errorbirthday", "Please enter Your date of birth");
			if (email.isEmpty()) request.setAttribute("erroremail", "Please enter Your E-mail address");
			if (pass.isEmpty()) request.setAttribute("errorpassword", "Please enter Your password");
			if (repeatPass.isEmpty() || !repeatPass.equals(pass)) request.setAttribute("errorrptpass", "Please repeat your password");
			if (income.isEmpty()) request.setAttribute("errorincome", "Please enter Your income");				   

			request.getRequestDispatcher("register.jsp").forward(request, response);
		}			   
		else{
			//if(..........CHECK FOR DUPLICATES IN DATABASE -> IF EVERYTHING IS OK CONTINUE
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
		
	    return;
	}
}
