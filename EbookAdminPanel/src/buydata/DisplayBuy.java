package buydata;
import java.sql.*;
import java.util.*;
import buystore.BuyStore;

public class DisplayBuy
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	boolean valid = false;
	
	connection.Connect cn = new connection.Connect();
	
		public List<BuyStore> getBuyBooks()
		{
			con = cn.getConnection();
			List<BuyStore> list = new ArrayList<BuyStore>();
			try
			{
				ps = con.prepareStatement("select * from buy_book");
				rs = ps.executeQuery();
				while(rs.next())
				{
					BuyStore buy = new BuyStore();
					buy.setBname(rs.getString(3));
					buy.setBprice(rs.getString(4));
					buy.setEmail(rs.getString(6));
					buy.setContact(rs.getString(7));
					list.add(buy);
				}
				
			}
			catch(SQLException e){}
			return list;
		}
}