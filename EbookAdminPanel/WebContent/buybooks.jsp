<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Books</title>
</head>
<body>
    <%@ include file="navbar.jsp" %>
	<%@ page import="java.sql.*,java.util.*,buystore.BuyStore" %>
	
	<jsp:useBean id="pr" class="buydata.DisplayBuy" >
	</jsp:useBean>
	
<div>	
    <h3 class="text-center">User Orders Are Here ></h3>
			
    <table class="table table-striped">
        <thead class="bg-primary text-white">
          <tr>
			<th scope="col">BookName</th>
			<th scope="col">Price</th>
			<th scope="col">User Email</th>
            <th scope="col">Contact</th>
          </tr>
        </thead>
        <tbody>
		<%
			List<BuyStore> list = pr.getBuyBooks();
			for(BuyStore buy : list)
			{
		%>	
			<tr>
				<td><%=buy.getBname()%></td>
				<td> <%= buy.getBprice() %> </td>
				<td> <%=buy.getEmail() %></td>
				<td><%=buy.getContact() %></td>
			</tr>
		<%
			}
		%>
        </tbody>
      </table>

    </div>
    <div style="position:fixed;width:100%;top:525px">
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>