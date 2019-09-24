<%@include file="dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>Search by Customer Name</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String nm=request.getParameter("nm");
String p="SELECT * from customer_master where cname like ?";
PreparedStatement pst=con.prepareStatement(p);
pst.setString(1, nm+"%");
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table border='1' width='400'>
<tr>
				<td>ID</td>
				<td>Customer Name</td>
				<td>Industry</td>
				<td>Sub-Industry</td>
				<td>Contact Person</td>
				<td>Contact Number</td>
				<td>City</td>
				</tr>
<%
do{
	
	String cid=rs.getString("cid");
	String cname=rs.getString("cname");
	String industry=rs.getString("industry");
	String sub_industry=rs.getString("sub_industry");
	String contact_name=rs.getString("contact_name");
	String contact=rs.getString("contact");
	String city=rs.getString("city");
%>
				
				<tr>
				<td><%=cid%></td>
				<td><%=cname%></td>
				<td><%=industry %></td>
				<td><%=sub_industry%></td>
				<td><%=contact_name%></td>
				<td><%=contact%></td>
				<td><%=city%></td>
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