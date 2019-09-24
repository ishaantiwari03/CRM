<%@include file="dbcon.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<% 
String cname=request.getParameter("cname");
int cid=Integer.parseInt(request.getParameter("cid"));
String industry=request.getParameter("industry");
String sub_industry=request.getParameter("sub_industry");
String city=request.getParameter("city");
String contact_name=request.getParameter("contact_name");
String contact=request.getParameter("contact");

PreparedStatement pst=con.prepareStatement("insert into customer_master values(?,?,?,?,?,?,?)");
pst.setInt(1, cid);
pst.setString(2, city);
pst.setString(3, industry);
pst.setString(4, sub_industry);
pst.setString(5, cname);
pst.setString(6, contact);
pst.setString(7, contact_name);
int r=pst.executeUpdate();
if(r>0){ %>
<p align="center" style="color:#0F0">Added Successfully!</p>
<%
}
else{%>
<p align="left"> Could Not Add</p>
<%}
con.close();
%>
</body>
</html>