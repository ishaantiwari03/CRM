<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Customer Master</title>


</head>

<body>
<jsp:include page="Header.jsp"></jsp:include>
<%@include file="dbcon.jsp" %>
<%
String q1="select * from customer_master order by cname";
String q2="select * from product_master";
String q3="select * from beat_master";
PreparedStatement pst1=con.prepareStatement(q1);
PreparedStatement pst2=con.prepareStatement(q2);
PreparedStatement pst3=con.prepareStatement(q3);
%>

<div class="container">
	<div class="row"> 
    <form action="ComboInsert.jsp" method="get">
    <div class="col-sm-6">	
   <div class="form-group">
    <label for="uname">Select Beat</lxabel>
    <select name="beat_name">
    <%
    ResultSet rs1=pst3.executeQuery();
    		while(rs1.next()){
    		
    			%>
    			<option value="<%=rs1.getString("beat_name")%>">
    			<%=rs1.getString("beat_name") %>    			
    			</option>
    <%		}
rs1.close();
    		%>
    </select>
  </div>
  <div class="form-group">
    <label for="uname">Select Customer\</label>
    <select name="cid">
    <%
    ResultSet rs2=pst1.executeQuery();
    		while(rs2.next()){
    		
    			%>
    			<option value="<%=rs2.getString("cid")%>">
    			<%=rs2.getString("cname") %>    			
    			</option>
    <%		}
rs2.close();
    		%>
    </select>
  </div>
  <div class="form-group">
    <label for="uname">Select Product\</label>
    <select name="pid">
    <%
    ResultSet rs3=pst2.executeQuery();
    		while(rs3.next()){
    		
    			%>
    			<option value="<%=rs3.getString("pid")%>">
    			<%=rs3.getString("pcode") %>    			
    			</option>
    <%		}
rs3.close();
    		%>
    </select>
  </div>
  <div class="form-group">
    <label for="uname">Date</label>
    <input type="date" class="form-control" name="date" placeholder="Date">
  </div>
    <div class="form-group">
    <button type="submit">Submit</button>
    </div>
      </div>
    
    
    </form>
    
    
    </div>
</div>

</body>
</html>
