<%@page import="Beanclasses.FindBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% FindBean bean=(FindBean)request.getAttribute("mybean"); %>
</head>
<body>
<form action="servletfind" method="post">
<input type="hidden" name="process" value="update"> 
<input type="hidden" name="ID" value="<%= bean.getID()%>"> 
State<input type="text" name="State" value="<%=bean.getState()%>"><br/>
City<input type="text"name="City"  value="<%= bean.getCity() %>"><br/>
Area<input type="text" name="Area"   value="<%= bean.getArea() %>"><br/>
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

<input type="submit" value="Update"> <br/>
</form>
</body>
</html>