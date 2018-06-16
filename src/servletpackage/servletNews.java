package servletpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import java.util.List;
import java.io.File;
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
import Beanclasses.NewsBean;
import coreclasses.News_and_events;


@WebServlet("/servletNews")
public class servletNews extends HttpServlet {
News_and_events user;
String ID;
 String Description,EventName,EventPicture,EventDate;
	
public servletNews()
{
	super();
	user=new News_and_events(DbConnection.getConnection());
	//System.out.println(MyConnection.getConnection());
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
				NewsBean bean=user.fetch(ID);
				RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=UpdateNews.jsp");
				request.setAttribute("mybean", bean);
				rd.forward(request, response);
				update=true;
			}
		
		}
		if(!update)
		{
			ArrayList ar=user.fetch();
			RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=News.jsp");
			request.setAttribute("mybean", ar);
			rd.forward(request, response);
			
		}
		
		
		
	
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			if(ServletFileUpload.isMultipartContent(request))
			{
				ServletFileUpload fup=new ServletFileUpload(new DiskFileItemFactory());
				List<FileItem> data=fup.parseRequest(request);
				Description=data.get(0).getString();
			     EventName = data.get(1).getString();
			     FileItem img=data.get(2);
					String imageName=img.getName();
				
				EventDate=data.get(3).getString();
				
				
			
				EventPicture = imageName.substring(imageName.lastIndexOf("."),imageName.length());
//			if(request.getParameter("process").equals("update"))
//			{
//				String id=request.getParameter("id");
//				u.update(id,name, gender, city, dob, email, password);
//			}
//			else
			{
				System.out.println("Servlet test data"+Description+" "+EventName+"  "+EventPicture+"  "+EventDate+" ");
				user.insert(Description,EventName,EventPicture,EventDate);
				//System.out.println(MyConnection.getConnection());
			}
			img.write(new File(getServletContext().getRealPath("/")+"/images"+ID+EventPicture));
			 
			doGet(request, response);
			
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			
		}
		
	}

}
	
	
/*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		PrintWriter out=response.getWriter();
		//out.print("Welcome To Piford");
		String Description =request.getParameter("Description");
		String EventName =request.getParameter("EventName");
		String EventPicture =request.getParameter("EventPicture");
		String EventDate =request.getParameter("EventDate");
		
		//String s=request.getParameter("name");
	//	System.out.println("'+ Name+'"  " '" + Email+"'  " + Subject+" " + Message+" );
		
		
		
	/*	if(request.getParameter("process")!=null)
	//{
			if(request.getParameter("process").equals("update"))
			{
			String id1=request.getParameter("ID");
			int ID=Integer.parseInt(id1);
			user.update(ID,Description ,	EventName,	EventPicture,	EventDate);

		//	}
		} 
		

		if(request.getParameter("process")!=null&&request.getParameter("process").equals("update"))
		{
		String id=request.getParameter("ID");
		int ID=Integer.parseInt(id);
		user.update(ID, Description,EventName,EventPicture,EventDate);
		}
	
		else
		{
		
		user.insert(Description,EventName,EventPicture,EventDate);
	
		}
		
	//	{
	//		user.insert(Description ,	EventName,	EventPicture,	EventDate);
	//	}
		
		doGet(request, response);
	}
	

}
*/