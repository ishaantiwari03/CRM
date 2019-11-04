<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Add Beat </title>

<link rel="stylesheet" type="text/css" href="form.css">

</head>

<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
	<div class="row"> 
    <form action="AddBeatInsert.jsp">
    <div class="col-sm-6">	
   <div class="form-group">
    <label for="uname">Beat name</label>
    <input type="text" class="form-control" name="beat_name" placeholder="Beat Name">
  </div>
  <div class="form-group">
    <label for="uname">City</label>
    <input type="text" class="form-control" name="city" placeholder="city">
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
