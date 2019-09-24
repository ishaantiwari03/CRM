<%@include file="dbcon.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Customers</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String cid=request.getParameter("cid");
PreparedStatement pst=con.prepareStatement("select * from customer_master where cid=?");
pst.setString(1, cid);
ResultSet rs=pst.executeQuery();
if(rs.next()){%>

<form action='CustomerUpdate.jsp' >
<table border='1' width='400'>


<% 
String city=rs.getString(2);
String industry=rs.getString(3);
String sub_industry=rs.getString(4);
String cname=rs.getString(5);
String contact=rs.getString(6);
String contact_name=rs.getString(7);
%>


<tr><th>Customer id</th><td><input type='hidden' name='cid' ></td></tr>
<tr><th>City</th><td><input type='text' name='city'></td></tr>
<tr><th>Industry</th><td><input type='text' name='industry'> </td></tr>
<tr><th>Sub-Industry</th><td><input type='text' name='sub_industry' ></td></tr>
<tr><th>Name</th><td><input type='text' name='cname'></td></tr>
<tr><th>Contact Number</th><td><input type='text' name='contact' ></td></tr>
<tr><th>Contact Name</th><td><input type='text' name='contact_name'></td></tr>

</table>
<button type='submit'>Update</button>
</form>

<%
}else{%>
				<h2>No Data Found</h2>
		<%	}
			con.close();
%>
<jsp:include page="footer.jsp"></jsp:include>