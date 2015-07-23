package ndp.ser;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Showbranch
 */
@WebServlet("/Showbranch")
public class Showbranch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
    public Showbranch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String data="";
		PrintWriter out=response.getWriter();
		String course=request.getParameter("course");
		String strsql="select * from branch where course=?";
		con=Crudoperation.createConnection();
		try
		{
			ps=con.prepareStatement(strsql);
			ps.setString(1,course);
			rs=ps.executeQuery();
			while(rs.next())
			{
				data=data+rs.getString("branch")+"#";
			}
			out.println(data);
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
