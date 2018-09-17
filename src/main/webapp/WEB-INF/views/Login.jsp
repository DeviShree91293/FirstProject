<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<center><img src="resources/images/logo.jpg" width="5%"height="12%"/>
  <h2 style="color:#04ed14;font-family:Script MT;font-size:30px;">Medicure Pharamaceuticals Pvt Ltd </h2></center>
		<%@ include file="Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Medicure Login</title>
    <link rel="icon" href="resources/images/logo.jpg" type="image/x-icon">
  <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 5px 10px;
    margin: 5px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

button:hover {
    opacity: 0.5;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 5px;
}

span.psw {
    float: right;
    padding-top: 10px;
}


/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

.loginbtn {
    background-color: #0c2647;
    color: white;
    padding: 5px 10px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
    opacity: 0.9;
}

.loginbtn:hover {
    opacity: 1;
}
/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}


/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<span style="color:red;">${error}</span>
<br>${msg}<br>
<c:url value="/j_spring_security_check" var="url"></c:url> 
      <form method="post" action="${url}">
    <div class="container">
      <label for="email"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="j_username"/>
		
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="j_password"/>
        
      <button type="submit" class="loginbtn">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</body>
<jsp:include page="Footer.jsp"/>

</html>
