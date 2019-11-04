<!DOCTYPE html>
<html>
<head>
<title>Search</title>
<link rel="stylesheet" type="text/css" href="form.css">
<style>

</style>
</head>
<body>
<jsp:include page="Cache.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>

 <div class="container"> 
        <h4>Search by Customer Name</h4>
	<form action="SearchByName.jsp">
<div class="form-group">
    <label for="uname">Name :</label>
    <input type="text" class="form-control" name="nm" placeholder="Customer name" width=200px>
  </div>
  <button type="submit">Search</button>
  </form>
<br>
<h4>Search by Product</h4>
	<form action="SearchByProduct.jsp">
<div class="form-group">
    <label for="uname">Product Code :</label>
    <input type="text" class="form-control" name="pc" placeholder="Product Code">
  </div>
  <button type="submit">Search</button>
</form>
<br>
<h4>Search by Beat Name</h4>
<form action="SearchByBeatName.jsp">
<div class="form-group">
    <label for="uname">Beat Name :</label>
    <input type="text" class="form-control" name="bn" placeholder="Beat Name">
  </div>
  <button type="submit">Search</button>
</form>
<h4>Search by Industry</h4>
<form action="SearchByIndustry.jsp">
<div class="form-group">
    <label for="uname">Industry Name :</label>
    <input type="text" class="form-control" name="in" placeholder="Industry Name">
  </div>
  <button type="submit">Search</button>
</form>

          
          
        </form>
        </div>




</body>
</html>