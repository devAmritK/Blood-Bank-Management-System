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
import Beanclasses.ReferBean;
import coreclasses.Refer_a_Friend;


@WebServlet("/servletRefer")
public class servletRefer extends HttpServlet {
Refer_a_Friend user;
	
public servletRefer()
{
	super();
	user=new Refer_a_Friend(DbConnection.getConnection());
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
				ReferBean bean=user.fetch(ID);
				RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=UpdateRefer.jsp");
				request.setAttribute("mybean", bean);
				rd.forward(request, response);
				update=true;
			}
		
		}
		if(!update)
		{
			ArrayList ar=user.fetch();
			RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=Refer.jsp");
			request.setAttribute("mybean", ar);
			rd.forward(request, response);
			
		}
		
		
		
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		PrintWriter out=response.getWriter();
		//out.print("Welcome To Piford");

		String YourName =request.getParameter("YourName");
		String YourEmail =request.getParameter("YourEmail");
		String FriendName1 =request.getParameter("FriendName1");
		String FriendEmail1 =request.getParameter("FriendEmail1");
		String FriendName2 =request.getParameter("FriendName2");
		String FriendEmail2 =request.getParameter("FriendEmail2");
		String FriendName3 =request.getParameter("FriendName3");
		String FriendEmail3 =request.getParameter("FriendEmail3");
		
		//String s=request.getParameter("name");
	//	System.out.println("'+ Name+'"  " '" + Email+"'  " + Subject+" " + Message+" );
		
		
		if(request.getParameter("process")!=null&&request.getParameter("process").equals("update"))
		{
		String id=request.getParameter("ID");
		int ID=Integer.parseInt(id);
		user.update(ID,YourName,YourEmail,FriendName1,FriendEmail1,FriendName2,FriendEmail2,FriendName3,FriendEmail3);
		}
	
		else
		{
		
		user.insert(YourName,YourEmail,FriendName1,FriendEmail1,FriendName2,FriendEmail2,FriendName3,FriendEmail3);
	
		}
		
		
		
		doGet(request, response);
	}
	

}
