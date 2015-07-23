package ndp.ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class updates
 */
@WebServlet("/updates")
public class updates extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con=null;
	PreparedStatement ps=null;
    public updates()
    {
        super();
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		 HttpSession hs=request.getSession(false);
		 String ui=(String)hs.getAttribute("userid");
		 String utype=(String)hs.getAttribute("userinfo");
		 String section=(String)hs.getAttribute("section");
		 String sess=request.getParameter("session");
		 java.util.Date dt=new java.util.Date();
	     java.sql.Date sd=new java.sql.Date(dt.getTime());
		con=Crudoperation.createConnection();
		String str="update login set "+sess+"=? where username=?";
		try
		{
			ps=con.prepareStatement(str);
			ps.setString(1,"UPDATED#"+sd);
			ps.setString(2,ui);
			System.out.print(ps);
			int rw=ps.executeUpdate();
			if(rw>0)
			{

				if(utype.equals("admin"))
				{
					response.sendRedirect("/ndp/jsp/admin.jsp?msg=Work Completed !!");
				}
				if(utype.equals("Examination Controller"))
				{
				    response.sendRedirect("/ndp/jsp/exam.jsp?msg=Work Completed !!");
				}
				if(utype.equals("Dean Academics"))
				{
					response.sendRedirect("/ndp/jsp/dean.jsp?msg=Work Completed !!");
				}
				if(utype.equals("Account Section")||utype.equals("Ambedkar Bhawan")||utype.equals("ITRC")||utype.equals("Library")||utype.equals("NCC")||utype.equals("NSS")||utype.equals("PTI")||utype.equals("Raman Bhawan")||utype.equals("Saraswati Bhawan")||utype.equals("Sarojini Bhawan")||utype.equals("SGCA")||utype.equals("Subhash Bhawan")||utype.equals("Tagore Bhawan")||utype.equals("Vishweshraiya Bhawan"))
				{
					response.sendRedirect("/ndp/jsp/section.jsp?msg=Work Completed !!");
				}
				if(section.equals("department"))
				{
					response.sendRedirect("/ndp/jsp/department.jsp?msg=Work Completed !!");
				}
			}
		}
		catch(SQLException e)
		{
			System.out.println(e);
			
		}

	}

}
