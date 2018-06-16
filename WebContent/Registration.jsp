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
<form id="msform" action="servletRegistration" method="post">


 <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Account Setup</li>
    <li>Personal Details</li>
    <li>Health Details</li>
  </ul>
  
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Create your account</h2>
    <h3 class="fs-subtitle">This is step 1</h3>
  
Name<input type="text" name="Name"><br/>
Email<input type="text" name="Email"><br/>
Password<input type="password" name="Password"><br/>
ConfirmPassword<input type="password" name="ConfirmPassword"><br/> 

  
    <input type="button" onclick="next" class="next action-button" value="Next" id="next"/>
  </fieldset>
  
    
   
<fieldset>
 <h2 class="fs-title">Personal Details</h2>
<h3 class="fs-subtitle">We will never sell it</h3>
Gender: <select name="Gender"> 
<option>Male</option>
<option>Female</option>
</select> </br>
DOB<input type="text" name="DOB"><br/>
State<input type="text" name="State"><br/>
City<input type="text" name="City"><br/>
Address<input type="text" name="Address"><br/>
PinCode<input type="text" name="PinCode"><br/>   
Contact Number<input type="text" name="ContactNumber"><br/>
<input type="button" onclick="next" class="next action-button" value="Next" id="next"/>
 
  </fieldset>
 
  <fieldset>
  <h2 class="fs-title">Health Details</h2>
    
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
Weight<input type="text" name="Weight"><br/>

Previous Blood Donation Date<input type="text" name="PreviousBloodDonationDate"><br/>
Option for Donation<input type="text" name="Option_for_Donation"><br/>
Preferred Reminder Service<<select name="PreferredReminderService">
<option>By SMS</option>
<option>By Email</option>

<input type="button" onclick="previous" class="previous action-button" value="Previous" id="previous" />
<input type="submit" name="submit" class="submit action-button" value="Submit" />
  </fieldset>
</form>

<!--  
<div>
<table border="2">
<th>ID</th><th>Name</th><th>Email</th><th>Password</th><th>ConfirmPassword</th><th>Gender</th><th>DOB</th><th>State</th><th>City</th><th>Address</th><th>PinCode</th><th>BloodGroup</th><th>Weight</th><th>ContactNumber</th><th>PreviousBloodDonationDate</th><th>Option_for_Donation</th><th>PreferredReminderService</th><th>Update</th><th>Delete</th>
<%
ArrayList ar=(ArrayList)request.getAttribute("mybean");
for(int i=0;i<ar.size();i++)
{
	RegistrationBean bean=(RegistrationBean)ar.get(i);
	out.print("<tr><td>'"+bean.getID()+"'</td><td>'"+bean.getName()+"'</td><td>'"
	+bean.getEmail()+"'</td><td>'"+bean.getPassword()+"'</td><td>'"
			+bean.getConfirmPassword()+"'</td> <td>'"+bean.getGender()
			+"'</td><td>'"+bean.getDOB()+"'</td><td>'"+bean.getState()+"'</td><td>'"
			+bean.getCity()+"'</td><td>'"+bean.getAddress()+"'</td><td>'"+bean.getPinCode()+"'</td><td>'"+bean.getBloodGroup()+"'</td><td>'"+bean.getWeight()+"'</td><td>'"+bean.getContactNumber()+"'</td><td>'"+bean.getPreviousBloodDonationDate()+"'</td><td>'"+bean.getOption_for_Donation()+"'</td> <td>'"+bean.getPreferredReminderService()+"'</td> <td><a href='servletRegistration?ID="+bean.getID()+"&&process=update'>Update</a></td><td><a href='servletRegistration?ID="+bean.getID()+"&&process=delete'>Delete</a></td></tr>");
	}

%>
</table>
</div>
-->
<script>
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches



$(".next").click(function(){

	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".previous").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".submit").click(function(){
	return false;
})

</script>
</body>
</html>










