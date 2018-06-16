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
import Beanclasses.DonorsBean;
import coreclasses.PreviousDonors;


@WebServlet("/servletDonor")
public class servletDonor extends HttpServlet {
PreviousDonors user;
	
public servletDonor()
{
	super();
	user=new PreviousDonors(DbConnection.getConnection());
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
				DonorsBean bean=user.fetch(ID);
				RequestDispatcher rd=request.getRequestDispatcher("index2.jsp?page=UpdateDonors.jsp");
				request.setAttribute("mybean", bean);
				rd.forward(request, response);
				update=true;
			}
		
		}
		if(!update)
		{
			ArrayList ar=user.fetch();
			RequestDispatcher rd=request.getRequestDispatcher("index2.jsp?page=PreviousDonors.jsp");
			request.setAttribute("mybean", ar);
			rd.forward(request, response);
			
		}
		
		
		
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		PrintWriter out=response.getWriter();
		//out.print("Welcome To Piford");

		String Name=request.getParameter("Name");
		String Email=request.getParameter("Email");
		String BloodGroup=request.getParameter("BloodGroup");
		String PreviousBloodDonationDate=request.getParameter("PreviousBloodDonationDate");
		String CurrentWeight=request.getParameter("CurrentWeight");
		String QuantityOfBlood=request.getParameter("QuantityOfBlood");
		String AnyDisease=request.getParameter("AnyDisease");
		String HemoGlobin=request.getParameter("HemoGlobin");
		String ContactNumber=request.getParameter("ContactNumber");
		
		
		//String s=request.getParameter("name");
	//	System.out.println("'+ Name+'"   " '+ Email+"'  " + Subject+" " + Message+" );
		
		
		
	//	if(request.getParameter("process")!=null)
	//	{
		if(request.getParameter("process")!=null&&request.getParameter("process").equals("update"))
		{
		String id=request.getParameter("ID");
		int ID=Integer.parseInt(id);
		user.update(ID,Name,Email,BloodGroup,PreviousBloodDonationDate,CurrentWeight,QuantityOfBlood,AnyDisease,HemoGlobin,ContactNumber);
		}
	
		else
		{
		
		user.insert(Name,Email,BloodGroup,PreviousBloodDonationDate,CurrentWeight,QuantityOfBlood,AnyDisease,HemoGlobin,ContactNumber);
	
		}
		
		
	doGet(request, response); 
	}
	

}
