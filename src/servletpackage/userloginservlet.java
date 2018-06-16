package servletpackage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coreclasses.Donor_Login;
import Utility.DbConnection;


@WebServlet("/userloginservlet")
public class userloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Donor_Login u=null;
   
    public userloginservlet() {
        super();
        u=new Donor_Login(DbConnection.getConnection());
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	//	if(request.getParameter("process").equals("user"))
	//	{
		
		 ArrayList ar=u.fetch();
	        //System.out.println("fetch"+d.fetch());
	        RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp");
	        request.setAttribute("bean",ar);
	      //  request.setAttribute("process","user");
	        rd.forward(request, response);
	//	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
