<!DOCTYPE html>
<html>
<head>
<title>Search</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<h4>Search by Customer Name</h4>
<form action="CustomerSearchName.jsp">
<div class="form-group">
    <label for="uname">Name :</label>
    <input type="text" class="form-control" name="nm" placeholder="">
  </div>
  <button type="submit">Search</button>
  </form>
<br>
<h4>Search by Product</h4>
<form action="CustomerSearchProduct.jsp">
<div class="form-group">
    <label for="uname">Product Code :</label>
    <input type="text" class="form-control" name="pc" placeholder="Product Code">
  </div>
  <button type="submit">Search</button>
</form>
<br>
<h4>Search by Beat Name</h4>
<form action="CustomerSearchBeatname.jsp">
<div class="form-group">
    <label for="uname">Beat Name :</label>
    <input type="text" class="form-control" name="bn" placeholder="Beat Name">
  </div>
  <button type="submit">Search</button>
</form>
<h4>Search by Industry</h4>
<form action="CustomerSearchIndustry.jsp">
<div class="form-group">
    <label for="uname">Industry Name :</label>
    <input type="text" class="form-control" name="in" placeholder="Industry Name">
  </div>
  <button type="submit">Search</button>
</form>
</body>
</html>