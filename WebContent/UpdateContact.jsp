<%@page import="Beanclasses.ContactBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% ContactBean bean=(ContactBean)request.getAttribute("mybean"); %>
</head>
<body>
<form action="servletContactUs" method="post">
<input type="hidden" name="process" value="update"> 
<input type="hidden" name="ID" value="<%= bean.getID()%>"> 
Name<input type="text" name="Name" value="<%=bean.getName()%>"><br/>
Email<input type="text"name="Email"  value="<%= bean.getEmail() %>"><br/>
Subject<input type="text" name="Subject"   value="<%= bean.getSubject() %>"><br/>
Message<input type="text" name="Message" value="<%= bean.getMessage() %>"><br/>

<input type="submit" value="Update"> <br/>
</form>
</body>
</html>