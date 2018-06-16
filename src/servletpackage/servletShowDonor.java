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
import Beanclasses.RegistrationBean;
import coreclasses.DonorRegistration;


@WebServlet("/servletShowDonor")
public class servletShowDonor extends HttpServlet {
DonorRegistration user;
	
public servletShowDonor()
{
	super();
	user=new DonorRegistration(DbConnection.getConnection());
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
				RegistrationBean bean=user.fetch(ID);
				RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=UpdateRegistration.jsp");
				request.setAttribute("mybean", bean);
				rd.forward(request, response);
				update=true;
			}
		
		}
		if(!update)
		{
			ArrayList ar=user.fetch();
			RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=Registration.jsp");
			request.setAttribute("mybean", ar);
			rd.forward(request, response);
			
		}
		
		
		
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		PrintWriter out=response.getWriter();
		//out.print("Welcome To Piford");

		String Name =request.getParameter("Name");
		String Email =request.getParameter("Email");
		String Password =request.getParameter("Password");
		String ConfirmPassword =request.getParameter("ConfirmPassword");
		String Gender =request.getParameter("Gender");
		String DOB =request.getParameter("DOB");
		String State =request.getParameter("State");
		String City =request.getParameter("City");
		String Address =request.getParameter("Address");
		//String PinCode =request.getParameter("PinCode");
		int PinCode=Integer.parseInt(request.getParameter("PinCode"));
		String BloodGroup =request.getParameter("BloodGroup");
		String Weight =request.getParameter("Weight");
		String ContactNumber =request.getParameter("ContactNumber");
		String PreviousBloodDonationDate =request.getParameter("PreviousBloodDonationDate");
		String Option_for_Donation =request.getParameter("Option_for_Donation");
		String PreferredReminderService =request.getParameter("PreferredReminderService");
		//String s=request.getParameter("name");
	//	System.out.println("'+ Name+'"  " '" + Email+"'  " + Subject+" " + Message+" );
		
		
		
		if(request.getParameter("process")!=null)
		{
			if(request.getParameter("process").equals("update"))
			{
			String id1=request.getParameter("ID");
			int ID=Integer.parseInt(id1);
			user.update(ID,Name,Email,Password,ConfirmPassword,Gender,DOB,State,City,Address,PinCode,BloodGroup, Weight,ContactNumber,PreviousBloodDonationDate,Option_for_Donation,PreferredReminderService);
		
			}
		}
		
			user.insert(Name,Email,Password,ConfirmPassword,Gender,DOB,State,City,Address,PinCode,BloodGroup, Weight,ContactNumber,PreviousBloodDonationDate,Option_for_Donation,PreferredReminderService);
		
		
		doGet(request, response);
	}
	

}
