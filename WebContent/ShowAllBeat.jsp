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
PreparedStatement pst=con.prepareStatement("select * from beat_master");
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table border='1' width='400'>
<tr>
				<td>ID</td>
				<td>Beat Name</td>
				<td>City</td>
				</tr>
<%
do{
	
	String beat_name=rs.getString("beat_name");
	String city=rs.getString("city");
	
	
	

%>
				
				<tr>
				<td></td>
				<td><%=beat_name%></td>
				<td><%=city %></td>
				<td><a href='CustomerDelete.jsp?beat_name=<%=beat_name%>'  onclick=\"return confirm('Are You Sure to Remove User')\" >Delete</a></td>
				<td><a href='CustomerEdit?beat_name=<%=beat_name%>' >Edit</a></td>
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