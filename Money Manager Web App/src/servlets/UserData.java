package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Money;
import beans.Person;

/**
 * Servlet implementation class UserData_servlet
 */
@WebServlet("/UserData")
public class UserData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Person newUser;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
			   String firstName = request.getParameter("firstname");
			   String lastName = request.getParameter("lastname");
			   String birthday = request.getParameter("birthday");
			   String userName = request.getParameter("username");
			   String pass = request.getParameter("password");
			   String profession = request.getParameter("profession");
			   String income = request.getParameter("income");
			   String payDay = request.getParameter("paymentDate");
			   String payType = request.getParameter("paymentType");
			   
			   //using session for easier passing of information back to userdata.jsp in case that some of entry fields is/are empty
			   HttpSession session = request.getSession();
			   session.setAttribute("firstname", firstName);
			   session.setAttribute("lastname", lastName);
			   session.setAttribute("birthday", birthday);
			   session.setAttribute("username", userName);
			   session.setAttribute("password", pass);
			   session.setAttribute("profession", profession);
			   session.setAttribute("income", income);
			   session.setAttribute("paymentDate", payDay);
			   session.setAttribute("paymentType", payType);
			   session.setMaxInactiveInterval(30*60);			   
			   
			   if (firstName.isEmpty() || lastName.isEmpty() || birthday.isEmpty() || userName.isEmpty() || pass.isEmpty() || profession.isEmpty()
					   || income.isEmpty()){
				 // send data back to register.jsp -> jsp is checking if values (firstname, lastname, etc.) are empty and gives a warning to user
				   request.getRequestDispatcher("register.jsp").forward(request, response);
			   }
			   else{
				 // TO-DO check for already existing entries in database
				   request.getRequestDispatcher("userdata.jsp").forward(request, response);
				}
	       return;
	}
}
