<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>

</head>
<body style="margin:0">
<%
if(session.getAttribute("name")!=null){
%>
 <div class="navbar">
  <a href="Home.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Search 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Search.jsp">Search Record</a>
      <a href="CustomerSearch.jsp">Search Customer</a>
      <a href="BeatSearch.jsp">Search Beat</a>
      <a href="ProductSearch.jsp">Search Product</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Add Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Combo.jsp">Add Record</a>
      <a href="AddCustomer.jsp">Add Customer</a>
      <a href="AddBeat.jsp">Add Beat</a>
      <a href="AddProduct.jsp">Add Product</a>
    </div>
  </div> 
   <div class="dropdown">
    <button class="dropbtn">Show Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="ShowAllCustomer.jsp">Show All Customers</a>
      <a href="ShowAllBeat.jsp">Show All Beats</a>
      <a href="ShowAllProduct.jsp">Show All Products</a>
      
    </div>
  </div> 
  <a href="Combo.jsp">Add New Entry</a>
  <a href="ShowAll.jsp">View All Entries</a>
  <a style="float:right" href="Logout.jsp">Logout</a>
</div>

      <% } else {%>
       <div class="collapse navbar-collapse navbar-right" id="myNavbar">
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
         <ul class="nav navbar-nav">
       <a href="Register.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a>
        <a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a>
        </ul></div>
        </nav>
        </div>
        <%} %>
      <jsp:include page="footer.jsp"></jsp:include>
      

