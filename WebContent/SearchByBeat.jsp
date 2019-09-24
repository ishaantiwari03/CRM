<%@page import="java.text.SimpleDateFormat"%>
<%@include file="dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>Search by Beat Name</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
String bn=request.getParameter("bn");
String p="SELECT cb.combo_id,cb.beat_name,cm.cname,cm.industry,cm.contact_name,cm.sub_industry,cm.contact,cm.city,pm.pcode,pm.pname,pm.stock FROM combo cb,customer_master cm,beat_master bm, product_master pm WHERE cb.cid=cm.cid AND cb.pid=pm.pid AND cb.beat_name=bm.beat_name AND bm.beat_name=?";
PreparedStatement pst=con.prepareStatement(p);
pst.setString(1, bn);
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table  class="table table-bordered">
<tr class="active">
				<td>#</td>
				<td>Customer Name</td>
				<td>Industry</td>
				<td>Sub-Industry</td>
				<td>Contact Person</td>
				<td>Contact Number</td>
				<td>City</td>
				<td>Beat</td>
				<td>Product Code</td>
				<td>Product ID</td>
				<td>Product Name</td>
				<td>Product Stock</td>
				
				
				</tr>
<%
int i=0;
do{
	
	String combo_id=rs.getString("combo_id");
	String cname=rs.getString("cname");
	String industry=rs.getString("industry");
	String sub_industry=rs.getString("sub_industry");
	String contact_name=rs.getString("contact_name");
	String contact=rs.getString("contact");
	String city=rs.getString("city");
	String beat_name=rs.getString("beat_name");
	String pcode=rs.getString("pcode");
	String pname=rs.getString("pname");
	String stock=rs.getString("stock");
	
	

%>
				
				<tr>
				<td><%=i++%></td>
				<td><%=combo_id%></td>
				<td><%=cname%></td>
				<td><%=industry %></td>
				<td><%=sub_industry%></td>
				<td><%=contact_name%></td>
				<td><%=contact%></td>
				<td><%=city%></td>
				<td><%=beat_name%></td>
				<td><%=pcode%></td>
				<td><%=pname%></td>
				<td><%=stock%></td>
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