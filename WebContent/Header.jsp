<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script></head>
<body>
<%
if(session.getAttribute("name")!=null){
%>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Home.jsp">CRM</a>
          </div>
          <div class="collapse navbar-collapse navbar-right" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="active"><a href="Home.jsp">Home</a></li>
              <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Search
                  <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="Search.jsp">Search Record</a></li>
                      <li><a href="CustomerSearch.jsp">Search Customer</a></li>
                      <li><a href="BeatSearch.jsp">Search Beat</a></li>
                      <li><a href="ProductSearch.jsp">Search Product</a></li>
                  </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Add
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="Combo.jsp">Add Record</a></li>
                      <li><a href="AddCustomer.jsp">Add Customer</a></li>
                      <li><a href="AddBeat.jsp">Add Beat</a></li>
                      <li><a href="AddProduct.jsp">Add Product</a></li>
                    </ul>
                  </li>
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Show
                      <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="ShowAllCustomer.jsp">Show All Customers</a></li>
                        <li><a href="ShowAllBeat.jsp">Show All Beats</a></li>
                        <li><a href="ShowAllProduct.jsp">Show All Products</a></li>
                      </ul>
                    </li>
              <li><a href="Combo.jsp">Add New Entry</a></li>
              <li><a href="ShowAll.jsp">View All Entries</a></li>
           
              <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav> 
      <% } else {%>
       <div class="collapse navbar-collapse navbar-right" id="myNavbar">
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
         <ul class="nav navbar-nav">
       <li><a href="Register.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a></li>
        <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul></div>
        </nav>
        </div>
        <%} %>
      <jsp:include page="footer.jsp"></jsp:include>
      

