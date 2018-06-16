<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="container">
  <div id="banner">
    
    <h1 color="red"><center>AdminPanel</center></h1>
  </div>
  <ul id="navlist">
    <li id="active"><a id="current" href="">HOMEPAGE</a></li>
    <li><a href="#">ABOUT</a></li>
    <li><a href="#">GALLERY</a></li>
    <li><a href="#">REGISTER</a></li>
    <li><a href="#">NEWS AND EVENTS</a></li>
    <li><a href="#">CONTACT US</a></li>
  </ul>
  <div id="sidebar-a">
    <h2>Links</h2>
    <div class="menu">
      <ul>
        <li><a href="servletUser">user</a></li>
		<li><a href="servletLogin">Login</a></li>
		<li><a href="servletRegister">Register</a></li>
		<li><a href="servletfind">Find a Donor</a></li>
		<li><a href="servletNews">newsr</a></li>
		
      </ul>
    </div>
    <p><img class="border" src="/Users/mac/Desktop/BLOODBANKnew/blood.jpg" alt="box" />Blood Bank . </p>
  </div>
  <div id="sidebar-b">
    <h3>Information</h3>
    <p>Indian Blood Bank Society is a noble charity organization formed with the active initiation and guidance of Lt. Col. (Hon.) Dr. Mohanlal, under Act For Humanity. Act For Humanity is a Non-profit organization founded by Mr. Esahaque Eswaramangalam and a group of young social workers during 2004, with Lt. Col. (Hon.) Dr. Mohanlal as its goodwill ambassador, aiming to fight against terrorism and fanatic activities. Act For Humanity aims to enhance the humanistic elements of each individual and prepare them to be tolerant, responsive, accountable and responsible social citizen.
Indian Blood Bank is aimed at promoting the awareness of blood donation among the public. It is committed to stay ahead of all linguistic-rational-religious-political differences and shall be fully focusing its objectives in health care activities, with technology support from WebCastle Media Pvt. Ltd., Cochin.
 
Indian Blood Bank Society is registered as per The TCLSCS Registration Act XII of 1955 under the Government of Kerala. Initial operation of Indian Blood Bank shall be limited to Kerala and in the coming years its services shall be available all over India.
 </p>
    <h3>Gallery</h3>
    <img class="border" src="/Users/mac/Desktop/BLOODBANKnew" alt="box" />
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse a tortor. </p>
  </div>
  <div id="content">
    <%
				if(request.getParameter("page")!=null)
				{
					String mypage=request.getParameter("page");
					%>
					<jsp:include page="<%=mypage %>"></jsp:include>
					<%
				}
    
				else
				{%>
			<h1>Page Not available</h1>
				<% }
					%>
				
				
     %>
  </div>
  <div id="footer"> <a href="#">Homepage</a> | <a href="#">contact</a> | &copy; 2007 Anyone | Design by <a href="http://www.mitchinson.net"> www.mitchinson.net</a> | Licensed under a <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a></div>
</div>
</body>
</html>
