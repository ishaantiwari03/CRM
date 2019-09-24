<%@include file="dbcon.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String id=request.getParameter("uid");

PreparedStatement pst=con.prepareStatement("select * from customer_master where cid=?");
pst.setString(1, id);
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table align="center" border='2' width='100%'>
<tr>
				<td>ID</td>
				<td>Customer Name</td>
				<td>City</td>
				<td>Industry</td>
				<td>Sub-Industry</td>
				<td>Contact Person</td>
				<td>Contact number</td>
				</tr>
<%
do{
	
	String cid=rs.getString("cid");
	String city=rs.getString("city");
	String contact_name=rs.getString("contact_name");
	String contact=rs.getString("contact");
	String sub_industry=rs.getString("sub_industry");
	String industry=rs.getString("industry");
	String cname=rs.getString("cname");
	
	

%>
				
				<tr>
				<td><%=cid%></td>
				<td><%=cname%></td>
				<td><%=city %></td>
				<td><%=industry %></td>
				<td><%=sub_industry%></td>
				<td><%=contact_name%></td>
				<td><%=contact%></td>
				</tr><%
				}while(rs.next());%>
				</table>
				<%
					}else{%>
							<h2>Sorry! No Data</h2>
						<%}
						con.close();
						rs.close();
				%>

</body>
</html>