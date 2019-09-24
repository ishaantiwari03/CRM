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
String p="SELECT cb.combo_id,cb.beat_name,cm.cname,cm.industry,cm.contact_name,cm.sub_industry,cm.contact,cm.city FROM combo cb,customer_master cm,beat_master bm WHERE cb.cid=cm.cid AND cb.beat_name=bm.beat_name  AND bm.beat_name LIKE ?";
PreparedStatement pst=con.prepareStatement(p);
pst.setString(1, bn+"%");
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table border='1' width='400'>
<tr>
				<td>ID</td>
				<td>Beat Name</td>
				<td>Customer Name</td>
				<td>Industry</td>
				<td>Sub-Industry</td>
				<td>Contact Person</td>
				<td>Contact Number</td>
				<td>City</td>
				</tr>
<%
do{
	
	String beat_name=rs.getString("beat_name");
	String cname=rs.getString("cname");
	String industry=rs.getString("industry");
	String sub_industry=rs.getString("sub_industry");
	String contact_name=rs.getString("contact_name");
	String contact=rs.getString("contact");
	String city=rs.getString("city");
%>
				
				<tr>
				<td></td>
				<td><%=beat_name%></td>
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