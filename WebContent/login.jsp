<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CSS/home.css" type="text/css">
<title>Insert title here</title>
</head>


<body onload="updateYear();">


<div id="header">

</div>

<div id="left">

</div>

<div id="main">

	<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	boolean loggedIn = false;
	

if(userName == null || password == null) {
	loggedIn = false;
}else if (userName.equals("Annette") && password.equals("password")){
	loggedIn = true;
}

if (loggedIn) {
	session.setAttribute("userName", userName);
	response.sendRedirect("home.jsp");
	//out.println("<a href ='home.html'>proceed to main page </a>");
	
} else {
	out.println("Please log in");



%>
<form action="login.jsp" method = "post">
	Username:<input type = "text" name = "userName"><br>
	Passowrd:<input type = "password" name = "password"><br>
	<input type = "submit" value = "submit" name = "submit"><br>

</form>
<%
}
%>




</div>

<div id="footer">&copy; <span id="year">2014 </span> Revenue Commissioners</div>




</body>
<script src="js/functions.js"></script>







</body>
</html>