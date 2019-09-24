<%@include file="dbcon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show all customers</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
PreparedStatement pst=con.prepareStatement("select cid,cname,city,industry from customer_master");
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table border='1' width='400'>
<tr>
				<td>ID</td>
				<td>Customer Name</td>
				<td>City</td>
				<td>Industry</td>
				</tr>
<%
do{
	
	String cid=rs.getString("cid");
	String city=rs.getString("city");
	String industry=rs.getString("industry");
	String cname=rs.getString("cname");
	
	

%>
				
				<tr>
				<td><%=cid%></td>
				<td><%=cname%></td>
				<td><%=city %></td>
				<td><%=industry %></td>
				<td><a href='CustomerDetail.jsp?cid=<%=cid%>'>Details</a></td>
				<td><a href='CustomerDelete.jsp?cid=<%=cid%>'  onclick="return confirm('Are You Sure to Remove User')" >Delete</a></td>
				<td><a href='CustomerEdit?cid=<%=cid%>' >Edit</a></td>
				</tr><%
				}while(rs.next());%>
				</table>
				<%
					}else{%>
							<h2>Sorry! No Data</h2>
						<%}
						con.close();
				%>

</body>
</html>