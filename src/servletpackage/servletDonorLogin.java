package servletpackage;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
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
import Beanclasses.RegistrationBean;
import coreclasses.DonorRegistration;
import coreclasses.Donor_Login;


@WebServlet("/servletDonorLogin")
public class servletDonorLogin extends HttpServlet {
	DonorRegistration user;
	
public servletDonorLogin()
{
	super();
	user=new DonorRegistration(DbConnection.getConnection());
	}
    
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		String username = request.getParameter("Email");
        String password = request.getParameter("Password");
        PrintWriter out = response.getWriter();
        //  out.print(username+""+password);
System.out.println(username);
        HttpSession session = request.getSession();
                    try {
                Statement st = DbConnection.getConnection().createStatement();
                ResultSet rs = st.executeQuery("select * from DonorRegistration where Email='" + username + "' && Password='" + password + "'");
                if (rs.next()) {
                     if(rs.getString("Email").equals(username) && rs.getString("Password").equals(password) )
                     {
                   session.setAttribute("type", "user");
                    session.setAttribute("username", username);
                     RegistrationBean ar=user.fetchByEmail(username);
        			RequestDispatcher rd=request.getRequestDispatcher("UserPanel.jsp?page=Donor_Registration.jsp");
        			request.setAttribute("mybean", ar);
        			
        			rd.forward(request, response);
                    
                         // PrintWriter out=response.getWriter();
                    //out.print("Welcome User");
//                    response.sendRedirect("index.jsp?page=ShopNow1.jsp");
                 //   response.sendRedirect("UserPanel.jsp?page=Donor_Registration.jsp");

                    }
                } else {
                    // PrintWriter out=response.getWriter();
                    out.print("invalid username and password ");
                     response.sendRedirect("UserPanel.jsp");
                }

            } catch (Exception e) {
                System.out.println(e.getMessage());
          
		
		
	
	}
		
	}}
