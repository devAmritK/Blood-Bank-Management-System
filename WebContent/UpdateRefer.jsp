<%@page import="Beanclasses.ReferBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% ReferBean bean=(ReferBean)request.getAttribute("mybean"); %>
</head>
<body>
<form action="servletRefer" method="post">
<input type="hidden" name="process" value="update"> 
<input type="hidden" name="ID" value="<%= bean.getID()%>"> 
YourName<input type="text" name="YourName" value="<%=bean.getYourName()%>"><br/>
YourEmail<input type="text"name="YourEmail"  value="<%= bean.getYourEmail() %>"><br/>
FriendName1	<input type="text" name="FriendName1	"   value="<%= bean.getFriendName1() %>"><br/>
FriendEmail1<input type="text" name="FriendEmail1" value="<%= bean.getFriendEmail1() %>"><br/>
FriendName2	<input type="text" name="FriendName2"   value="<%= bean.getFriendName2() %>"><br/>
FriendEmail2<input type="text" name="FriendEmail2" value="<%= bean.getFriendEmail2() %>"><br/>
FriendName3	<input type="text" name="FriendName3	"   value="<%= bean.getFriendName3() %>"><br/>
FriendEmail3<input type="text" name="FriendEmail3" value="<%= bean.getFriendEmail3() %>"><br/>

<input type="submit" value="Update"> <br/>
</form>
</body>
</html>

	