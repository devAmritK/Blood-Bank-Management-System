<%@page import="Beanclasses.RegistrationBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="msform" action="servletRegistration" method="post">


 
 
<div>
<table border="2">
<th>ID</th><th>Name</th><th>Email</th><th>Password</th><th>ConfirmPassword</th><th>Gender</th><th>DOB</th><th>State</th><th>City</th><th>Address</th><th>PinCode</th><th>BloodGroup</th><th>Weight</th><th>ContactNumber</th><th>PreviousBloodDonationDate</th><th>Option_for_Donation</th><th>PreferredReminderService</th><th>Update</th><th>Delete</th>
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	RegistrationBean bean=(RegistrationBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getName()+"'</td><td>'"
	+bean.getEmail()+"'</td><td>'"+bean.getPassword()+"'</td><td>'"
			+bean.getConfirmPassword()+"'</td> <td>'"+bean.getGender()
			+"'</td><td>'"+bean.getDOB()+"'</td><td>'"+bean.getState()+"'</td><td>'"
			+bean.getCity()+"'</td><td>'"+bean.getAddress()+"'</td><td>'"+bean.getPinCode()+"'</td><td>'"+bean.getBloodGroup()+"'</td><td>'"+bean.getWeight()+"'</td><td>'"+bean.getContactNumber()+"'</td><td>'"+bean.getPreviousBloodDonationDate()+"'</td><td>'"+bean.getOption_for_Donation()+"'</td> <td>'"+bean.getPreferredReminderService()+"'</td> <td><a href='servletRegistration?ID="+bean.getID()+"&&process=update'>Update</a></td><td><a href='servletRegistration?ID="+bean.getID()+"&&process=delete'>Delete</a></td></tr>");
	}

%>
</table>
</div>

</body>
</html>










