<% String admin = (String)session.getAttribute("admin"); %>
<%@ include file = "links.jsp" %>
<link rel="stylesheet" href="assets/css/navbar.css">

<div class="container-fluid" style="height: 10px;background-color:#303f9f ;"></div>
<div class="container-fluid p-3 bg-light">
<div class="row">
  <div class="col-md-3 text-success">
    <h3><i class="fa-solid fa-book"></i>Ebooks</h3>
  </div>
  <div class="col-md-6">
    <form class="d-flex">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
  <div class="col-md-3">
  <% if(admin==null)
  {%>
	<a href="login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i>Sign In</a>
  <% }else{ %>
	  <a href="" class="btn btn-success"><%= admin %></i></a>
  <% } %>
  </div>
</div>
</div>

