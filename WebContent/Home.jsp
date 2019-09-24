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
<body>

<jsp:include page="Header.jsp"></jsp:include>
</body>
</html>
