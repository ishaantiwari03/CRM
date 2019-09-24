<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Customer Master</title>

</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<div class="container">
	<div class="row"> 
    <form action="AddCustomerInsert.jsp" method="get">
    <div class="col-sm-6">	
   <div class="form-group">
    <label for="uname">Customer name</label>
    <input type="text" class="form-control" name="cname" placeholder="Customer Name">
  </div>
  <div class="form-group">
    <label for="uname">Customer ID</label>
    <input type="text" class="form-control" name="cid" placeholder="Customer ID">
  </div>
  <div class="form-group">
    <label for="uname">Industry</label>
    <input type="text" class="form-control" name="industry" placeholder="industry">
  </div>
  <div class="form-group">
    <label for="uname">Sub-Industry</label>
    <input type="text" class="form-control" name="sub_industry" placeholder="Sub-Industry">
  </div>
   <div class="form-group">
    <label for="uname">City</label>
    <input type="text" class="form-control" name="city" placeholder="city">
  </div>
  <div class="form-group">
    <label for="uname">Contact Person</label>
    <input type="text" class="form-control" name="contact_name" placeholder="Contact Person">
  </div>
  <div class="form-group">
    <label for="uname">Contact Number</label>
    <input type="text" class="form-control" name="contact" placeholder="Contact Number">
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
