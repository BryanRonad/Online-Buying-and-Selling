<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>User Home</title>
<script >
function myFunction1() {
  // Declare variables 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
function myFunction2() {
	  // Declare variables 
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput2");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");
	  // Loop through all table rows, and hide those who don't match the search query
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[5];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    } 
	  }
	}
</script>

<style>
h2 .real{
	padding:10px;
}

::-webkit-scrollbar {
	width: 8px;
	height: 6px;
}

::-webkit-scrollbar-track {
	background-color: #1d1e22;
}

::-webkit-scrollbar-thumb {
	border-radius: 1em;
	background-color: #b3b3b3;
}

::-webkit-scrollbar-thumb:hover {
	background-color:#2d58ce;
}

	body{
		font-family: montserrat;
		background-color: #f8f8ff;
	}
.nav-links{
    		flex: 1;
	        background: #c0c0c0;
        }
.nav-links ul{
        	margin-left: 50 px;
        	display: inline;
        }
.nav-links ul li{
        	list-style: none;
        	display: inline-block;
        	padding: 8px 25px;
        }
.nav-links ul a{
        	color: #696969;
        	text-decoration: none;
        	font-size: 14px;
        }
.nav-links ul li::after{
        	content: '';
        	width: 0;
        	height: 2px;
        	background: #ffffff;
        	display: block;
        	margin: auto;
        	transition: .5s;
        }
.nav-links ul li:hover::after{
        	width: 100%;
        }
.nav-links h2 {
	position: relative;
	margin: 0;
	font-size: 2rem;
	color: black;
}
table{
	border-collapse: collapse;
	width: auto;
  margin-right: 0px;
  margin-left: 0px;

}
th{
	height: 70px;
}
th, td{
	text-align: center;
	padding: 8px;
}

.wrapper {
	padding-bottom:30px;
    margin: auto;
    width: 1000px; /*The width you want it to be when centered*/
    /* min-width works too */
}

input[type=text]{
	width: 30%;
  padding: 15px;
  margin: 5px;
  display: inline-block;
  border: none;
}
</style>
</head>
<body>
	<div class="nav-bar">
      <div class="nav-links">
      	<h2></h2>
			<ul>
				<li><a href="#">BUY</a></li>
				<li><a href="AddListing.jsp">SELL</a></li>
				<li style="float:right"><a class="active" href="index.html">LOGOUT</a></li>
			</ul>
		</div>
	</div>

<h2 class="real"><strong><center>PRODUCT LISTING</center></strong></h2>

<div class="wrapper"><center>
<!-- <label for="accToName"><b><h3>SEARCH PRODUCTS</label></h3><br> -->

<input type="text" id="myInput1" onkeyup="myFunction1()" placeholder="Search according to category">

<input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Search according to Location">
</center>
</div>

	<table border="1" width="500" align="center" id="myTable" class="center">
		<tr class="header">
			<th style="width:5%;" ><b>ID</b></th>
			<th style="width:10%;"><b>Name of seller</b></th>
			<th style="width:10%;"><b>Category</b></th>
			<th style="width:30%;"><b>Description</b></th>
			<th style="width:10%;"><b>Cost</b></th>
			<th style="width:30%;"><b>Location</b></th>
			<th style="width:20%;"><b>Mobile</b></th>
			<th style="width:60%;"><b>Image</b></th>
		</tr>
		<%
			List<Listing> J = (List<Listing>)request.getAttribute("Listings");
		if(J!=null){
			for (Listing j : J) {
		%>
		<tr>
			<td><%=j.getid()%></td>
			<td><%=j.getname()%></td>
			<td><%=j.getcategory()%></td>
			<td><%=j.getdesc()%></td>
			<td><%=j.getcost()%></td>
			<td><%=j.getlocation()%></td>
			<td><%=j.getmobile()%></td>
			<td><img src="DisplayImage.jsp?id=<%=j.getid()%>" width="400px"></td>		
		</tr>
		<%}}%>
	</table>
</body>
</html>