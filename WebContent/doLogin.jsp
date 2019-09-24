<%@include file="dbcon.jsp"%>
<html>
<head>
<title>doLogin</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String u =request.getParameter("uid");
String p =request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement("select name from login where uid=? and pwd=?");
pst.setString(1, u);
pst.setString(2, p);
ResultSet rs=pst.executeQuery();
if(rs.next()){
	String nm=rs.getString("name");
	session.setAttribute("name",nm);

	response.sendRedirect("Home.jsp");

}else{
	request.setAttribute("error", "Invalid Credentials");
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%}
con.close();
rs.close();
%>
</body>
</html>