<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<title>Register Form</title>
    <link rel="icon" href="resources/images/logo.jpg" type="image/x-icon">
  <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 10px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 50%;
    padding: 10px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>
<body>
<center><img src="resources/images/logo.jpg" width="5%"height="30%"/>
  <h2 style="color:#04ed14;font-family:Script MT;font-size:30px;">Medicure Pharamaceuticals Pvt Ltd </h2></center>
<jsp:include page="Header.jsp"/>


 <form:form method="post" action="save" modelAttribute="Register">  
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="name"><b>Name</b></label>
	<form:input type="text" path="UserName" placeholder="Enter Name" name="name" />
	
	 <label for="location"><b>UserLocation</b></label>
	<form:input type="text" path="UserLocation" placeholder="Enter Location" name="location" />
	
	 <label for="age"><b>UserAge</b></label>
	<form:input type="text" path="UserAge" placeholder="Enter Age" name="age" />
	
    <label for="email"><b>Email</b></label>
    <form:input type="text" path="Email" placeholder="Enter Email" name="email" />

    <label for="psw"><b>Password</b></label>
    <form:input type="password" path="Password" placeholder="Enter Password" name="psw" />

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" />
    
    <label for="psw"><b>Mobile Number</b></label>
    <form:input type="password" path="PhoneNumber" placeholder="Enter your mobile no" name="psw" />

     <div class="radio">
     <label><b>Gender</b></label>
     <form:radiobutton path="UserGender" value="Male" label="Male"/>
     <form:radiobutton path="UserGender" value="Female" label="Female"/>
    </div>
    
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms and Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a></p>
  </div>
</form:form>
<jsp:include page="Footer.jsp"/>
</body>
</html>
