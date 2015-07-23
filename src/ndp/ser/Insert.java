package ndp.ser;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Insert() {
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
		long rollno=Long.parseLong(roll);
		String reg=request.getParameter("txtreg");
		String name=request.getParameter("txtname");
		String sessions=request.getParameter("txtsession");
		String parent=request.getParameter("txtparent");
		String branch=request.getParameter("txtbranch");
		String course=request.getParameter("txtcourse");
		con=Crudoperation.createConnection();
		String str="insert into record (rollno,regno,name,parent,course,branch,accsec,sgca,ncc,nss,library,itrc,pti,department,vehicle,subhash,raman,tagore,vs,ambedkar,saraswati,sarojini,session) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			ps=con.prepareStatement(str);
			ps.setLong(1,rollno);
			ps.setString(2,reg);
			ps.setString(3,name);
			ps.setString(4,parent);
			ps.setString(5,course);
			ps.setString(6,branch);
			ps.setString(7,"nil");
			ps.setString(8,"nil");
			ps.setString(9,"nil");
			ps.setString(10,"nil");
			ps.setString(11,"nil");
			ps.setString(12,"nil");
			ps.setString(13,"nil");
			ps.setString(14,"nil");
			ps.setString(15,"nil");
			ps.setString(16,"nil");
			ps.setString(17,"nil");
			ps.setString(18,"nil");
			ps.setString(19,"nil");
			ps.setString(20,"nil");
			ps.setString(21,"nil");
			ps.setString(22,"nil");
			ps.setString(23,sessions);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/ndp/jsp/dean.jsp?msg=You have successfully Inserted!!");
			}
			else
			{
				
			}
		}
		catch(SQLException se)
		{
			
		}
	}

}
