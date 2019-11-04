<%
if(session.getAttribute("name")==null){
	response.sendRedirect("index.jsp");
	return;
}

%>

<html>
<head>
<title>Home</title>
</head>
<body style="margin:0px;">
<jsp:include page="Header.jsp"></jsp:include>

<div>
<h1 style= "font-family: Arial, Helvetica, sans-serif; position: absolute;top: 80px; left:630px; color: #3d6fb8; font-size: 45px;"> WELCOME </h1></div>
<img style="width:100%;height:725px;"src="img\CRM.jpg">

</body>
</html>
