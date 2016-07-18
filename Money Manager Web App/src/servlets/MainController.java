package servlets;


import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;



/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String button;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		button = request.getParameter("button");
				
		switch(button){
			case("register"):
				getServletContext().getRequestDispatcher("/register.jsp").forward(request,  response);
				break;
			case("cancel"):
				getServletContext().getRequestDispatcher("/goodby.jsp").forward(request,  response);
				break;
			case("submit"):
				getServletContext().getRequestDispatcher("/UserData").forward(request,  response);
				break;
			case("login"):
				getServletContext().getRequestDispatcher("/Login").forward(request,  response);
				break;
			case("logout"):
				HttpSession session = request.getSession();
				session.invalidate();
				getServletContext().getRequestDispatcher("/goodby.jsp").forward(request,  response);
				break;
			default:
				getServletContext().getRequestDispatcher("/login.jsp").forward(request,  response);
				break;
		}	

	}
		
}   
       
     
       
   	
  
			


        

       



