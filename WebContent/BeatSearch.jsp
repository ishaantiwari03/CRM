<!DOCTYPE html>
<html>
<head>
<title>Beat search</title>
<link rel="stylesheet" type="text/css" href="form.css">

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<div class="container">
<h4>Search by Beat Name</h4>
<form action="BeatSearchName.jsp">
<div class="form-group">
    <label for="uname">Beat Name :</label>
    <input type="text" class="form-control" name="bn" placeholder="Beat Name">
  </div>
  <button type="submit">Search</button>
</form>
</div>
</body>
</html>