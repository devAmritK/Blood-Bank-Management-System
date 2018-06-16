<%@page import="Beanclasses.FindBean"%>
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
<form action="servletfind" method="post">
State<input type="text" name="State"><br/>
City<input type="text" name="City"><br/>
Area<input type="text" name="Area"><br/>
Blood Group<select name="BloodGroup">
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


<input type="submit" value="Submit"> <br/>
</form>

<div>
<table border="2">
<th>ID</th><th>State</th><th>City</th><th>Area</th><th>BloodGroup</th>
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	FindBean bean=(FindBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getState()+"'</td><td>'"
	+bean.getCity()+"'</td><td>'"
			+bean.getArea()+"'</td><td>'"+bean.getBloodGroup()
			+"'</td><td></td></tr>");
	}

%>
</table>
</div>

</body>
</html>