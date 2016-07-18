package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		   String personFirstName = request.getParameter("firstname");
	       String personLastName = request.getParameter("lastname");
	       String birthday = request.getParameter("birthday");
	       String proffesion = request.getParameter("proffesion");        
	       double monthIncome = Double.parseDouble(request.getParameter("monthIncome"));
	       	       
	       
	       Person userData = new Person (personFirstName, personLastName, birthday, proffesion);
	       Money moneyTraffic = new Money (monthIncome);
	       
	       request.setAttribute("firstname", userData.getFirstName());
	       request.setAttribute("lastname", userData.getLastName());
	       request.setAttribute("proffesion", userData.getProffesion());
	       request.setAttribute("monthIncome", moneyTraffic.getMonthIncome());
	       
	       getServletContext().getRequestDispatcher("/userdata.jsp").forward(request,  response);
	       return;
	}


}
