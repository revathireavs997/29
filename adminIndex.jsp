<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>        
<title>Shop Manager Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<style>

.login-box{
    width: 320px;
    height: 500px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
    margin-top:100px;
}
.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: left;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 20px;
}
.login-box input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #000000;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #fff;
}

.login-box a{
    text-decoration: none;
    font-size: 14px;
    color: #fff;
}
.login-box a:hover
{
    color: #39dc79;
}
  .login-box{
    width: 320px;
    height: 500px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}
.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
</style>
<script>
function validate()
{
       var f5=document.myForm.t5.value;
       var f6=document.myForm.t6.value;
       if( f5=="" && f6=="")
       {
              alert('Please enter username and password');
       }
       else if(f5=="" )
       {
              alert('Please enter username');
       }
       else if(f6=="")
       {
              alert('Please enter password');
       }
       return true;
}
</script>
        
    </head>
 	<body background="<c:url value="/resources/images/h.png"></c:url>"style="  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; background-size: cover">

   <div class="login-box">
    <img src="<c:url value="/resources/images/avatar.png"></c:url> " class="avatar">
        <h1>Login Here</h1>
   
		<c:url var="validateUrl" value="/manager/validate" />
            <form id="user_form" action="${validateUrl}" method="POST" class="well" name="myForm"  >
   
       
            <p style="color:#000000">Username</p>
            <input type="text" name="username" placeholder="Enter Username" id="t5">
            <p style="color:#000000">Password</p>
            <input type="password" name="password" placeholder="Enter Password" id="t6">
            <br>
            <button id="confirm_user" type="submit" onclick="return validate()"class="btn btn-primary">Login</button>
             <a href="adminRegistration1">       <button id="confirm_user1" type="button" class="btn btn-primary">Register</button>  </a>  
            </form>
 
        </div>
	</body>
</html>