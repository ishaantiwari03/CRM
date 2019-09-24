<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Product Master</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>

<body>
<div class="container">
	<div class="row"> 
    <form action="AddProductInsert.jsp">
    <div class="col-sm-6">	
    <div class="form-group">
    <label for="uname">Product ID</label>
    <input type="text" class="form-control" name="pid" placeholder="Product ID">
  </div>
  <div class="form-group">
    <label for="uname">Product Code</label>
    <input type="text" class="form-control" name="pcode" placeholder="Product Code">
  </div>
   <div class="form-group">
    <label for="uname">Product name</label>
    <input type="text" class="form-control" name="pname" placeholder="Product Name">
  </div>
  
  <div class="form-group">
    <label for="uname">Stock</label>
    <input type="text" class="form-control" name="stock" placeholder="Stock">
  </div>
    <div class="form-group">
    <button class="btn btn-primary">Submit</button>
    </div>
      </div>
    
    
    </form>
    
    
    </div>
</div>
</body>
</html>
