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


<div>
<table border="2" bgcolor="white">
<%
	ArrayList ar=(ArrayList)request.getAttribute("bean");
if(ar!=null)
{
	 String img="/images";
	for(int i=0;i<ar.size();i++)
	{
		NewsBean bean=(NewsBean)ar.get(i);
		%>	
		
                <li>
                    <!--<div>-->
                   

                        <img src='file:///Users/mac/eclipse-workspace/BLOODBANK/WebContent/16.jpg' height=200px width=200px/>

                    <!--</div>-->
                    <!--<div style="display: inline-block;">-->
                    <p style="display: inline-block;">
                      Description  : <%= bean.getDescription()%>
                        <br/>
                      Event Name :  <%= bean.getEventName()%>
                        <br/>
                        Event Date  : <%= bean.getEventDate()%>
                        <br/>
                     
                    </p> 
                    </form>
                    <!--</div>-->
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