<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Page</title>
</head>
<body>
<center><h1>Edit Product</h1></center>
<form id="user_form" action="/SmartShop/manager/editProcess" method="POST">

ID :<input type="text"  id="ip2" name="t1" value="<%= request.getParameter("productid")%>" readonly ><br><br>

Enter Product Rack :<input type="text"  id="ip2" name="t2" value="<%= request.getParameter("productrack")%>" ><br><br>

Enter Product name :<input type="text"  id="ip3" name="t3" value="<%= request.getParameter("productname")%>"><br><br>

No of items :<input type="text" id="ip4" name="t4" value="<%= request.getParameter("noofitems")%>"><br><br>

Date of manufacture:<input type="text" id="ip5"  name="t5" value="<%= request.getParameter("dateofmanf")%>"><br><br>

Date of expiry :<input type="text"  id="ip6"  name="t6" value="<%= request.getParameter("dateofexpiry")%>"><br><br>

Select a image: <input type="text"  id="ip7"  name="t7" value="<%=request.getParameter("productimage")%>"><br><br>

<input type=submit value=submit>
</form>
</body>
</html>                                                               