<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Contact Us</title>
    <link rel="icon" href="resources/images/logo.jpg" type="image/x-icon">
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
    font-size: 17px;
}

.container {
    position: relative;
    max-width: 100%;
    margin: 0 auto;
}

.container img {vertical-align: middle;}
.address {
  margin-bottom: 1rem;
  font-style: sans-serif;
  line-height: inherit;
}
.container .content {
    position: absolute;
    top: 0;
    background: "#FFFFFF"; /* Black background with transparency */
    color: #000000;
    width: 100%;
    padding: 20px;
}
</style>
</head>
<body>
<center><img src="resources/images/logo.jpg" width="5%"height="30%"/>
  <h2 style="color:#04ed14;font-family:Script MT;font-size:30px;">Medicure Pharamaceuticals Pvt Ltd </h2></center>
<jsp:include page="Header.jsp"/>
<div class="container">
  <img src="resources/images/contactus.jpg" style="width:100%;">
  <div class="content">
  <br><br><br><br><br><br><br><br><br><br><br><br>
 <center> <l style="color:#0dd820;font-size:20px;"><b>Email @ : <i>medicurepharma@gmail.com</i></b></l><br>
<l style="color:#0dd820;font-size:18px;"><b>Ph : <i>9092692804,+258 254 2541,65845255</i></b></l><br>
<l style="color:#0dd820;font-size:18px;"><b>Website : <i>www.medicure.in</i></b></l><br>
<l style="color:#0dd820	;font-size:18px;"><b>Address :<i>Andries Bickerweg 5<br>2517 JP The Hague<br>The Netherlands</i></b></l><br>
</center>

  </div>
</div>
<jsp:include page="Footer.jsp"/>
</body>
</html>