<%@include file="dbcon.jsp"%>
<%@page import="com.mgt.crm.util.DateUtil"%>

<link rel="stylesheet" type="text/css" href="form.css">

<%
String q="SELECT cb.combo_id,cb.beat_name,cm.cname,cm.industry,cm.contact_name,cm.sub_industry,cm.contact,cm.city,pm.pcode,pm.pname,pm.stock,cb.entry_date FROM combo cb,customer_master cm,beat_master bm, product_master pm WHERE cb.cid=cm.cid AND cb.pid=pm.pid AND cb.beat_name=bm.beat_name";
%>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">

<%
PreparedStatement pst=con.prepareStatement(q);
ResultSet rs=pst.executeQuery();
if(rs.next()){%>
<table border="1" class="table table-bordered">
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
				<td>Product Name</td>
				<td>Product Stock</td>
				<td>Date</td>
				
				
				</tr>
<%
int i=1;
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
	Double stock=rs.getDouble("stock");
	Date date=rs.getDate("entry_date");
	
	

%>
				
				<tr >
				<td><%=i++%></td>
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
				<td><%=date%></td>
		
				</tr><%
				}while(rs.next());%>
				</table>
				<%
					}else{%>
							<h2>Sorry! No Data</h2>
						<%}
						con.close();
				%>

</div>
</body>
</html>