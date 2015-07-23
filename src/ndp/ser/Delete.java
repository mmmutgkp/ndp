package ndp.ser;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String session=request.getParameter("txtsession");
		String course=request.getParameter("txtcourse");
		String branch=request.getParameter("branch");
		con=Crudoperation.createConnection();
		String str="delete from record where session=? and course=? and branch=?";
		try
		{
			ps=con.prepareStatement(str);
			ps.setString(1,session);
			ps.setString(2,course);
			ps.setString(3,branch);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/ndp/jsp/dean.jsp?msg=Record has been successfully Deleted!!");
			}
			else
			{
				response.sendRedirect("/ndp/jsp/delete.jsp");
			}
		}
		catch(SQLException se)
		{
			
		}
	}

}
