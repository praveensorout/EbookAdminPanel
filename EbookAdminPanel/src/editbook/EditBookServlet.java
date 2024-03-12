package editbook;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.WebServlet;

import bookstore.BookStore;
import bookstore.DisplayBook;

@WebServlet("/deletebook")
public class EditBookServlet extends HttpServlet
{
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException , ServletException
	{
		PrintWriter out =res.getWriter();
		int id = Integer.parseInt(req.getParameter("id"));
		String bname = req.getParameter("bname");
		String bauthor = req.getParameter("bauthor");
		String bprice = req.getParameter("bprice");
		String bcategory = req.getParameter("bcategory");
		
		
		BookStore bs = new BookStore();
		bs.setBookId(id);
		bs.setBname(bname);
		bs.setBauthor(bauthor);
		bs.setBprice(bprice);
		bs.setBcategory(bcategory);
		
		DisplayBook db = new DisplayBook();
		
		boolean valid=db.updateBook(bs);
		
		if(valid)
		{
			res.sendRedirect("allbooks.jsp");
		}
		else
		{
			out.print("not updated!");
		}
	}
}