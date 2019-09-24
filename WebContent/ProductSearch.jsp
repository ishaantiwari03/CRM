<!DOCTYPE html>
<html>
<head>
<title>Search</title>

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<h4>Search by Product Code</h4>
<form action="ProductSearchCode.jsp">
<div class="form-group">
    <label for="uname">Product Code :</label>
    <input type="text" class="form-control" name="pc" placeholder="Product Code">
  </div>
  <button type="submit">Search</button>
</form>
<br>
<h4>Search by Product Name</h4>
<form action="ProductSearchName.jsp">
<div class="form-group">
    <label for="uname">Product Name :</label>
    <input type="text" class="form-control" name="pn" placeholder="Product Name">
  </div>
  <button type="submit">Search</button>
</form>

</body>
</html>