<%@page import="Beanclasses.DonorsBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% DonorsBean bean=(DonorsBean)request.getAttribute("mybean"); %>
</head>
<body>
<form action="servletDonor" method="post">
<input type="hidden" name="process" value="update"> 
<input type="hidden" name="ID" value="<%= bean.getID()%>"> 
Name<input type="text" name="Name" value="<%=bean.getName()%>"><br/>
Email<input type="text" name="Email"  value="<%= bean.getEmail() %>"><br/>
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
      Previous Blood Donation Date	<input type="text" name="PreviousBloodDonationDate"   value="<%= bean.getPreviousBloodDonationDate	() %>"><br/>
CurrentWeight<input type="text" name="CurrentWeight"   value="<%= bean.getCurrentWeight() %>"><br/>
QuantityOfBlood<input type="text" name="QuantityOfBlood"  value="<%= bean.getQuantityOfBlood() %>"><br/>
QuantityOfBlood<select name="QuantityOfBlood"> 

 <option value="<%=bean.getQuantityOfBlood()%>">None</option>

 <option value="<%=bean.getQuantityOfBlood()%>">Hepatitis B,C</option>
 <option value="<%=bean.getQuantityOfBlood()%>">Malaria</option>
 <option value="<%=bean.getQuantityOfBlood()%>">TB</option>
 <option value="<%=bean.getQuantityOfBlood()%>">Heart Disease</option>
 <option value="<%=bean.getQuantityOfBlood()%>">Other</option>
 </select>
             
HemoGlobin<input type="text" name="HemoGlobin" value="<%= bean.getHemoGlobin() %>"><br/>

Contact Number	<input type="text" name="ContactNumber"   value="<%= bean.getContactNumber() %>"><br/>


<input type="submit" value="Update"> <br/>
</form>
</body>
</html>

	