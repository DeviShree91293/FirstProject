<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Medicure Home</title>
      <link rel="icon" href="resources/images/logo.jpg" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
img {
    max-width: 30%;
    height: 100%;
    object-fit: cover;
}
</style>
  
</head>
<body>
<center><img src="resources/images/logo.jpg" width="5%"height="5%"/>
  <h2 style="color:#04ed14;font-family:Script MT;font-size:30px;">Medicure Pharamaceuticals Pvt Ltd </h2></center>
<jsp:include page="Header.jsp"/>
<br>
<div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    
    </ol>

    <!-- Wrapper for slides -->
    <center>
    <div class="carousel-inner">
      <div class="item active">
       <img src="resources/images/Type2d.jpg" width="80%" alt="Picture1">
      </div>

      <div class="item">
        <img src="resources/images/lmategm.jpg" width="80%" alt="Picture2" >
      </div>
    
      <div class="item">
        <img src="resources/images/Lmateplus.jpg" width="80%" alt="Picture3">
      </div>
      
      <div class="item">
        <img src="resources/images/clinibp20ch.jpg" width="80%" alt="Picture4">
      </div>
      
    <div class="item">
        <img src="resources/images/olmibp20ch.jpg" width="80%" alt="Picture5">
      </div>
    
    </div>
    </center>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> <br><br>

<jsp:include page="Footer.jsp"/>

</body>
</html>

