package ndp.ser;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Insertentry
 */
@WebServlet("/Insertentry")
public class Insertentry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Insertentry() {
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
		String acc=request.getParameter("txtacc");
		String mob=request.getParameter("txtphone");
		String roll=request.getParameter("txtroll");
		long acno=Long.parseLong(acc);
		long phone=Long.parseLong(mob);
		long rollnum=Long.parseLong(roll);
	    con=Crudoperation.createConnection();
		String str="update record set accountno=?,mobile=? where rollno=?";
		try
		{
			ps=con.prepareStatement(str);
			ps.setLong(1,acno);
			ps.setLong(2,phone);
			ps.setLong(3,rollnum);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
			}
		}
		catch(SQLException se)
		{
			
		}
		request.setAttribute("rollno",roll);
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/nodues.jsp");
	    rd.forward(request,response);


	}

}
