package deletebook;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;
import javax.servlet.annotation.WebServlet;

import bookstore.BookStore;
import bookstore.DisplayBook;

@WebServlet("/deletebook")
public class DeleteBookServlet extends HttpServlet
{
	// when we apply the url in <a href="url"> tag it sends by get method.
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		PrintWriter out = res.getWriter();
		int id = Integer.parseInt(req.getParameter("id"));
		
		DisplayBook db = new DisplayBook();
		
		boolean valid=db.deleteBook(id);
		
		if(valid)
		{
			res.sendRedirect("allbooks.jsp");
		}
		else
		{
			out.print("! not deleted");
		}
	}
	
}