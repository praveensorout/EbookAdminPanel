<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Books</title>
</head>
<body style="background-color: #f0f2f2;">
    <%@ include file="navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Add Books</h4>
                        <form action="addbook" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Book Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="bname">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Author Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="bauthor">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Price</label>
                                <input type="number" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="bprice">
                            </div>

                            <div class="form-group">
                                <label for="books">Book Categories:</label>
                                <select name="bcategory" id="books">
                                    <option value="C/C++">C/C++</option>
                                    <option value="java">java</option>
									<option value="python">python</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleFormControlFile1">Upload Photo</label>
                                <input type="file" class="form-control" id="exampleFormControlFile1"
                                 required="required" name="bimg">
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Submit</button>
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