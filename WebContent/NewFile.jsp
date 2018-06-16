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
	ArrayList ar=(ArrayList)request.getAttribute("bean");
//if(ar!=null)
{
	for(int i=0;i<ar.size();i++)
	{
		RegistrationBean bean=(RegistrationBean)ar.get(i);
		%>	
		
                <li>
                    <!--<div>-->
                    <a href='ViewItem?ID=<%= bean.getID()%>'>
                        
                    </a>
                    <!-- </div>-->
                    <table>
                    <div style="display: inline-block;">
                   
                    
                   <tr>   Name  : <%= bean.getName()%> </tr>
                        <br/>
                  <tr>   Email :  <%= bean.getEmail()%> </tr>
                        <br/>
                    <tr>    Blood Group  : <%= bean.getBloodGroup()%> </tr>
                        <br/>
                     </td>
                    
                    </table>
                    </form>
                   </div>
                </li>
                <%
                        }
                    }
                %>
            </ul>	
			
			</form>

</table>
</div>
</body>
</html>