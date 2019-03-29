
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>User Login</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script> 
       function validate()
       {
              var f1=document.myForm.t1.value;
              var f2=document.myForm.t2.value;
              var f3=document.myForm.t3.value;
              var f4=document.myForm.t4.value;
              var f5=document.myForm.t5.value;
              var f6=document.myForm.t6.value;
              var uid=f5.length;
              var pwd=f6.length;
              var f7=document.getElementById("t7");
              var gen=f7.options[f7.selectedIndex].value;
              
              if( f1=="" && f2=="" && f3=="" && f4=="" && f5=="" && f6=="")
              {
                     alert('Please enter valid credentials');
                     return false;
              }
              
              
              if(f1==""  )
              {  
                     document.getElementById("namelocation").innerHTML="Please enter your  first name";
                     return false;

              }
              
              
              if(f2=="" )
              {  
                     document.getElementById("lastlocation").innerHTML="Please enter your  last name";
                     return false;
                   
              }
              
            
       
              if(f3=="")
              {  
                     document.getElementById("agelocation").innerHTML="Please enter your age";
                     return false;
                
              }
              else if(f3<18 || f3>45)
              {
                     document.getElementById("agelocation").innerHTML="Please enter age between 18 and 65";
                     return false;
                  
              }
              if(gen==0)
              {
            	  document.getElementById("genlocation").innerHTML="Please select gender";
            	  return false;
            	 
              }
              if(isNaN(f4))
              {
                     document.getElementById("conlocation").innerHTML="Please enter valid contact";
                     return false;
                    
              }  
              
              if(f5=="" )
              {  
                     document.getElementById("usrlocation").innerHTML="Please enter your userid";
                     return false;
                    
              }
              
              else if(f5<6 || f5>10)
              {
                     document.getElementById("usrlocation").innerHTML="Please enter userid  with 6 to 10 characters";
                     return false;
                   
              }
              if(f6=="")
              {  
                     document.getElementById("passlocation").innerHTML="Please enter your password";
                     return false;
                     
              }
              else if(f6<6 || f6>10)
              {
                     document.getElementById("passlocation").innerHTML="Please enter password with 6 to 10 characters";
                     return false;
                  
              }
             
              return true;
       }
       </script>
<style>


.login-box {
	width: 320px;
	height: 500px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 70px 30px;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-align: left;
	font-size: 22px;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.login-box input[type="text"], input[type="password"], input[type="number"]
	{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 30px;
	color: #000000;
	font-size: 16px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc79;
	color: #fff;
}

.login-box a {
	text-decoration: none;
	font-size: 14px;
	color: #fff;
}

.login-box a:hover {
	color: #39dc79;
}

.login-box {
	width: 320px;
	height: 700px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 70px 30px;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

.login-box s {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 30px;
	color: #000000;
	font-size: 16px;
}
</style>
</head>
<body background="<c:url value="/resources/images/reg3.jpg"> </c:url> ">
	<nav class="navbar navbar-expand-sm  " id="nav" style="color:blue">
	<div class="container-fluid">
		<div class="col-md-4 logo_agile">
			<h1>
				<span style="color: red">S</span>mart <span style="color: red">S</span>hop
				<img src="<c:url value="/resources/images/logo2.png"></c:url> "
					alt=" logo">

			</h1>
		</div>



	</div>
	<!-- /.container-fluid --> </nav>
	<div class="login-box">
		<img src="<c:url value="/resources/images/avatar.png"> </c:url> "
			class="avatar">
		<h1>User Registration Here</h1>
		<c:url var="validateUrl" value="/user/userRegistrationProcess" />
		<form id="user_form" action="${validateUrl}" method="POST"
			class="well" name="myForm">

			<p style="color: #000000">
				<span style="color: red">*</span>First Name
			</p>
			<input type="text" id="t1" name="fname"
				placeholder="Enter First Name" required>
			<p style="color: #000000">
				<span style="color: red">*</span>Last Name
			</p>
			<input type="text" id="t2" name="lname"
				placeholder='Enter the Last Name' required>
			<p style="color: #000000">
				<span style="color: red">*</span>Age
			</p>
			<input type="number" id="t3" name="age" placeholder='Enter the Age'
				required>
			<p style="color: #000000">
				<span style="color: red">*</span>Gender
			</p>
			<select name="gender" id="t7">
				<option value="0" style='color: #000000'>--Select--</option>
				<option value="male" style='color: #000000'>Male</option>
				<option value="female" style='color: #000000'>Female</option>
			</select>
			<p style="color: #000000">Contact</p>
			<input type="number" id="t4" pattern="[1-9]{1}[0-9]{9}"
				name="contact" placeholder='Enter the Contact Number' maxlength="10"
				required>
			<p style="color: #000000">
				<span style="color: red">*</span>Username
			</p>
			<input type="text" name="userid" id="t5" placeholder="Enter Username"
				required>

			<p style="color: #000000">
				<span style="color: red">*</span>Password
			</p>
			<input type="password" name="pwd" id="t6"
				placeholder="Enter Password" required> <br>
			<button id="confirm_user" type="submit" onclick="return validate()"
				class="btn btn-primary">Register</button>
			
		</form>

	</div>
</body>
</html>