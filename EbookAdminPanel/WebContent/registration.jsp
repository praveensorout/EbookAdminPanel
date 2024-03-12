<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <%@ include file = "links.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="navbar.jsp" %>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
    <div class="container p-2">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Registration Page</h4>
                        <form action="register" method="post">
							<div class="form-group">
                                <label for="exampleInputEmail1">Email Address</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" required="required" name="email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Enter Full Name</label>
                                <input type="text" class="form-control" id="exampleInputName1"
                                aria-describedby="emailHelp" required="required" name="name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhone1">Phone No</label>
                                <input type="text" class="form-control" id="exampleInputPhone1"
                                aria-describedby="emailHelp" required="required" name="phno">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1"
                                aria-describedby="emailHelp" required="required" name="password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputAddress1">City</label>
                                <input type="password" class="form-control" id="exampleInputAddress1"
                                aria-describedby="emailHelp" required="required" name="city">
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>