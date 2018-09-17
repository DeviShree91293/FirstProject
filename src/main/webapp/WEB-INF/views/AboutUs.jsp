<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
    <link rel="icon" href="resources/images/logo.jpg" type="image/x-icon">
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
    max-width: 800px;
    margin: 0 auto;
}

.container img {vertical-align: middle;}

.container .content {
    position: absolute;
    top: 0;
    background: "#FFFFFF"; /* Black background with transparency */
    color: #f1f1f1;
    width: 100%;
    padding: 20px;
}
</style>
</head>
<body>
<center><img src="resources/images/logo.jpg" width="5%"height="30%"/>
  <h2 style="color:#04ed14;font-family:Script MT;font-size:30px;">Medicure Pharamaceuticals Pvt Ltd </h2></center>
<jsp:include page="Header.jsp"/>
<div class="container" >
<div class="content">
<h1 style="color:#022806">Welcome to Medi-Cure Pharmacy</h1>
<p style="color:#058d1d;font-size:18px;font-family:Palatino Linotype;">
<b>For over 30 years, Medi-Cure Pharmacy has been an independently owned retail pharmacy that strives to provide quality, personal health care services. Our friendly and knowledgeable staff prides itself on being on a first-name basis with our patients and always going the extra mile to help. Whether you need prescriptions filled, compounding, or assistance with Medicure – our team has you covered!</b>
</p>
<p style="color:#058d1d;font-size:18px;font-family:Palatino Linotype;">
<b>Above all, we are dedicated to our patients and work hard to ensure they get the best services available at the best prices.</b></p>
<p style="color:#058d1d;font-size:18px;font-family:Palatino Linotype;"><b>
Stop in to Medi-Cure Pharmacy today for exceptional health and wellness services.</b>
</p>
</div>
</div>
<jsp:include page="Footer.jsp"/>
</body>
</html>