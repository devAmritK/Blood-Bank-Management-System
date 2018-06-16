package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.DonorsBean;



	public class PreviousDonors {
		Connection con=null;
		
		
		public PreviousDonors(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String Name,String Email,String BloodGroup,String PreviousBloodDonationDate,String CurrentWeight,String QuantityOfBlood,String AnyDisease,String HemoGlobin,String ContactNumber)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into PreviousDonors values(null,'"+ Name+"','"+Email+"','"+BloodGroup+"','"+PreviousBloodDonationDate+"','"+CurrentWeight+"','"+QuantityOfBlood+"','"+AnyDisease+"','"+HemoGlobin+"','"+ContactNumber+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 
			 
		}
		
 public void update(int ID,String Name,String Email,String BloodGroup,String PreviousBloodDonationDate,String CurrentWeight,String QuantityOfBlood,String AnyDisease,String HemoGlobin,String ContactNumber)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update  PreviousDonors set Name='"+Name+"',Email='"+Email+"',BloodGroup='"+BloodGroup+"',PreviousBloodDonationDate='"+PreviousBloodDonationDate+"',CurrentWeight='"+CurrentWeight+"',QuantityOfBlood='"+QuantityOfBlood+"',AnyDisease='"+AnyDisease+"',HemoGlobin='"+HemoGlobin+"',ContactNumber='"+ContactNumber+"' where ID='"+ID+"' ");
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
				 st.executeUpdate("delete from PreviousDonors where ID='"+ID+"' ");
				
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
				 ResultSet rs=st.executeQuery("select * from PreviousDonors");
				 while(rs.next())
				 {
						DonorsBean bean=new DonorsBean();
						bean.setID(rs.getInt("ID"));
						 bean.setName(rs.getString("Name"));
						 bean.setEmail(rs.getString("Email"));
						 bean.setBloodGroup(rs.getString("BloodGroup"));
						 bean.setPreviousBloodDonationDate(rs.getString("PreviousBloodDonationDate"));
						 bean.setCurrentWeight(rs.getString("CurrentWeight"));
						 bean.setQuantityOfBlood(rs.getString("QuantityOfBlood"));
						 bean.setAnyDisease(rs.getString("AnyDisease"));
						 bean.setHemoGlobin(rs.getString("HemoGlobin"));
						 bean.setContactNumber(rs.getString("ContactNumber"));
					 ar.add(bean);
					// bean.setGender(rs.getString("gender"));
				 }
				 
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			return ar;
			
		}
		
	//update	
		
	public DonorsBean fetch(String ID)
	{ 
		DonorsBean bean=new DonorsBean();
		try {
			
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from PreviousDonors where ID='"+ID+"'");
			 while(rs.next())
			 {
				 bean.setID(rs.getInt("ID"));
				 bean.setName(rs.getString("Name"));
				 bean.setEmail(rs.getString("Email"));
				 bean.setBloodGroup(rs.getString("BloodGroup"));
				 bean.setPreviousBloodDonationDate(rs.getString("PreviousBloodDonationDate"));
				 bean.setCurrentWeight(rs.getString("CurrentWeight"));
				 bean.setQuantityOfBlood(rs.getString("QuantityOfBlood"));
				 bean.setAnyDisease(rs.getString("AnyDisease"));
				 bean.setHemoGlobin(rs.getString("HemoGlobin"));
				 bean.setContactNumber(rs.getString("ContactNumber"));
				
				// bean.setGender(rs.getString("gender"));
			 }
			 
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return bean;
		}
		
	}
		

	

		
		
