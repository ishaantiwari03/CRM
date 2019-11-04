<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Customer Master</title>

<link rel="stylesheet" type="text/css" href="form.css">
<style>
/* form{
width: 200px;
padding: 0px;
} */
select{
width: 100px;
}

/* Removes the clear button from date inputs */
input[type="date"]::-webkit-clear-button {
    display: none;
}

/* Removes the spin button */
input[type="date"]::-webkit-inner-spin-button { 
    display: none;
}

/* Always display the drop down caret */
input[type="date"]::-webkit-calendar-picker-indicator {
    color: #2c3e50;
}

/* A few custom styles for date inputs */
input[type="date"] {
    appearance: none;
    -webkit-appearance: none;
    color: #95a5a6;
    font-family: "Helvetica", arial, sans-serif;
    font-size: 18px;
    border:1px solid #ecf0f1;
    background:#ecf0f1;
    padding:5px;
    display: inline-block !important;
    visibility: visible !important;
}

input[type="date"], focus {
    color: #95a5a6;
    box-shadow: none;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
}
.select-css {
    display: block;
    font-size: 16px;
    font-family: sans-serif;
    font-weight: 700;
    color: #444;
    line-height: 1.3;
    padding: .6em 1.4em .5em .8em;
    width: 100%;
    max-width: 100%; 
    box-sizing: border-box;
    margin: 0;
    border: 1px solid #aaa;
    box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
    border-radius: .5em;
    -moz-appearance: none;
    -webkit-appearance: none;
    appearance: none;
    background-color: #fff;
    background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'),
      linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
    background-repeat: no-repeat, repeat;
    background-position: right .7em top 50%, 0 0;
    background-size: .65em auto, 100%;
}
.select-css::-ms-expand {
    display: none;
}
.select-css:hover {
    border-color: #888;
}
.select-css:focus {
    border-color: #aaa;
    box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
    box-shadow: 0 0 0 3px -moz-mac-focusring;
    color: #222; 
    outline: none;
}
.select-css option {
    font-weight:normal;
}


</style>
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

    <form style="padding: 0;" action="ComboInsert.jsp" method="get">
    <table align= "center"  cellspacing="30" cellpadding="3">
    <tr>	
   <div class="form-group">
   <tr>
    <td><label for="uname">Select Beat</label></td>
    <td><select class="select-css" name="beat_name">
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
    </select></td>
    </tr>
  </div>
  
  <tr><div class="form-group">
    <td><label for="uname">Select Customer</label></td>
    <td><select class="select-css" name="cid">
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
    </select></td>
  </div></tr>
  <tr><div class="form-group">
    <td><label for="uname">Select Product</label></td>
    <td><select class="select-css" name="pid">
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
    </select></td>
  </div></tr>
  <tr><div class="form-group">
    <td><label for="uname">Date</label></td>
    <td><input type="date" class="form-control" name="date" placeholder="Date"></td>
  </div></tr>
   <tr> <div class="form-group">
    
    </div></tr>
      </div>
    
    </table>
    <button type="submit" style="width: 100px; margin-left:375px;">Submit</button>
    </form>
    
    
    </div>
</div>

</body>
</html>
