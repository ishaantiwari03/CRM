<%@include file="dbcon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String u =request.getParameter("uid");
String p =request.getParameter("pwd");
String nm=request.getParameter("name");
PreparedStatement pst=con.prepareStatement("insert into login values(?,?,?)");
pst.setString(1, nm);
pst.setString(2, u);
pst.setString(3, p);
int r=pst.executeUpdate();
if(r>0){ %>
<jsp:forward page="index.jsp">
<jsp:param value="Registered Successfully!" name="regmsg"/>
</jsp:forward>
<%}
else{%>
<p align="left"> Could Not Register</p>
<jsp:forward page="Login.jsp"></jsp:forward>
<%}
con.close();
%>
</body>
</html>