package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utility.DbConnection;
import Beanclasses.LoginBean;
import coreclasses.Donor_Login;


@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public userlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String Email=request.getParameter("Email");
		String Password=request.getParameter("Password");
		
		if(Email.equals("Email")&&Password.equals("Password"))
		{
			session.setAttribute("type", "user");
			response.sendRedirect("UserPanel.jsp");
		}
		else
		{
			out.println("Invalid username and password");
		}
		
	}

}
