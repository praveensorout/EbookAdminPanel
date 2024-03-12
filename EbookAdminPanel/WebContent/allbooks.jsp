<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Books</title>
</head>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
<body>
    <%@ include file="navbar.jsp" %>
	<%@ page import="java.sql.*,java.util.*,bookstore.BookStore" %>
	
	<jsp:useBean id="pr" class="bookstore.DisplayBook" >
	</jsp:useBean>
<div>	
    <h3 class="text-center">All Books</h3>
			
    <table class="table table-striped">
        <thead class="bg-primary text-white">
          <tr>
			<th scope="col">Id</th>
			<th scope="col">Image</th>
			<th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Categories</th>
			<th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
		<%
			List<BookStore> list = pr.getAllBooks();
			for(BookStore bs : list)
			{
		%>	
			<tr>
				<td><%=bs.getBookId()%></td>
				<td> <img src="../ebookUserPanel/WebContent/book/<%=bs.getFileName() %>"style="width:50px; height:50px;" > </td>
				<td> <%= bs.getBname() %> </td>
				<td> <%=bs.getBauthor() %></td>
				<td> <%=bs.getBprice() %></td>
				<td> <%=bs.getBcategory() %></td>
				<td><a href="edit_books.jsp?id=<%= bs.getBookId()%>" class="btn btn-sm btn-primary">Edit</a>
				<a href="deletebook?id=<%= bs.getBookId()%>" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
		<%
			}
		%>
        </tbody>
      </table>

    </div>
    <div style="margin-top: 170px;">
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>