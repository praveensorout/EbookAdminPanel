package bookstore;
import java.sql.*;
import java.util.*;

public class DisplayBook
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	boolean valid = false;
	connection.Connect cn = new connection.Connect();
	
	public boolean addBook(BookStore bs)
	{
		con = cn.getConnection();
		try
		{
			ps = con.prepareStatement("select * from book_details where bookname=?");
			ps.setString(1,bs.getBname());
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				if(bs.getBname().equals(rs.getString("bookname")))
				{
					valid = true;
				}
			}
			if(!valid)
			{
				ps = con.prepareStatement("insert into book_details(admin,bookname,author,price,book_category,image) values(?,?,?,?,?,?)");
				ps.setString(1,bs.getEmail());
				ps.setString(2,bs.getBname());
				ps.setString(3,bs.getBauthor());
				ps.setString(4,bs.getBprice());
				ps.setString(5,bs.getBcategory());
				ps.setString(6,bs.getFileName());
				ps.executeUpdate();
			}
		}
		catch(SQLException e){}
		return valid;
	}
	
	
		public List<BookStore> getAllBooks()
		{
			con = cn.getConnection();
			List<BookStore> list = new ArrayList<BookStore>();
			try
			{
				ps = con.prepareStatement("select * from book_details");
				rs = ps.executeQuery();
				while(rs.next())
				{
					BookStore bs = new BookStore();
					bs.setEmail(rs.getString(1));
					bs.setBname(rs.getString(2));
					bs.setBauthor(rs.getString(3));
					bs.setBprice(rs.getString(4));
					bs.setBcategory(rs.getString(5));
					bs.setFileName(rs.getString(6));
					bs.setBookId(rs.getInt(7));
					list.add(bs);
				}
				
			}
			catch(SQLException e){}
			return list;
		}
		
		public BookStore getBookById(int id)
		{
			con = cn.getConnection();
			BookStore bs =null;
			try{
					ps = con.prepareStatement("select * from book_details where book_id=?");
					ps.setInt(1,id);
					
					rs = ps.executeQuery();
					while(rs.next())
					{
						bs = new BookStore();
						bs.setEmail(rs.getString(1));
						bs.setBname(rs.getString(2));
						bs.setBauthor(rs.getString(3));
						bs.setBprice(rs.getString(4));
						bs.setBcategory(rs.getString(5));
						bs.setFileName(rs.getString(6));
						bs.setBookId(rs.getInt(7));
						
					}
			}
			catch(SQLException e){System.out.println(e);}
			return bs;
		}
		
		public boolean updateBook(BookStore bs)
		{
			con = cn.getConnection();
			try{
				ps = con.prepareStatement("update book_details set bookname=?, author=?, price=?, book_category=? where book_id=?");
				ps.setString(1,bs.getBname());
				ps.setString(2,bs.getBauthor());
				ps.setString(3,bs.getBprice());
				ps.setString(4,bs.getBcategory());
				ps.setInt(5,bs.getBookId());
				int i = ps.executeUpdate();
				if(i==1)
				{
					valid=true;
				}
			}
			catch(SQLException e){}
			return valid;
		}
		
		public boolean deleteBook(int id)
		{
			con = cn.getConnection();
			try{
				ps = con.prepareStatement("delete from book_details where book_id=?");
				ps.setInt(1,id);
				int i = ps.executeUpdate();
				if(i==1)
				{
					valid=true;
				}
			}
			catch(SQLException e){}
			return valid;
		}
	
}