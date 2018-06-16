<%@page import="Beanclasses.NewsBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% NewsBean bean=(NewsBean)request.getAttribute("mybean"); %>
</head>
<body>
<form action="servletNews" method="post" enctype="multipart/form-data">
<input type="hidden" name="process" value="update"> 
<input type="hidden" name="ID" value="<%= bean.getID()%>"> 
Description<input type="text" name="Description" value="<%=bean.getDescription()%>"><br/>
EventName<input type="text"name="EventName"  value="<%= bean.getEventName() %>"><br/>
EventPicture<input type="file" name="EventPicture"   value="<%= bean.getEventPicture() %>"><br/>
EventDate<input type="text" name="EventDate" value="<%= bean.getEventDate() %>"><br/>

<input type="submit" value="Update"> <br/>
</form>
</body>
</html>

