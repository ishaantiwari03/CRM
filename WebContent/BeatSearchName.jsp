<%@include file="dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>Search by Customer Name</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String bn=request.getParameter("bn");
String p="SELECT * from beat_master where beat_name like ?";
PreparedStatement pst=con.prepareStatement(p);
pst.setString(1, bn+"%");
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