<%@page import="javax.swing.text.Document"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<%@ page import="com.dao.ProductDao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Welcome</title>
       <meta charset="utf-8">      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
		
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script>
  
        function sortTable(n) {
        	  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
        	  table = document.getElementById("myTable");
        	  switching = true;
        	  //Set the sorting direction to ascending:
        	  dir = "asc"; 
        	  /*Make a loop that will continue until
        	  no switching has been done:*/
        	  while (switching) {
        	    //start by saying: no switching is done:
        	    switching = false;
        	    rows = table.rows;
        	    /*Loop through all table rows (except the
        	    first, which contains table headers):*/
        	    for (i = 1; i < (rows.length - 1); i++) {
        	      //start by saying there should be no switching:
        	      shouldSwitch = false;
        	      /*Get the two elements you want to compare,
        	      one from current row and one from the next:*/
        	      x = rows[i].getElementsByTagName("TD")[n];
        	      y = rows[i + 1].getElementsByTagName("TD")[n];
        	      /*check if the two rows should switch place,
        	      based on the direction, asc or desc:*/
        	      if (dir == "asc") {
        	        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase() ) {
        	          //if so, mark as a switch and break the loop:
        	          shouldSwitch= true;
        	          break;
        	        }
        	        
        	      } else if (dir == "desc") {
        	        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
        	          //if so, mark as a switch and break the loop:
        	          shouldSwitch = true;
        	          break;
        	        }
        	        
        	      }
        	    }
        	    if (shouldSwitch) {
        	      /*If a switch has been marked, make the switch
        	      and mark that a switch has been done:*/
        	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        	      switching = true;
        	      //Each time a switch is done, increase this count by 1:
        	      switchcount ++;      
        	    } else {
        	      /*If no switching has been done AND the direction is "asc",
        	      set the direction to "desc" and run the while loop again.*/
        	      if (switchcount == 0 && dir == "asc") {
        	        dir = "desc";
        	        switching = true;
        	      }
        	    }
        	  }
        	}
        
        $(document).ready(function(){
  		  $("#myInput").on("keyup", function() {
  		    var value = $(this).val().toLowerCase();
  		    $("#myTable tr").filter(function() {
  		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
  		    });
  		  });
  		});
        </script>
        <style>

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: left;
    font-size: 22px;
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  padding: 10px;
}
.grid-item {
 
  padding: 20px;
  font-size: 20px;
  text-align: center;
}



$baseColor: #398B93;
$borderRadius: 10px;
$imageBig: 100px;
$imageSmall: 60px;
$padding: 10px;

body {
   background-color: lighten($baseColor, 30%);
   * { box-sizing: border-box; }
}

.header {
   background-color: darken($baseColor, 5%);
   color: white;
   font-size: 1.5em;
   padding: 1rem;
   text-align: center;
   text-transform: uppercase;
}

img {
   border-radius: 50%;
   height: $imageSmall;
   width: $imageSmall;
}

.table-users {
   border: 1px solid darken($baseColor, 5%);
   border-radius: $borderRadius;
   box-shadow: 3px 3px 0 rgba(0,0,0,0.1);
   max-width: calc(100% - 2em);
   margin: 1em auto;
   overflow: hidden;
   width: 800px;
}

table {
   width: 100%;
   
   td, th { 
      color: darken($baseColor, 10%);
      padding: $padding; 
   }
   
   td {
      text-align: center;
      vertical-align: middle;
      
      &:last-child {
         font-size: 0.95em;
         line-height: 1.4;
         text-align: left;
      }
   }
   
   th { 
      background-color: lighten($baseColor, 50%);
      font-weight: 300;
   }
   
   tr {     
      &:nth-child(2n) { background-color: white; }
      &:nth-child(2n+1) { background-color: lighten($baseColor, 55%) }
   }
}

@media screen and (max-width: 700px) {   
   table, tr, td { display: block; }
   
   td {
      &:first-child {
         position: absolute;
         top: 50%;
         transform: translateY(-50%);
         width: $imageBig;
      }

      &:not(:first-child) {
         clear: both;
         margin-left: $imageBig;
         padding: 4px 20px 4px 90px;
         position: relative;
         text-align: left;

         &:before {
            color: lighten($baseColor, 30%);
            content: '';
            display: block;
            left: 0;
            position: absolute;
         }
      }

      &:nth-child(2):before { content: 'Name:'; }
      &:nth-child(3):before { content: 'Email:'; }
      &:nth-child(4):before { content: 'Phone:'; }
      &:nth-child(5):before { content: 'Comments:'; }
   }
   
   tr {
      padding: $padding 0;
      position: relative;
      &:first-child { display: none; }
   }
}

@media screen and (max-width: 500px) {
   .header {
      background-color: transparent;
      color: lighten($baseColor, 60%);
      font-size: 2em;
      font-weight: 700;
      padding: 0;
      text-shadow: 2px 2px 0 rgba(0,0,0,0.1);
   }
   
   img {
      border: 3px solid;
      border-color: lighten($baseColor, 50%);
      height: $imageBig;
      margin: 0.5rem 0;
      width: $imageBig;
   }
   
   td {
      &:first-child { 
         background-color: lighten($baseColor, 45%); 
         border-bottom: 1px solid lighten($baseColor, 30%);
         border-radius: $borderRadius $borderRadius 0 0;
         position: relative;   
         top: 0;
         transform: translateY(0);
         width: 100%;
      }
      
      &:not(:first-child) {
         margin: 0;
         padding: 5px 1em;
         width: 100%;
         
         &:before {
            font-size: .8em;
            padding-top: 0.3em;
            position: relative;
         }
      }
      
      &:last-child  { padding-bottom: 1rem !important; }
   }
   
   tr {
      background-color: white !important;
      border: 1px solid lighten($baseColor, 20%);
      border-radius: $borderRadius;
      box-shadow: 2px 2px 0 rgba(0,0,0,0.1);
      margin: 0.5rem 0;
      padding: 0;
   }
   
   .table-users { 
      border: none; 
      box-shadow: none;
      overflow: visible;
   }
}

        </style>
    </head>
    <body background="<c:url value="/resources/images/classical_colorful.jpg"></c:url>" style="background-repeat: no-repeat;
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
	        <h3 class="navbar-nav ml-auto" style="color:blue;">Welcome <%=session.getAttribute("name")%>!</h3>
	      <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="userLogout" style="color:blue"><h4>Logout</h4></a>
           </li>
         
         </ul>
   
  </div>
</nav>
    <div class="grid-container">
     <div class="grid-item" >     	    
 <input id="myInput" type="text" placeholder="Search.." style="height:27px">
         </div> 
         
    <div class="grid-item">
    <div class="col-md-4">
    <select id="sorting" onchange="selectionChange()">
     <option value="Sort By">Sort by</option>
      <option value="Sort By A-Z" id="az" onclick="sortTable(2)">Sort By name</option>
      <option value="Sort By Rack" id="price" onclick="sortTable(1)">Sort By Rack</option>
       <option value="Sort By NoOfItems" onclick="sortTable(3)">Sort by Availability</option>
      <option value="Sort By Date of Manf" id="az" onclick="sortTable(4)">Sort By Date Of Manf</option>
</select>
</div>
</div>
</div>
   

 <!--  <div class="row">
<div class="col-sm-9">
 <table border="1" id="myTable">
	<tr>
	<th style="color:black;" onclick="sortTable(0)"><a  href="#" style="text-decoration:underline">ProductId</a></th>
		<th style="color:black;" onclick="sortTable(1)"><a  href="#" style="text-decoration:underline">ProductRack</a></th>
		<th style="color:black; "  onclick="sortTable(2)"><a  href="#" style="text-decoration:underline">ProductName</a></th>
		
		<th style="color:black;" onclick="sortTable(3)" ><a  href="#" style="text-decoration:underline">NoOfItems</a></th>
		<th style="color:black;" onclick="sortTable(4)"><a  href="#" style="text-decoration:underline">DateOfManf</a></th>
		<th style="color:black;" onclick="sortTable(5)"><a  href="#" style="text-decoration:underline">DateOfExpiry</a></th>
		<th style="color:black;" onclick="sortTable(6)"><a  href="#" style="text-decoration:underline">ProductImage</a></th>
				<th style="color:black;" ><a  href="#" style="text-decoration:underline">View</a></th>


	</tr>    
    
               <% int i = 0; %>            
    
                <c:forEach var="pro" items="${productList}">                
                <tr> 
    
                  <td><c:out value="${pro[0]}" /></td>                       
                    <td ><c:out value="${pro[1]}" /></td> 
                  <td><c:out value="${pro[2]}" /></td> 
                      <td><c:out value="${pro[3]}" /></td> 
                     <td><c:out value="${pro[4]}" /></td>  
                      <td><c:out value="${pro[5]}" /></td>  
                       <td><c:out value="${pro[6]}" /></td> 
  				<td><a href="viewProduct?productname=${pro[2]}&productimage=${pro[6]}&productrack=${pro[1]}&productid=${pro[0]}&noofitems=${pro[3]}&dateofmanf=${pro[4]}&dateofexpiry=${pro[5]}"><button align="center" >View</button>&nbsp&nbsp </a></td>
                 
                    

                </tr>
            </c:forEach>
            
	
</table>
</div>

</div>-->
 <div class="table-users">
   <div class="header">Users</div>
   
   <table cellspacing="0" id="myTable" cellspacing="20">
      	<tr>
	<th style="color:goldenrod;" onclick="sortTable(0)">Product Id</a></th>
		<th style="color:goldenrod;" onclick="sortTable(1)">Rack No</a></th>
		<th style="color:goldenrod; "  onclick="sortTable(2)">Product Name</a></th>
		
		<th style="color:goldenrod;" onclick="sortTable(3)" >No of Items</a></th>
		<th style="color:goldenrod;" onclick="sortTable(4)">Manufacture Date</a></th>
		<th style="color:goldenrod;" onclick="sortTable(5)">Expiry Date</a></th>
		<th style="color:goldenrod;" onclick="sortTable(6)">Product Image</a></th>
				<th style="color:goldenrod;" >View</th>

	</tr>    
    <c:forEach var="pro" items="${productList}">                
                <tr> 
    
                  <td><c:out value="${pro[0]}" /></td>                       
                    <td ><c:out value="${pro[1]}" /></td> 
                  <td><c:out value="${pro[2]}" /></td> 
                      <td><c:out value="${pro[3]}" /></td> 
                     <td><c:out value="${pro[4]}" /></td>  
                      <td><c:out value="${pro[5]}" /></td>  
                       <td><c:out value="${pro[6]}" /></td> 
  				<td><a href="viewProduct?productname=${pro[2]}&productimage=${pro[6]}&productrack=${pro[1]}&productid=${pro[0]}&noofitems=${pro[3]}&dateofmanf=${pro[4]}&dateofexpiry=${pro[5]}"><img src="<c:url value="/resources/images/images1.jpg"></c:url>" width="70px" height="70px" /></a></td>
                </tr>
            </c:forEach>
   </table>
</div>
         
    </body>
    </html>