<%@include file="dbcon.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Customer</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String id=request.getParameter("uid");
PreparedStatement pst=con.prepareStatement("delete from customer_master where cid=?");
			pst.setString(1, id);
			int r=pst.executeUpdate();
			if(r>0){%>

<jsp:forward page="ShowAll.jsp"></jsp:forward>
<%
							}else{%>
				<h2>No Data Found</h2>
			<%}
			con.close();
			%>
</body>
</html>