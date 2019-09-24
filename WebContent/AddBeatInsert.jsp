<%@include file="dbcon.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Beat</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<% 
String beat_name =request.getParameter("beat_name");
String city =request.getParameter("city");
PreparedStatement pst=con.prepareStatement("insert into beat_master values(?,?)");
pst.setString(1, beat_name);
pst.setString(2, city);
int r=pst.executeUpdate();
if(r>0){ %>
<p align="center" style="color:#0F0">Added Successfully</p>
<%
}
else{%>
<p align="left"> Could Not Add</p>
<%}
con.close();
%>
</body>
</html>