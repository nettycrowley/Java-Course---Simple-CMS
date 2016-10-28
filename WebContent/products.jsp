<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.professionaltraining.rc.CmsMenu"%>
    
     <%
     CmsMenu menu = new CmsMenu();
    String userName = (String)session.getAttribute("userName");
    
    if (userName == null) {
    	response.sendRedirect("login.jsp");
    }
    %>

<html><head>
  <link rel="stylesheet" href="CSS/home.css" type="text/css">
</head>

<body onload="updateYear();">


	<div id="header">
		<div id="nav" class="nav">
			<%=menu.getTopMenu()%>
		</div>
		<div>Welcome <%=userName %></div>
	</div>
	
<div id="left">
	<%=menu.getSideMenu() %>
</div>

<div id="main">

<h1>Your Details</h1>
		
		<form action ="processform.jsp" method="post" onsubmit="return validate();">
		
			FirstName:<input type = "text" name = "firstName" id = "firstName"> <br>
			
			Password: <input type = "password" name = "password" id = "password"> <br>
			
			
			Vegetarian:<input type = "checkbox" name = "vegetarian"> <br>
			
			Favourite Colour: 
			<select name = "favouriteColour" id = "favouriteColour">
				<option value = "red">Red</option>
				<option value = "green">Green</option>
				<option value = "blue">Blue</option>			
			</select>
			<br>
			
			
			<input type="submit" name="submit" value="submit" id = "submit">
		
		</form>

</div>

<div id="footer">&copy; <span id="year">2014 </span> Revenue Commissioners</div>


<script src="JS/functions.js"></script>

</body>


</html>
