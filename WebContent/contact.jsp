
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

<div id="main">Contacts</div>

<div id="footer">&copy; <span id="year">2014 </span> Revenue Commissioners</div>




</body>
<script src="js/functions.js"></script>

</html>
