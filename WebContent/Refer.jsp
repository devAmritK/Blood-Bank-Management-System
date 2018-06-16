<%@page import="Beanclasses.ReferBean"%>
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
<form action="servletRefer" method="post">
Your Name<input type="text" name="YourName"><br/>
Your Email<input type="text" name="YourEmail"><br/>
Friend Name1<input type="text" name="FriendName1"><br/>
Friend Email1<input type="text" name="FriendEmail1"><br/>
Friend Name2<input type="text" name="FriendName2"><br/>
Friend Email2<input type="text" name="FriendEmail2"><br/>
Friend Name3<input type="text" name="FriendName3"><br/>
Friend Email3<input type="text" name="FriendEmail3"><br/>


<input type="submit" value="Submit"> <br/>
</form>

<div>
<table border="2">
<th>Id</th><th>YourName</th><th>YourEmail</th><th>FriendName1</th><th>FriendEmail1</th><th>FriendName2</th><th>FriendEmail2</th><th>FriendName3</th><th>FriendEmail3</th><th>Update</th><th>Delete</th>
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	ReferBean bean=(ReferBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getYourName()+"'</td><td>'"
	+bean.getYourEmail()+"'</td><td>'"+bean.getFriendName1()+"'</td><td>'"
			+bean.getFriendEmail1()+"'</td><td>'"+bean.getFriendName2()
			+"'</td><td>'"+bean.getFriendEmail2()+"'</td><td>'"+bean.getFriendName3()+"'</td><td>'"+bean.getFriendEmail3()+"'</td><td><a href='servletRefer?ID="+bean.getID()+"&&process=update'>Update</a></td><td><a href='servletRefer?ID="+bean.getID()+"&&process=delete'>Delete</a></td></tr>");
	}

%>
</table>
</div>

</body>
</html>