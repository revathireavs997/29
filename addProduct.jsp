<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Product </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <style>
  
.form-style-5{
       max-width: 500px;
       max-height: 1000px;
       padding: 10px 20px;
       background: #f4f7f8;
       opacity: 1.0;
       margin: 40px auto;
       padding: 20px;
       background: transparent;
       border-radius: 8px;
       font-family: Georgia, "Times New Roman", Times, serif;
}
.form-style-5 fieldset{
       border: none;
}
.form-style-5 legend {
       font-size: 3.5em;
       margin-bottom: 10px;
       color: #FFFFFF;
}
.form-style-5 label {
       display: block;
       margin-bottom: 8px;
}
.form-style-5 input[type="text"],
.form-style-5 input[type="date"],
.form-style-5 input[type="datetime"],
.form-style-5 input[type="email"],
.form-style-5 input[type="number"],
.form-style-5 input[type="search"],
.form-style-5 input[type="time"],
.form-style-5 input[type="url"],
.form-style-5 textarea,
.form-style-5 select {
       font-family: Georgia, "Times New Roman", Times, serif;
       background: rgba(255,255,255,.1);
       border: none;
       border-radius: 4px;
       font-size: 15px;
       margin: 0;
       outline: 0;
       padding: 10px;
       width: 100%;
       box-sizing: border-box; 
       -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box; 
       background-color:   white;
       color: #191970;
       -webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
       box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
       margin-bottom: 30px;
}
.form-style-5 input[type="text"]:focus,
.form-style-5 input[type="date"]:focus,
.form-style-5 input[type="datetime"]:focus,
.form-style-5 input[type="email"]:focus,
.form-style-5 input[type="number"]:focus,
.form-style-5 input[type="search"]:focus,
.form-style-5 input[type="time"]:focus,
.form-style-5 input[type="url"]:focus,
.form-style-5 textarea:focus,
.form-style-5 select:focus{
       background: #d2d9dd;
}
.form-style-5 select{
       -webkit-appearance: menulist-button;
       height:35px;
}
.form-style-5 .number {
       background: #1abc9c;
       color: #109177;
       height: 30px;
       width: 30px;
       display: inline-block;
       font-size: 5.0em;
       margin-right: 4px;
       line-height: 30px;
       text-align: center;
       text-shadow: 0 1px 0 rgba(255,255,255,0.2);
       border-radius: 15px 15px 15px 0px;
}

.form-style-5 input[type="submit"],
.form-style-5 input[type="button"]
{
       position: relative;
       display: block;
       padding: 19px 39px 18px 39px;
       color: #FFF;
       margin: 0 auto;
       background: #1abc9c;
       font-size: 18px;
       text-align: center;
       font-style: normal;
       width: 60%;
       height: 50px;
       border: 1px solid #16a085;
       border-width: 1px 1px 3px;
       margin-bottom: 10px;
}
.form-style-5 input[type="submit"]:hover,
.form-style-5 input[type="button"]:hover
{
       background: #109177;
}

</style>
</head>
<body background="<c:url value="/resources/images/13.jpg"></c:url>">
<div class="container-fluid">
  <div class="row">
<div class="col-sm-4">
</div>
<div class="col-sm-3">
</div>
<div class="col-sm-5">
<br>
<br>
<div class="form-style-5">
<form id="user_form" action="/SmartShop/manager/adminRegistration" method="POST">
<fieldset>
<legend><span class="number"></span>Add Product</legend>
<input type="text" name="t2" placeholder="Product  Rack*">
<input type="text" name="t3" placeholder="Product Name *">
<input type="text" name="t4" placeholder="No Of Items *">
<input type="text" name="t5" placeholder="Date Of Manufacture *">
<input type="text" name="t6" placeholder="Date Of Expiry *">
<input type="text" name="t7" placeholder="Product Image*">

<input type="submit" value="Apply">
</fieldset>
</form>
</div>
</div>
</div>

</body>
</html>

