<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 250px;
   max-height: 450px;
  margin: auto;
  margin-top:250px;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}
#mydiv
{
       background-color: bg-info;
}
background-color: rgba(0,0,0,.5);


</style>
</head>
<body  background="<c:url value="/resources/images/h1.jpg"></c:url>"style="  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; background-size: cover">
<div class="row">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
</div>
<div class="col-sm-4">

<div class="card">

<p><% String productimage=  "/resources/images/" + request.getParameter("productimage");
      System.out.println (productimage); 

%></p>
 <center><img src="<c:url value="<%=productimage%>"></c:url>" width="200" height="200" ></center>
  <div id="mydiv">
  <h1><%= request.getParameter("productname")%></h1>
  <p class="price">Availability <%= request.getParameter("noofitems")%></p>
  <p style="color:green">You can find this product in the <%=request.getParameter("productrack")%> Rack located in Ground Floor!</p>
  </div>
  
</div>
</div>
</body>
</html>

