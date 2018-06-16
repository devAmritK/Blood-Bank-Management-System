<%@page import="Beanclasses.ContactBean"%>
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
<form action="servletContactUs" method="post">
Name:<input type="text" name="Name" placeholder="Your Name"><br/>
Email<input type="text" name="Email" placeholder="Your Email"><br/>
Subject<input type="text" name="Subject" placeholder="Subject"><br/>
Message<input type="text" name="Message" placeholder="Enter Your Message" style="height:200px"><br/>

<input type="submit" value="Submit"> <br/>
</form>
<!-- 
<div>
<table border="2">
<th>ID</th><th>Name</th><th>Email</th><th>Subject</th><th>Message</th><th>Update</th><th>Delete</th> 
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	ContactBean bean=(ContactBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getName()+"'</td><td>'"
	+bean.getEmail()+"'</td><td>'"
			+bean.getSubject()+"'</td><td>'"+bean.getMessage()
			+"'</td><td><a href='servletContactUs?ID="+bean.getID()+"&&process=update'>Update</a></td><td><a href='servletContactUs?ID="+bean.getID()+"&&process=delete'>Delete</a></td></tr>");
	}

%>
</table>
 -->
</div>
 
</body>
</html>