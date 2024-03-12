package login;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet
{
	public void doPost(HttpServletRequest req , HttpServletResponse res)throws IOException , ServletException
	{
		PrintWriter out = res.getWriter();
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession();
		
		if(email.equals("parveensorout88@gmail.com")&& password.equals("praveen123"))
		{
			session.setAttribute("admin",email);
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req,res);
		}
		else
		{
			out.print("not admin!");
		}
		
	}
}