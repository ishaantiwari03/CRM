<%@include file="dbcon.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<% 
String pname=request.getParameter("pname");
int pid=Integer.parseInt(request.getParameter("pid"));
String pcode=request.getParameter("pcode");
double stock=Double.parseDouble(request.getParameter("stock"));

PreparedStatement pst=con.prepareStatement("insert into product_master values(?,?,?,?)");
pst.setInt(1, pid);
pst.setString(2, pcode);
pst.setString(3, pname);
pst.setDouble(4, stock);
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