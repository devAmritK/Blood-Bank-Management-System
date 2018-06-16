<%@page import="Beanclasses.RegistrationBean"%>
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


<div>
<table border="2" bgcolor="white">
<%
	
		RegistrationBean bean=(RegistrationBean)request.getAttribute("mybean");
		%>	
		
                <li>
                    <!--<div>-->
                    <a href='ViewItem?ID=<%= bean.getID()%>'>
                    <!--     <img src='/image/<%=bean.getID() + bean.getName() %>' height=200px width=200px/> --> 
                    
                    </a>
                    <!--</div>-->
                    <!--<div style="display: inline-block;">-->
                <!--    < <p style="display: inline-block;">  -->
                    <table>
      <tr>         <td>    Name  : <%= bean.getName()%></td> </tr>
                        <br/>
      <tr>         <td>         Email   :  <%= bean.getEmail()%> </td> </tr>
                        <br/>
          <tr> <td>              Gender  : <%= bean.getGender()%> </td> </tr>
                        <br/>
           <tr> <td>              City   :  <%= bean.getCity()%> </td> </tr>
                        <br/>
                         
         <tr> <td>               DOB : <%= bean.getDOB()%> </td> </tr>
                        <br/>
             <tr> <td>           Blood Group   :  <%= bean.getBloodGroup()%> </td> </tr>
                        <br/>
                        
                        
             <tr> <td>           Weight  : <%= bean.getWeight()%> </td> </tr>
                        <br/>
            <tr> <td>            Address  : <%= bean.getAddress()%> </td> </tr>
                        <br/>
            <tr> <td>            Contact number : <%= bean.getContactNumber()%> </td> </tr>
                        <br/>
            <tr> <td>            Previous Blood Donation date : <%= bean.getPreviousBloodDonationDate()%> </td> </tr>
                       
                        <br/>
                       </table> 
                    </p> 
                    </form>
                    <!--</div>-->
                    
                </li>
               
            </ul>	
			
			</form>

</table>
</div>
</body>
</html>