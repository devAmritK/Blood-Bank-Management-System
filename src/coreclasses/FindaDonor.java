package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.FindBean;



	public class FindaDonor {
		Connection con=null;
		
		
		public FindaDonor(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String State,String City,String Area,String BloodGroup)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into FindaDonor values(null,'"+State+"','"+City+"','"+Area+"','"+BloodGroup+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 
			 
		}
		
 public void update(int ID,String State,String City,String Area,String BloodGroup)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update FindaDonor set State='"+State+"',City='"+City+"',Area='"+Area+"',BloodGroup='"+BloodGroup+"' where ID='"+ID+"'");
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
				 st.executeUpdate("delete from FindaDonor where ID='"+ID+"' ");
				
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
				 ResultSet rs=st.executeQuery("select * from FindaDonor ");
				 while(rs.next())
				 {
						FindBean bean=new FindBean();
					 bean.setID(rs.getInt("ID"));
					 bean.setState(rs.getString("State"));
					 bean.setCity(rs.getString("City"));
					 bean.setArea(rs.getString("Area"));
					 bean.setBloodGroup(rs.getString("BloodGroup"));
					
					 ar.add(bean);
					// bean.setGender(rs.getString("gender"));
				 }
				 
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			return ar;
			
		}
		
	//update	
		
	public FindBean fetch(String ID)
	{ 
		FindBean bean=new FindBean();
		try {
			
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from FindaDonor where ID='"+ID+"'");
			 while(rs.next())
			 {
				 bean.setID(rs.getInt("ID"));
				 bean.setState(rs.getString("State"));
				 bean.setCity(rs.getString("City"));
				 bean.setArea(rs.getString("Area"));
				 bean.setBloodGroup(rs.getString("BloodGroup"));
				
				// bean.setGender(rs.getString("gender"));
			 }
			 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return bean;
		}

	public static void main(String[] args)
{
		FindaDonor c=new FindaDonor(DbConnection.getConnection());
		c.insert("anhh", "mb", "mmn", "hehhhaaaa");
	}
		
	} 

