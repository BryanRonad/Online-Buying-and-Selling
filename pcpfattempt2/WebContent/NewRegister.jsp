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
	<h3>JobStudio</h3>
	<ul>
		<li><a href="index.html">Home</a></li>
	</ul>
</header>
	
<form action="RegisterUser" METHOD="post" style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account</p>
    <hr class="new">

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>

    
    <label for="email"><b>First name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstName" required>
    
    <label for="email"><b>Last name:</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastName" required>
    
    <label for="psw"><b>Set a Password</b></label>
    <input type="password" placeholder="Enter Password" name="passwd"  pattern=".{6,}" title="Minimum 6 characters" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" title="Minimum 6 characters" pattern=".{6,}" required>
    </br></br>  
								
<hr class="new1">
  

    <div class="clearfix">
      <button onclick="location.href = 'index.html';" type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>
