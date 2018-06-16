package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.ReferBean;

public class Refer_a_Friend {
		Connection con=null;
		
		
		public Refer_a_Friend(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String YourName,String YourEmail,String FriendName1,String FriendEmail1,String FriendName2,String FriendEmail2,String FriendName3,String FriendEmail3)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into Refer_a_Friend values(null,'"+YourName+"','"+YourEmail+"','"+FriendName1+"','"+FriendEmail1+"','"+FriendName2+"','"+FriendEmail2+"','"+FriendName3+"','"+FriendEmail3+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 		 
		}
		
 public void update(int ID,String YourName,String YourEmail,String FriendName1,String FriendEmail1,String FriendName2,String FriendEmail2,String FriendName3,String FriendEmail3)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update  Refer_a_Friend set YourName='"+YourName+"',YourEmail='"+YourEmail+"',FriendName1='"+FriendName1+"',FriendEmail1='"+FriendEmail1+"',FriendName2='"+FriendName2+"',FriendEmail2='"+FriendEmail2+"',FriendName3='"+FriendName3+"',FriendEmail3='"+FriendEmail3+"' where ID='"+ID+"'");
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
				 st.executeUpdate("delete from Refer_a_Friend where ID='"+ID+"' ");
				
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
				 ResultSet rs=st.executeQuery("select * from Refer_a_Friend");
				 while(rs.next())
				 {
					 ReferBean bean=new ReferBean();	
					 bean.setID(rs.getInt("ID"));
					 bean.setYourName(rs.getString("YourName"));
					 bean.setYourEmail(rs.getString("YourEmail"));
					 bean.setFriendName1(rs.getString("FriendName1"));
					 bean.setFriendEmail1(rs.getString("FriendEmail1"));
					 bean.setFriendName1(rs.getString("FriendName2"));
					 bean.setFriendEmail1(rs.getString("FriendEmail2"));
					 bean.setFriendName1(rs.getString("FriendName3"));
					 bean.setFriendEmail1(rs.getString("FriendEmail3"));
					 
					 ar.add(bean);
					// bean.setGender(rs.getString("gender"));
				 }
				 
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			return ar;
			
		}
		
	//update	
		
	public  ReferBean fetch(String ID)
	{ 
		 ReferBean bean=new  ReferBean();
		try {
			
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from Refer_a_Friend where ID ='"+ID+"'");
			 while(rs.next())
			 {
				 bean.setID(rs.getInt("ID"));
				 bean.setYourName(rs.getString("YourName"));
				 bean.setYourEmail(rs.getString("YourEmail"));
				 bean.setFriendName1(rs.getString("FriendName1"));
				 bean.setFriendEmail1(rs.getString("FriendEmail1"));
				 bean.setFriendName1(rs.getString("FriendName2"));
				 bean.setFriendEmail1(rs.getString("FriendEmail2"));
				 bean.setFriendName1(rs.getString("FriendName3"));
				 bean.setFriendEmail1(rs.getString("FriendEmail3"));
				 
				
				// bean.setGender(rs.getString("gender"));
			 }
			 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return bean;
		}
		
		public static void main(String[] args)
	{
			Refer_a_Friend c=new Refer_a_Friend(DbConnection.getConnection());
			c.insert("anhh", "mb", "mmn", "heaa","ff","dfd","fdf","fdf");
			
		}

	} 

