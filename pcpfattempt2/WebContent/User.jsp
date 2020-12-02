<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Listing"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
    td = tr[i].getElementsByTagName("td")[1];
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
	    td = tr[i].getElementsByTagName("td")[4];
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
</head>
<body>
<h3>JobStudio</h3>
			<ul>
				<li><a href="#">Buy</a></li>
				<li><a href="AddListing.jsp">Sell</a></li>
				<li><a href="index.html">Logout</a></li>
			</ul>

<h2><strong><center>Listings</center></strong></h2>
<input type="text" id="myInput1" onkeyup="myFunction1()" placeholder="Search acc to Name..">
<input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Search acc to location..">
	<table border="1" width="500" align="center" id="myTable">
		<tr class="header">
			<th style="width:60%;" ><b>ID</b></th>
			<th style="width:60%;"><b>Name</b></th>
			<th style="width:60%;"><b>Description</b></th>
			<th style="width:60%;"><b>Cost</b></th>
			<th style="width:60%;"><b>Location</b></th>
			<th style="width:60%;"><b>Mobile</b></th>
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