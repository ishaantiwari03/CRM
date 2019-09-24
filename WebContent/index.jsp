<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="Cache.jsp"></jsp:include>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
&nbsp; &nbsp;
    </div>
    <div class="col-sm-4">
    <br>
    <hr>
        <h2>LOGIN</h2>
        <p align="center" style=""color:#F00">${param.logmsg}</p>
        <p align="center" style=""color:#F00">${param.regmsg}</p>
        <p align="center" style=""color:#F00">${error}</p>
        <form action="doLogin.jsp" class="form-horizontal">        
            <div class="form-group">
            <label for="uid"><b>User ID</b></label>
            <input type="text" placeholder="Enter User ID" class="form-control" name="uid" required>   
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
  </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
