package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.LoginBean;



	public class Donor_Login {
		Connection con=null;
		
		
		public Donor_Login(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String Email,String Password)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into Donor_Login values(null,'"+Email+"','"+Password+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 
			 
		}
		
 public void update(int ID,String Email,String Password)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update  Donor_Login set Email='"+Email+"',Password='"+Password+"' where ID='"+ID+"'");
				 System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		public void delete(String ID)
		{

			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("delete from Donor_Login where ID='"+ID+"' ");
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} 
//fetch table 
		
		public ArrayList fetch()
		{
			ArrayList ar=new ArrayList();
		
			try {
				
				 Statement st=con.createStatement();
				 ResultSet rs=st.executeQuery("select * from Donor_Login");
				 while(rs.next())
				 {
						LoginBean bean=new LoginBean();
						bean.setID(rs.getInt("ID"));
						 bean.setEmail(rs.getString("Email"));
						 bean.setPassword(rs.getString("Password"));
						 
						
					
					 ar.add(bean);
					// bean.setGender(rs.getString("gender"));
				 }
				 
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			return ar;
			
		}
		
	//update	
		
	public LoginBean fetch(String ID)
	{ 
		LoginBean bean=new LoginBean();
		try {
			
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from News_and_events where ID='"+ID+"'");
			 while(rs.next())
			 {
				 bean.setID(rs.getInt("ID"));
				 bean.setEmail(rs.getString("Email"));
				 bean.setPassword(rs.getString("Password"));
				
				
				// bean.setGender(rs.getString("gender"));
			 }
			 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return bean;
		}
	public static void main(String[] args)
	{
			Donor_Login c=new Donor_Login(DbConnection.getConnection());
			c.insert("anhh", "mb");
		}

	}
		

	

		
		
