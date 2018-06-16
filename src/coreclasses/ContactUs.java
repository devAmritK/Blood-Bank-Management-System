package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.ContactBean;

public class ContactUs {
		Connection con=null;
		
		
		public ContactUs(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String Name,String Email,String Subject,String Message)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into ContactUs values(null,'"+Name+"','"+Email+"','"+Subject+"','"+Message+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 		 
		}
		
 public void update(int ID,String Name,String Email,String Subject,String Message)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update  ContactUs set Name='"+Name+"',Email='"+Email+"',Subject='"+Subject+"',Message='"+Message+"' where ID='"+ID+"'");
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
				 st.executeUpdate("delete from ContactUs where ID='"+ID+"' ");
				
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
				 ResultSet rs=st.executeQuery("select * from ContactUs");
				 while(rs.next())
				 {
					 ContactBean bean=new ContactBean();	
					 bean.setID(rs.getInt("ID"));
					 bean.setName(rs.getString("Name"));
					 bean.setEmail(rs.getString("Email"));
					 bean.setSubject(rs.getString("Subject"));
					 bean.setMessage(rs.getString("Message"));
					
					 ar.add(bean);
					// bean.setGender(rs.getString("gender"));
				 }
				 
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			return ar;
			
		}
		
	//update	
		
	public ContactBean fetch(String ID)
	{ 
		ContactBean bean=new ContactBean();
		try {
			
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from ContactUs where ID ='"+ID+"'");
			 while(rs.next())
			 {
				 bean.setID(rs.getInt("ID"));
				 bean.setName(rs.getString("Name"));
				 bean.setEmail(rs.getString("Email"));
				 bean.setSubject(rs.getString("Subject"));
				 bean.setMessage(rs.getString("Message"));
				
				// bean.setGender(rs.getString("gender"));
			 }
			 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return bean;
		}
		
		public static void main(String[] args)
	{
			ContactUs c=new ContactUs(DbConnection.getConnection());
			c.insert("anhh", "mb", "mmn", "hehhhaaaa");
			
		}

	} 

