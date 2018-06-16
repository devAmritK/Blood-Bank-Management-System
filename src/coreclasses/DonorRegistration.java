package coreclasses;
import java.sql.*;
import java.util.ArrayList;

import Utility.DbConnection;
import Beanclasses.RegistrationBean;

	public class DonorRegistration {
		Connection con=null;
		
		
		public DonorRegistration(Connection con)
		{
			this.con=con;
		}
		
		public void insert(String Name,String Email,String Password,String ConfirmPassword,String Gender, String DOB,String State,String City,String Address,int PinCode,String BloodGroup,String Weight,String ContactNumber,String PreviousBloodDonationDate,String Option_for_Donation,String PreferredReminderService)
		{
			try {
				 System.out.println("connection created in core file " +con);
				 Statement st=con.createStatement();
				
				 st.executeUpdate("insert into DonorRegistration values(null,'"+Name+"','"+Email+"','"+Password+"','"+ConfirmPassword+"','"+Gender+"','"+DOB+"','"+State+"','"+City+"','"+Address+"','"+PinCode+"','"+BloodGroup+"','"+Weight+"','"+ContactNumber+"','"+PreviousBloodDonationDate+"','"+Option_for_Donation+"','"+PreferredReminderService+"')");
			System.out.println("successfully submitted..");	
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			 
			 
		}
		
 public void update(int ID,String Name,String Email,String Password,String ConfirmPassword,String Gender, String DOB,String State,String City,String Address,int PinCode,String BloodGroup,String Weight,String ContactNumber,String PreviousBloodDonationDate,String Option_for_Donation,String PreferredReminderService)
		{
			try {
				
				 Statement st=con.createStatement();
				 st.executeUpdate("update  DonorRegistration set Name='"+Name+"',Email='"+Email+"',Password='"+Password+"',ConfirmPassword='"+ConfirmPassword+"',Gender='"+Gender+"',DOB='"+DOB+"',State='"+State+"',City='"+City+"',Address='"+Address+"',PinCode='"+PinCode+"',BloodGroup='"+BloodGroup+"',Weight='"+Weight+"',ContactNumber='"+ContactNumber+"',PreviousBloodDonationDate='"+PreviousBloodDonationDate+"',Option_for_Donation='"+Option_for_Donation+"',PreferredReminderService='"+PreferredReminderService+"' where ID='"+ID+"'");
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
				 st.executeUpdate("delete from DonorRegistration where ID='"+ID+"' ");
				
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
						 ResultSet rs=st.executeQuery("select * from DonorRegistration");
						 while(rs.next())
						 {
								RegistrationBean bean=new RegistrationBean();
							 bean.setID(rs.getInt("ID"));
							 bean.setName(rs.getString("Name"));
							 bean.setEmail(rs.getString("Email"));
							 bean.setPassword(rs.getString("Password"));
							 bean.setConfirmPassword(rs.getString("ConfirmPassword"));
							 bean.setGender(rs.getString("Gender"));
							 bean.setDOB(rs.getString("DOB"));
							 bean.setState(rs.getString("State"));
							 bean.setCity(rs.getString("City"));
							 bean.setAddress(rs.getString("Address"));
							 bean.setPinCode(rs.getString("PinCode"));
							 bean.setBloodGroup(rs.getString("BloodGroup"));
							 bean.setWeight(rs.getString("Weight"));
							 bean.setContactNumber(rs.getString("ContactNumber"));
							 bean.setPreviousBloodDonationDate(rs.getString("PreviousBloodDonationDate"));
							 bean.setOption_for_Donation	(rs.getString("Option_for_Donation"));
							 bean.setPreferredReminderService(rs.getString("PreferredReminderService"));
							 
							
							 ar.add(bean);
							// bean.setGender(rs.getString("gender"));
						 }
						 
						
					} catch (Exception e) {
						// TODO: handle exception
					}
					
					
					
					return ar;
					
				}
				
			//update	
				
			public RegistrationBean fetch(String ID)
			{ 
				RegistrationBean bean=new RegistrationBean();
				try {
					
					 Statement st=con.createStatement();
					 ResultSet rs=st.executeQuery("select  Name,Email,Gender,DOB,Address,BloodGroup,ContactNumber from DonorRegistration where ID='"+ID+"'");
					 while(rs.next())
					 {
						 bean.setID(rs.getInt("ID"));
						 bean.setName(rs.getString("Name"));
						 bean.setEmail(rs.getString("Email"));
						 bean.setPassword(rs.getString("Password"));
						 bean.setConfirmPassword(rs.getString("ConfirmPassword"));
						 bean.setGender(rs.getString("Gender"));
						 bean.setDOB(rs.getString("DOB"));
						 bean.setState(rs.getString("State"));
						 bean.setCity(rs.getString("City"));
						 bean.setAddress(rs.getString("Address"));
						 bean.setPinCode(rs.getString("PinCode"));
						 bean.setBloodGroup(rs.getString("BloodGroup"));
						 bean.setWeight(rs.getString("Weight"));
						 bean.setContactNumber(rs.getString("ContactNumber"));
					    bean.setPreviousBloodDonationDate(rs.getString("PreviousBloodDonationDate	"));
						 bean.setOption_for_Donation	(rs.getString("Option_for_Donation"));
						 bean.setPreferredReminderService(rs.getString("PreferredReminderService"));
						bean.setGender(rs.getString("gender"));
					 }
					 
					
				} catch (Exception e) {
					// TODO: handle exception
				}
				
				
				
				return bean;
				}
			
			
			
			public RegistrationBean fetchByEmail(String Email)
			{ 
				RegistrationBean bean=new RegistrationBean();
				try {
					
					 Statement st=con.createStatement();
					 ResultSet rs=st.executeQuery("select  Name,Email,Gender,DOB,Address,BloodGroup,ContactNumber from DonorRegistration where Email='"+Email+"'");
					 while(rs.next())
					 {
						 bean.setID(rs.getInt("ID"));
						 bean.setName(rs.getString("Name"));
						 bean.setEmail(rs.getString("Email"));
						 bean.setPassword(rs.getString("Password"));
						 bean.setConfirmPassword(rs.getString("ConfirmPassword"));
						 bean.setGender(rs.getString("Gender"));
						 bean.setDOB(rs.getString("DOB"));
						 bean.setState(rs.getString("State"));
						 bean.setCity(rs.getString("City"));
						 bean.setAddress(rs.getString("Address"));
						 bean.setPinCode(rs.getString("PinCode"));
						 bean.setBloodGroup(rs.getString("BloodGroup"));
						 bean.setWeight(rs.getString("Weight"));
						 bean.setContactNumber(rs.getString("ContactNumber"));
					    bean.setPreviousBloodDonationDate(rs.getString("PreviousBloodDonationDate	"));
						 bean.setOption_for_Donation	(rs.getString("Option_for_Donation"));
						 bean.setPreferredReminderService(rs.getString("PreferredReminderService"));
						bean.setGender(rs.getString("gender"));
					 }
					 
					
				} catch (Exception e) {
					// TODO: handle exception
				}
				
				
				
				return bean;
				}
				
		/*

		public static void main(String[] args)
	{
			DonorRegistration user=new DonorRegistration(DbConnection.getConnection());
		//	user.insert("anhh", "mb", "mmn", "jhhkj");
			user.insert("abc", "Em", "Passw", "Confir", "Gender", "jhk", "State");
		} 

		*/
		
	} 

