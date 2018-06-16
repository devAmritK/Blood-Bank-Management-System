<%@page import="Beanclasses.RegistrationBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% RegistrationBean bean=(RegistrationBean)request.getAttribute("mybean"); %>
</head>
<body>
<form action="servletRegistration" method="post">
<input type="hidden" name="process" value="update"> 
<input type="hidden" name="ID" value="<%= bean.getID()%>"> 
Name<input type="text" name="Name" value="<%=bean.getName()%>"><br/>
Email<input type="text" name="Email"  value="<%= bean.getEmail() %>"><br/>
Password	<input type="password" name="Password"   value="<%= bean.getPassword	() %>"><br/>
ConfirmPassword<input type="password" name="ConfirmPassword"  value="<%= bean.getConfirmPassword() %>"><br/>
Gender:<select name="Gender"> 

 <option value="<%=bean.getGender()%>">Male</option>
 <option value="<%=bean.getGender()%>">Female</option>
 </select>
             
DOB<input type="text" name="DOB" value="<%= bean.getDOB() %>"><br/>
State	<input type="text" name="State"   value="<%= bean.getState() %>"><br/>
City<input type="text" name="City" value="<%= bean.getCity() %>"><br/>
Address	<input type="text" name="Address"   value="<%= bean.getAddress() %>"><br/>
PinCode	<input type="text" name="PinCode"   value="<%= bean.getPinCode() %>"><br/>
Blood Group <select name="BloodGroup">
	<option value="<%=bean.getBloodGroup()%>">A1+</option>
             <option value="<%=bean.getBloodGroup()%>">A1-</option>
             <option value="<%=bean.getBloodGroup()%>">A2+</option>
             <option value="<%=bean.getBloodGroup()%>">A2-</option>
             <option value="<%=bean.getBloodGroup()%>">B+</option>
             <option value="<%=bean.getBloodGroup()%>">B-</option>
             <option value="<%=bean.getBloodGroup()%>">A1B+</option>
             <option value="<%=bean.getBloodGroup()%>">A1B-</option>
             <option value="<%=bean.getBloodGroup()%>">A2B+</option>
             <option value="<%=bean.getBloodGroup()%>">A2B-</option>
             <option value="<%=bean.getBloodGroup()%>">AB+</option>
              <option value="<%=bean.getBloodGroup()%>">AB+</option> 
              <option value="<%=bean.getBloodGroup()%>">AB-</option>
               <option value="<%=bean.getBloodGroup()%>">O+</option>
                <option value="<%=bean.getBloodGroup()%>">O+</option>
                 <option value="<%=bean.getBloodGroup()%>">A+</option>
                  <option value="<%=bean.getBloodGroup()%>">A-</option>
                  </select> </br>
             
Weight<input type="text" name="Weight" value="<%= bean.getWeight() %>"><br/>
Contact Number	<input type="text" name="ContactNumber"   value="<%= bean.getContactNumber() %>"><br/>
Previous Blood Donation Date	<input type="text" name="PreviousBloodDonationDate"   value="<%= bean.getPreviousBloodDonationDate	() %>"><br/>
Option for Donation	<input type="text" name="Option_for_Donation"   value="<%= bean.getOption_for_Donation() %>"><br/>
Preferred Reminder Service <select name="PreferredReminderService">
 <option value="<%=bean.getPreferredReminderService()%>">By SMS</option>
 <option value="<%=bean.getPreferredReminderService()%>">By Email</option>
<input type="submit" value="Update"> <br/>
</form>
</body>
</html>

	