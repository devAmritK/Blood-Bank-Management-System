<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Industrious by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
			
			
       
				<a class="logo" href="home.jsp">HOME</a>
				<a class="logo" href="servletRegistration">REGISTRATION</a>
				<a class="logo" href="servletUser?process=user">NEWS AND EVENTS</a>
				<a class="logo" href="servletuserfind?process=user">FIND A DONOR</a>
			  	<a class="logo" href="servletRefer">REFER A FRIEND</a>
				<a class="logo" href="servletContactUs">CONTACT US</a>

			   
				<input class="input" type="text"  name="Email"  placeholder="Email">
				<input  class="input" type="password"  name="Password" placeholder="Password">
			<input class="input" type="submit" value="Sign In"></div>	
				
		
        
				
			</header>

		<!-- Nav 
			<nav id="menu">
				<ul class="links">
					<li><a href="index.html">Home</a></li>
					<li><a href="elements.html">Elements</a></li>
					<li><a href="generic.html">Generic</a></li>
				</ul>
			</nav>  -->

		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					
				<!--  	<p>A responsive business oriented template with a video background<br /> 
					designed by <a href="https://templated.co/">TEMPLATED</a> and released under the Creative Commons License.</p> -->
				</div>
				<img src="images/BANNER1.jpg"> </img>
			<!-- 	<video autoplay loop muted playsinline src="images/banner.mp4"></video> -->
			</section>

		<!-- Highlights -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
				<!--  
				<form action="servletDonorLogin" method="post">
				<input class="logo" type="text"  name="Email"  placeholder="Email">
				<input type="password" class="form" name="Password" placeholder="Password">
				<input type="submit" value="Sign In">
				</form>
						-->
						</header>
						<% 
        
						if(request.getParameter("page")!=null)
				{
					String mypage=request.getParameter("page");
					%>
					<jsp:include page="<%=mypage %>"></jsp:include>
					<%
				}
				else
				{
				%>
				
			<!-- 	<h1><p>content</p></h1>  -->
				<%
				}
     %>
  
				
					</section>
					</header>
					<div class="highlights">
						
						<section>
							<div class="content">
								<header>
									<img src="images/2.jpg" border="20"> <span class="label">Icon</span>  </img>
									<h3>Stock Management</h3>
								</header>
								<p>The Blood banks can update their Blood stock on daily basis and view the upto date stock status online</p>
							</div>
						</section>
						
						<section>
							<div class="content" border="4">
								<header>
									<img src="images/3.jpg" ><span class="label"></span></a>
									<h3>Blood Donation Facts</h3>
								</header>
								<p>Donated Blood can save upto 4 lives. Register today as a Blood Donor. You don't have to be a doctor to save lives</p>
							</div>
						</section>
						
						<section>
							<div class="content">
								<header>
									<img src="images/images.jpg" ><span class="label"></span></a>
									<h3> Message to Donors</h3>
								</header>
								<p>The Goal of blood safety programme is to provide adequate safe blood and blood products to all the needy patients</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-line-chart"><span class="label">Icon</span></a>
									<h3>Interdum gravida</h3>
								</header>
								<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus.</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-paper-plane-o"><span class="label">Icon</span></a>
									<h3>Faucibus consequat</h3>
								</header>
								<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus.</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-qrcode"><span class="label">Icon</span></a>
									<h3>Accumsan viverra</h3>
								</header>
								<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus.</p>
							</div>
						</section>
					</div>
				</div>
			</section> 
			
			 
				
				
     

		<!-- CTA -->
			<section id="cta" class="wrapper">
				<div class="inner">
					<h2>Curabitur ullamcorper ultricies</h2>
					<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing. Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing sed feugiat eu faucibus. Integer ac sed amet praesent. Nunc lacinia ante nunc ac gravida.</p>
				</div>
			</section>

		<!-- Testimonials -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<h2>Faucibus consequat lorem</h2>
						<p>In arcu accumsan arcu adipiscing accumsan orci ac. Felis id enim aliquet. Accumsan ac integer lobortis commodo ornare aliquet accumsan erat tempus amet porttitor.</p>
					</header>
					<div class="testimonials">
						<section>
							<div class="content">
								<blockquote>
									<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus.</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="images/pic01.jpg" alt="" />
									</div>
									<p class="credit">- <strong>Jane Doe</strong> <span>CEO - ABC Inc.</span></p>
								</div>
							</div>
						</section>
						<section>
							<div class="content">
								<blockquote>
									<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus.</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="images/pic03.jpg" alt="" />
									</div>
									<p class="credit">- <strong>John Doe</strong> <span>CEO - ABC Inc.</span></p>
								</div>
							</div>
						</section>
						<section>
							<div class="content">
								<blockquote>
									<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus.</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="images/pic02.jpg" alt="" />
									</div>
									<p class="credit">- <strong>Janet Smith</strong> <span>CEO - ABC Inc.</span></p>
								</div>
							</div>
						</section>
					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="content">
						<section>
							<h3>Accumsan montes viverra</h3>
							<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing. Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing sed feugiat eu faucibus. Integer ac sed amet praesent. Nunc lacinia ante nunc ac gravida.</p>
						</section>
						<section>
							<h4>ADMIN PANEL</h4>
							<li>	<a class="logo" href="index2.jsp?page=Login.jsp">welcome to admin panel</a></li>
							<ul class="alt">
								
			<%if(session.getAttribute("type")!=null&& session.getAttribute("type").equals("admin")) 
      {%>
       
       
				
			<li>	<a class="logo" href="servletRegistration">Registration</a></li>
			<li>	<a class="logo" href="servletfind">Find a Donor</a></li>
			<li>	<a class="logo" href="servletNews">News and Events</a></li>l
			<li>	<a class="logo" href="servletRefer">Refer a Friend</a></li>
		<!--  	<li>	<a class="logo" href="servletContactUs">Contact Us</a></li> -->
			<li>	<a class="logo" href="servletDonor">Donors</a></li>
				
				
			 <%}
			else
			{ %>
         
        
     <li>   <a class="logo"  href="UserPanel.jsp?page=Login.jsp">Registration</a></li>
     <li>   <a class="logo" href="UserPanel.jsp?page=Login.jsp">Find a Donor</a></li>
      <li>  <a class="logo" href="UserPanel.jsp?page=Login.jsp">News and Events</a></li>
     <li>   <a class="logo" href="UserPanel.jsp?page=Login.jsp">Refer a Friend</a></li>
   <!--   <li>   <a class="logo" href="UserPanel.jsp?page=Login.jsp">Contact Us</a></li> -->
     <li>   <a class="logo" href="servletDonor">Donor</a>
				
        
        
        <%} %>		
								
							</ul>
						</section>
						<section>
							<h4>Magna sed ipsum</h4>
							<ul class="plain">
								<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
								<li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
								<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
								<li><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
							</ul>
						</section>
					</div>
					<div class="copyright">
						&copy; Untitled. Photos <a href="https://unsplash.co">Unsplash</a>, Video <a href="https://coverr.co">Coverr</a>.
					</div>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
            <script src="assets/js/regis.js"></script>
	</body>
</html>