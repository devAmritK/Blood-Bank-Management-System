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
import Utility.DbConnection;
import Beanclasses.FindBean;
import coreclasses.FindaDonor;


@WebServlet("/servletfind")
public class servletfind extends HttpServlet {
FindaDonor user;
	
public servletfind()
{
	super();
	user=new FindaDonor(DbConnection.getConnection());
	}
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		boolean update=false;
		if(request.getParameter("process")!=null)
		{
			if(request.getParameter("process").equals("delete"))
			{
				String ID=request.getParameter("ID");
				user.delete(ID);
			}
			else
			{
				String ID=request.getParameter("ID");
				FindBean bean=user.fetch(ID);
				RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=UpdateFind.jsp");
				request.setAttribute("mybean", bean);
				rd.forward(request, response);
				update=true;
			}
		
		}
		if(!update)
		{
			ArrayList ar=user.fetch();
			RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=Find.jsp");
			request.setAttribute("mybean", ar);
			rd.forward(request, response);
			
		}
		
		
		
	}
		

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		PrintWriter out=response.getWriter();
		//out.print("Welcome To Piford");
		String State =request.getParameter("State");
		String City =request.getParameter("City");
		String Area =request.getParameter("Area");
		String BloodGroup =request.getParameter("BloodGroup");
		
		
		//String s=request.getParameter("name");
	//	System.out.println("'+ Name+'"  " '" + Email+"'  " + Subject+" " + Message+" );
		
		
		
		
			if(request.getParameter("process")!=null&&request.getParameter("process").equals("update"))
			{
			String id=request.getParameter("ID");
			int ID=Integer.parseInt(id);
			user.update(ID, State,City,Area,BloodGroup);
			}
		
			else
			{
			
			user.insert(State,City,Area,BloodGroup);
		
			}
		doGet(request, response);
	}
	

}