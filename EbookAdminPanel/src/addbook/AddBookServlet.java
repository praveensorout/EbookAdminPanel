package addbook;

import javax.servlet.*;


import javax.servlet.http.*;
import java.io.*;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import bookstore.BookStore;
import bookstore.DisplayBook;


@MultipartConfig
@WebServlet("/addbook")
public class AddBookServlet extends HttpServlet
{
	public void doPost(HttpServletRequest req , HttpServletResponse res) throws IOException,ServletException
	{
		HttpSession session = req.getSession();
		PrintWriter out =res.getWriter();
		String email = (String)session.getAttribute("admin");
		String bname = req.getParameter("bname");
		String bauthor = req.getParameter("bauthor");
		String bprice = req.getParameter("bprice");
		String bcategory = req.getParameter("bcategory");
		Part part = req.getPart("bimg");
		String fileName = part.getSubmittedFileName();
		String uploadPath = "C:/Tomcat 8.5/webapps/EBookUsermodule/book/"+ fileName;
		
		try
		{
			FileOutputStream fos = new FileOutputStream(uploadPath); // path to save image
			InputStream is = part.getInputStream();
			
			byte[] data = new byte[is.available()]; // byte always returns array type value
			is.read(data);
			fos.write(data); //  
			fos.close();
		}
		catch(Exception e){}
		
		BookStore bs = new BookStore();
		bs.setEmail(email);
		bs.setBname(bname);
		bs.setBauthor(bauthor);
		bs.setBprice(bprice);
		bs.setBcategory(bcategory);
		bs.setFileName(fileName);
		
		DisplayBook db = new DisplayBook();
		
		boolean valid=db.addBook(bs);
		
		if(valid)
		{
			out.print("book exists already!");
		}
		else
		{
			res.sendRedirect("allbooks.jsp");
		}		
	}
}