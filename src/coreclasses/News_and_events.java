package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.NewsBean;



	public class News_and_events {
		Connection con=null;
		
		
		public News_and_events(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String Description,String EventName,String EventPicture,String EventDate)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into News_and_events values(null,'"+Description+"','"+EventName+"','"+EventPicture+"','"+EventDate+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 
			 
		}
		
 public void update(int ID,String Description,String EventName,String EventPicture,String EventDate)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update  News_and_events set Description='"+Description+"',EventName='"+EventName+"',EventPicture='"+EventPicture+"',EventDate='"+EventDate+"' where ID='"+ID+"'");
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
				 st.executeUpdate("delete from News_and_events where ID='"+ID+"' ");
				
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
				 ResultSet rs=st.executeQuery("select * from News_and_events");
				 while(rs.next())
				 {
						NewsBean bean=new NewsBean();
						bean.setID(rs.getInt("ID"));
						 bean.setDescription(rs.getString("Description"));
						 bean.setEventName(rs.getString("EventName"));
						 bean.setEventPicture(rs.getString("EventPicture"));
						 bean.setEventDate(rs.getString("EventDate"));
						
					
					 ar.add(bean);
					// bean.setGender(rs.getString("gender"));
				 }
				 
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			return ar;
			
		}
		
	//update	
		
	public NewsBean fetch(String ID)
	{ 
		NewsBean bean=new NewsBean();
		try {
			
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from News_and_events where ID='"+ID+"'");
			 while(rs.next())
			 {
				 bean.setID(rs.getInt("ID"));
				 bean.setDescription(rs.getString("Description"));
				 bean.setEventName(rs.getString("EventName"));
				 bean.setEventPicture(rs.getString("EventPicture"));
				 bean.setEventDate(rs.getString("EventDate"));
				
				// bean.setGender(rs.getString("gender"));
			 }
			 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return bean;
		}
		
	}
		

	

		
		
