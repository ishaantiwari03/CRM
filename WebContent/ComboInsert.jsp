<%@page import="com.mgt.crm.util.DateUtil"%>
<%@include file="dbcon.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<% 
String cid =request.getParameter("cid");
String pid =request.getParameter("pid");
String beat_name=request.getParameter("beat_name");
String date=request.getParameter("date");
Date sd=DateUtil.getSQLDate(date);
PreparedStatement pst=con.prepareStatement("insert into combo(beat_name,cid,pid,entry_date) values(?,?,?,?)");
pst.setString(1, beat_name);
pst.setString(2, cid);
pst.setString(3, pid);
pst.setDate(4,sd);
int r=pst.executeUpdate();
if(r>0){ %>
<p align="center" style="color:#0F0">Added Successfully</p>
<%
}
else{%>
<p align="left"> Could Not Add</p>
<%}
con.close();
%>
</body>
</html>