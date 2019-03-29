<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout </title>
</head>
<body background="<c:url value="/resources/images/logout.gif"></c:url>" style="  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; background-size: cover">
  <nav class="navbar navbar-expand-sm" id="nav" style="color:blue">
  <div class="container-fluid">
    <div class="col-md-4 logo_agile">
	    <h1>
		     <span style="color:red">S</span>mart
		      <span style="color:red">S</span>hop
		      <img  src="<c:url value="/resources/images/logo2.png"></c:url>" alt=" logo">

	     </h1>
	      </div>
	     
   
  </div>
</nav>
<br><br>
 <div class="container" >
<h4 style="color:green">You have been logout Successfully!!!</h4>
<a href="userIndex">Click here to Sign in Again!!</a>
<%session.invalidate(); %>
</div>
</body>
</html>