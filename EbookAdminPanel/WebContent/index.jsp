<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Home</title>
		<link rel="stylesheet" href="links.jsp">
		<link rel="stylesheet" href="assets/css/home.css">
	</head>

	<body>
		<%@ include file="navbar.jsp" %>
		<div class="conatiner">
			<div class="row p-5">
				<div class="col-md-3">
				<%if(admin==null){%>
					<a href="login.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>Add Books</h4>
							</div>
						</div>
					</a>
				<%}
				else{%>
					<a href="addbooks.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>Add Books</h4>
							</div>
						</div>
					</a>
				<%}%>
				</div>
				<div class="col-md-3">
					<%if(admin==null){%>
					<a href="login.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>All Books</h4>
							</div>
						</div>
					</a>
				<%}
				else{%>
					<a href="allbooks.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>All Books</h4>
							</div>
						</div>
					</a>
				<%}%>
				</div>
			<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
				<div class="col-md-3">
					<%if(admin==null){%>
					<a href="login.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>Orders</h4>
							</div>
						</div>
					</a>
				<%}
				else{%>
					<a href="buybooks.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>Orders</h4>
							</div>
						</div>
					</a>
				<%}%>
				</div>
			</div>
		</div>
		<div style="position:fixed;width:100%;top:520px;">
			<%@ include file="footer.jsp" %>
		</div>
	</body>
</html>