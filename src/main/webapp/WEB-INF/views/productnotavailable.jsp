<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <center><img src="resources/images/logo.jpg" width="5%"height="5%"/>
  <h2 style="color:#04ed14;font-family:Script MT;font-size:30px;">Medicure Pharamaceuticals Pvt Ltd </h2></center>
        <%@ include file="Header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Not Available</title>
    <link rel="icon" href="resources/images/logo.jpg" type="image/x-icon">
  </head>
<body>
<h3>${productNA.productName } and the requested quantity is no longer available.

</h3>
<a href="<c:url value='/cart/getcart'></c:url>">Click here to go to cart</a>

</body>
</html>