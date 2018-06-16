<%@page import="Beanclasses.DonorsBean"%>
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
<form action="servletDonor" method="post">
Name<input type="text" name="Name"><br/>
Email<input type="text" name="Email"><br/>
BloodGroup<select name="BloodGroup">
<option>A1+</option>
<option>A1-</option>
<option>A2+</option>
<option>A2-</option>
<option>B+</option>
<option>B-</option>
<option>A1B+</option>
<option>A1B-</option>
<option>A2B+</option>
<option>A2B-</option>
<option>AB+</option>
<option>AB-</option>
<option>O+</option>
<option>O-</option>
<option>A+</option>
<option>A-</option>
</select><br/>
Previous Blood Donation Date<input type="text" name="PreviousBloodDonationDate"><br/>
CurrentWeight<input type="text" name="CurrentWeight"><br/>
QuantityOfBlood<input type="text" name="QuantityOfBlood"><br/>   
AnyDisease	 <select name="AnyDisease"> 
<option>None</option>
<option>Hepatitis B,C</option>
<option>Malaria</option>
<option>TB</option>
<option>Heart Disease</option>
<option>Other</option>
</select> </br>
HemoGlobin	<input type="text" name="HemoGlobin"><br/>
Contact Number<input type="text" name="ContactNumber"><br/>



<input type="submit" value="Submit"> <br/>
</form>

<div>
<table border="2">
<th>ID</th><th>Name</th><th>Email</th><th>BloodGroup</th><th>PreviousBloodDonationDate</th><th>CurrentWeight</th><th>QuantityOfBlood</th><th>AnyDisease</th><th>HemoGlobin</th><th>ContactNumber</th><th>Update</th><th>Delete</th>
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	DonorsBean bean=(DonorsBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getName()+"'</td><td>'"
	+bean.getEmail()+"'</td><td>'"+bean.getBloodGroup()+"'</td><td>'"
			+bean.getPreviousBloodDonationDate()+"'</td> <td>'"+bean.getCurrentWeight()
			+"'</td><td>'"+bean.getQuantityOfBlood()+"'</td><td>'"+bean.getAnyDisease()+"'</td><td>'"
			+bean.getHemoGlobin()+"'</td><td>'"+bean.getContactNumber()+"'</td> <td><a href='servletDonor?ID="+bean.getID()+"&&process=update'>Update</a></td><td><a href='servletDonor?ID="+bean.getID()+"&&process=delete'>Delete</a></td></tr>");
	}

%>
</table>
</div>

</body>
</html>










