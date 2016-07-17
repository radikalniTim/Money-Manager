package servlets_pckg;


import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;



/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String button = null;
		
		button = request.getParameter("button");
		
		if (button==null){
			getServletContext().getRequestDispatcher("/LogIn_scr.jsp").forward(request,  response);
			return;
		}		
		
		if (button.equals("register")){
			getServletContext().getRequestDispatcher("/Register_scr.jsp").forward(request,  response);
			return;	
		}
		
		if (button.equals("submit") && request.getParameter("firstname")!=null && request.getParameter("lastname")!=null){
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserData_servlet");
			dispatcher.include(request, response);
			return;
		}
			
			
		if (button.equals("cancel")){
			getServletContext().getRequestDispatcher("/goodBy.jsp").forward(request,  response);
			return;
		}
			
	     

	     }
		

	}   
       
     
       
   	
  
			


        

       



