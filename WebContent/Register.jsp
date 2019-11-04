<html>
<head>
<title>Register</title>
<link rel="stylesheet" type="text/css" href="form.css">

</head>
<body>
<jsp:include page="Cache.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>

<br>

<p align="center" style=""color:#F00">${error}</p>
<!-- <form action="doRegister.jsp">
<table align="center">
<tr><td>
User ID : </td><td><input type="text" name="uid"></td></tr>

<tr><td>
User Name : </td><td><input type="text" name="name"></td></tr>

<tr><td>
Password :</td><td><input type="password" name ="pwd"></td></tr>

<tr><td colspan="2" align="center"><button type="submit">Sign Up</button></td></tr>
</table>
</form>		 -->

 <div >
        <form action="doRegister.jsp" class="container">   
        <h2 align="center">REGISTER</h2>    
            <div class="form-group">
            <label for="uid"><b>User ID</b></label>
            <input type="text" placeholder="Enter User ID" class="form-control" name="uid" required>   
            </div>
            
            <div class="form-group">
            <label for="name"><b>NAME</b></label>
            <input type="text" placeholder="Enter name" class="form-control" name="name" required>   
            </div>
            
            <div class="form-group">
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" class="form-control" name="pwd" required>  
            </div> 
            
            <div class="form-group">
            <button type="submit" class="form-control">Login</button>       
            </div>   
          
          
        </form>
        </div>


</body>
</html>