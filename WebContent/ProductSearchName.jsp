<%@include file="dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>Search by Product Code</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String pn=request.getParameter("pn");
String p="SELECT * from product_master where pname like ?";
PreparedStatement pst=con.prepareStatement(p);
pst.setString(1, pn+"%");
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
	
	String pcode=rs.getString("pcode");
	String pname=rs.getString("pname");
	String stock=rs.getString("stock");
%>
				
				<tr>
				<td></td>
				<td><%=pcode %></td>
				<td><%=pname %></td>
				<td><%=stock %></td>
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