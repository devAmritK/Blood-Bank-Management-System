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
 <form>
              BloodGroup<select name="BloodGroup">
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
City<select name="City">
<option>chandigarh</option>
<option>patiala</option>
<option>Delhi</option>
<input type="submit" name="submit" value="search">
</form>
<table border="2" bgcolor="white">

<table border="5">
<th>Name</th><th>Email</th><th>BloodGroup</th><th>City</th><th>Contact Number</th>    
<%
	ArrayList ar=(ArrayList)request.getAttribute("bean");
//if(ar!=null)
{
	for(int i=0;i<ar.size();i++)
	{
		RegistrationBean bean=(RegistrationBean)ar.get(i);
		%>	
		
		
		
                
                    <!--<div>-->
                    <a href='ViewItem?ID=<%= bean.getID()%>'>
                        
                    </a>
                    <!-- </div>-->
                    
                    <div style="display: inline-block;">
                   
                


        <tr>        <td>   <%=bean.getName()%> </td>
                        </br>
             <td>     <%= bean.getEmail()%> </td> 
                        </br>
          <td><%= bean.getBloodGroup()%></td> 
            
                   </br>    
                       
        <td><%= bean.getCity()%></td> 
         </br>
          <td><%= bean.getContactNumber()%></td> </tr>
            
                       
                     
                    
                    </table>
                    </form>
                   </div>
                
                <%
                        }
                    }
                %>
            </ul>	
			
			<div>

			</form>

</table>
</div>
</body>
</html>