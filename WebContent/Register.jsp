<html>
<head>
<title>Register</title>
</head>
<body>
<jsp:include page="Cache.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>
<h2 align="left">REGISTER</h2>
<br>

<p align="center" style=""color:#F00">${error}</p>
<form action="doRegister.jsp">
<table align="center">
<tr><td>
User ID : </td><td><input type="text" name="uid"></td></tr>

<tr><td>
User Name : </td><td><input type="text" name="name"></td></tr>

<tr><td>
Password :</td><td><input type="password" name ="pwd"></td></tr>

<tr><td colspan="2" align="center"><button type="submit">Sign Up</button></td></tr>
</table>
</form>		
</body>
</html>