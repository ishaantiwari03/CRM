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

PreparedStatement pst=con.prepareStatement("insert into customer_master(city,industry,sub_industry,cname,contact,contact_name) values(?,?,?,?,?,?)");
pst.setString(1, city);
pst.setString(2, industry);
pst.setString(3, sub_industry);
pst.setString(4, cname);
pst.setString(5, contact);
pst.setString(6, contact_name);
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
<jsp:include page="footer.jsp"></jsp:include>