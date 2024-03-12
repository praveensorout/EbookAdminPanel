<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Books</title>
</head>
<body style="background-color: #f0f2f2;">
    <%@ include file="navbar.jsp" %>
	<%@ page import="java.sql.*,java.util.*,bookstore.BookStore" %>
	
	<jsp:useBean id="pr" class="bookstore.DisplayBook" >
	</jsp:useBean>
	
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Edit Books</h4>
						
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							BookStore bs = pr.getBookById(id);
						%>
						
                        <form action="editbook" method="post">
						<input type="hidden" name="id" value="<%=bs.getBookId()%>">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Book Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="bname" value="<%=bs.getBname()%>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Author Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="bauthor" value="<%=bs.getBauthor()%>">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Price</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="bprice" value="<%=bs.getBprice()%>">
                            </div>

                            <div class="form-group">
                                <label for="books">Book Categories:</label>
                                <select name="bcategory" id="books">
									<option value="<%=bs.getBcategory()%>""><%=bs.getBcategory()%></option>
                                    <option value="C/C++">C/C++</option>
                                    <option value="java">java</option>
									<option value="python">python</option>
                                </select>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div><%@ include file="footer.jsp" %></div>
</body>
</html>