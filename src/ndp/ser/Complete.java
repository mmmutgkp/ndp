package ndp.ser;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class Complete
 */
@WebServlet("/Complete")
public class Complete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Complete() {
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
		String roll=request.getParameter("txtroll");
		long rollnum=Long.parseLong(roll);
		con=Crudoperation.createConnection();
		String str="update record set accsec=?,sgca=?,ncc=?,nss=?,library=?,itrc=?,pti=?,department=?,vehicle=?,subhash=?,raman=?,tagore=?,vs=?,ambedkar=?,saraswati=?,sarojini=?,status=? where rollno=?";
		try
		{
			ps=con.prepareStatement(str);
			ps.setString(1,"----NO DUES----");
			ps.setString(2,"----NO DUES----");
			ps.setString(3,"----NO DUES----");
			ps.setString(4,"----NO DUES----");
			ps.setString(5,"----NO DUES----");
			ps.setString(6,"----NO DUES----");
			ps.setString(7,"----NO DUES----");
			ps.setString(8,"----NO DUES----");
			ps.setString(9,"----NO DUES----");
			ps.setString(10,"----NO DUES----");
			ps.setString(11,"----NO DUES----");
			ps.setString(12,"----NO DUES----");
			ps.setString(13,"----NO DUES----");
			ps.setString(14,"----NO DUES----");
			ps.setString(15,"----NO DUES----");
			ps.setString(16,"----NO DUES----");
			ps.setInt(17,1);
			ps.setLong(18,rollnum);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/ndp/jsp/admin.jsp?msg=No Dues form successfully submitted");
			}
		}
		catch(SQLException se)
		{
			
		}
	}

}
