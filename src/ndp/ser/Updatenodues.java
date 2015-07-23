package ndp.ser;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ndp.ser.Crudoperation;

/**
 * Servlet implementation class Updatenodues
 */
@WebServlet("/Updatenodues")
public class Updatenodues extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Updatenodues() {
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
		String accsec=request.getParameter("txtacc");
		String sgca=request.getParameter("txtsgca");
		String ncc=request.getParameter("txtncc");
		String nss=request.getParameter("txtnss");
		String library=request.getParameter("txtlibrary");
		String itrc=request.getParameter("txtitrc");
		String pti=request.getParameter("txtpti");
		String department=request.getParameter("txtdepartment");
		System.out.print(department);
		String vehicle=request.getParameter("txtvehicle");
		String subhash=request.getParameter("txtsubhash");
		String raman=request.getParameter("txtraman");
		String tagore=request.getParameter("txttagore");
		String vs=request.getParameter("txtvs");
		String ambedkar=request.getParameter("txtambedkar");
		String saraswati=request.getParameter("txtsaraswati");
		String sarojini=request.getParameter("txtsarojini");
		long roll=Long.parseLong(request.getParameter("txtid"));
		con=Crudoperation.createConnection();
		String str="update record set accsec=?,sgca=?,ncc=?,nss=?,library=?,itrc=?,pti=?,department=?,vehicle=?,subhash=?,raman=?,tagore=?,vs=?,ambedkar=?,saraswati=?,sarojini=? where rollno=?";
		try
		{
			ps=con.prepareStatement(str);
			ps.setString(1,accsec);
			ps.setString(2,sgca);
			ps.setString(3,ncc);
			ps.setString(4,nss);
			ps.setString(5,library);
			ps.setString(6,itrc);
			ps.setString(7,pti);
			ps.setString(8,department);
			ps.setString(9,vehicle);
			ps.setString(10,subhash);
			ps.setString(11,raman);
			ps.setString(12,tagore);
			ps.setString(13,vs);
			ps.setString(14,ambedkar);
			ps.setString(15,saraswati);
			ps.setString(16,sarojini);
			ps.setLong(17,roll);
	        System.out.print(ps);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/ndp/jsp/admin.jsp?msg=You have successfully Updated!!");
			}
		}
		catch(SQLException se)
		{
			System.out.print(se);
		}
	}

}
