<!DOCTYPE html>
<html>
<link rel = "stylesheet" type="text/css" href="header.css">

<style>
body {
	margin:0px;
	font-family: montserrat;
	background: #fffff0;
}
* {box-sizing: border-box}

	.container{
        font-size: 20px;
        color: #800000;
    }
    .container h1{
        text-align: center;
        color: #800000;

    }

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #fffafa;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr{
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
p{
	text-align: center;
}
/* Set a style for all buttons */
button {
  background-color: #fa8072;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.9;
}

button:hover {
  opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #4682b4;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 20%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
} 
   
    hr.new, hr.new1{
        color: #f08080;
    }
    
    header{
	position: relative;
	padding: 2em;
	display: flex;
	align-items: center;
	font-size: 1rem;
	background-color: #1d1e22;
	top: 0;
	z-index: 2;
	background-color: #1d1e22;
}


</style>
<body>
<header>
	<h3>eBuy</h3>
	<ul>
		<li><a href="index.html">Home</a></li>
	</ul>
</header>
	
<form action="AddListing" enctype="multipart/form-data" method="post" style="border:1px solid #ccc">
  <div class="container">
    <p>Please fill in this form to create a listing</p>
    <hr class="new">

    <label for="email"><b>Name of Seller</b></label>
    <input type="text" placeholder="Enter your name" name="name" required>
    
        <label for="email"><b>Type of item</b></label>
    <input type="text" placeholder="What category does your item fall under? Eg. Phone, Car" name="category" required>

    
    <label for="email"><b>Description</b></label>
    <input type="text" placeholder="Give name and small description about your item" name="desc" required>
    
    <label for="email"><b>Cost</b></label>
    <input type="text" placeholder="Enter desired cost of item" name="cost" required>
    
    <label for="psw"><b>Set Location</b></label>
    <input type="text" placeholder="Location of sale" name="location"  required>
    
    <label for="psw"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter mobile number" name="mobile"  required>
    
    <label for="img">Select image:</label>
  	<input type="file" id="img" name="image" accept="image/*">
    </br></br>  
								
<hr class="new1">
  

    <div class="clearfix">
      <button onclick="location.href = 'index.html';" type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Add Listing</button>
    </div>
  </div>
</form>

</body>
</html>
