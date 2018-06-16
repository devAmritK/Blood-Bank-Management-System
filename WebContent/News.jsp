<%@page import="Beanclasses.NewsBean"%>
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
<form action="servletNews" method="post" enctype="multipart/form-data">
Description<input type="text" name="Description"><br/>
EventName<input type="text" name="EventName"><br/>       			
EventPicture<input type="file" name="EventPicture" size="60"><br/>
EventDate<input type="text" name="EventDate"><br/>

<input type="submit" value="Submit"> <br/>
</form>

<div>
<table border="2">
<th>ID</th><th>Description</th><th>EventName</th><th>EventPicture</th><th>EventDate</th>
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	NewsBean bean=(NewsBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getDescription()+"'</td><td>'"
	+bean.getEventName()+"'</td><td>'"
			+bean.getEventPicture()+"'</td><td>'"+bean.getEventDate()
			+"'</td><td><a href='servletNews?ID="+bean.getID()+"&&process=update'>Update</a></td><td><a href='servletNews?ID="+bean.getID()+"&&process=delete'>Delete</a></td></tr>");
	}

%>
</table>
</div>

</body>
</html>