<%@include file="dbcon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show all Beat</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
PreparedStatement pst=con.prepareStatement("select * from product_master");
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table border='1' width='400'>
<tr>
				<td>ID</td>
				<td>Product Code</td>
				<td>Product Name</td>
				<td>Stock</td>
				</tr>
<%
do{
	String pid=rs.getString("pid");
	String pname=rs.getString("pname");
	String pcode=rs.getString("pcode");
	String stock=rs.getString("stock");
	
	
	

%>
				
				<tr>x
				<td><%=pid%></td>
				<td><%=pcode%></td>
				<td><%=pname %></td>
				<td><%=stock%></td>
				<td><a href='CustomerDelete.jsp?pid=<%=pid%>'  onclick=\"return confirm('Are You Sure to Remove User')\" >Delete</a></td>
				<td><a href='CustomerEdit?pid=<%=pid%>' >Edit</a></td>
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