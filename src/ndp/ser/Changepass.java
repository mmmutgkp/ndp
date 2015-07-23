package ndp.ser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Changepass
 */
@WebServlet("/Changepass")
public class Changepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
hgdggnfyjk
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
    public Changepass() {
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
		String oldpass=null;
		HttpSession hs=request.getSession(false);
		String ui=(String)hs.getAttribute("userid");
		String utype=(String)hs.getAttribute("userinfo");
		String section=(String)hs.getAttribute("section");
		String old=request.getParameter("txtold");
		String newpass=request.getParameter("txtnew");
		String confirm=request.getParameter("txtconfirm");
		con=Crudoperation.createConnection();
		String strsql="select password from login where username=?";
		try
		{
			ps=con.prepareStatement(strsql);
			ps.setString(1,ui);
			rs=ps.executeQuery();
			while(rs.next())
			{
				oldpass=rs.getString("password");
			}
		}
		catch(SQLException se)
		{
			
		}
		if(oldpass.equals(old))
		{
		String str="update login set password=? where username=?";
		try
		{
			ps=con.prepareStatement(str);
			ps.setString(1,newpass);
			ps.setString(2,ui);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				if(utype.equals("admin"))
				{
					response.sendRedirect("/ndp/jsp/admin.jsp?msg=Password Changed");
				}
				if(utype.equals("Examination Controller"))
				{
				    response.sendRedirect("/ndp/jsp/exam.jsp?msg=Password Changed");
				}
				if(utype.equals("Dean Academics"))
				{
					response.sendRedirect("/ndp/jsp/dean.jsp?msg=Password Changed");
				}
				if(utype.equals("Account Section")||utype.equals("Ambedkar Bhawan")||utype.equals("ITRC")||utype.equals("Library")||utype.equals("NCC")||utype.equals("NSS")||utype.equals("PTI")||utype.equals("Raman Bhawan")||utype.equals("Saraswati Bhawan")||utype.equals("Sarojini Bhawan")||utype.equals("SGCA")||utype.equals("Subhash Bhawan")||utype.equals("Tagore Bhawan")||utype.equals("Vishweshraiya Bhawan"))
				{
					response.sendRedirect("/ndp/jsp/section.jsp?msg=Password Changed");
				}
				if(section.equals("department"))
				{
					response.sendRedirect("/ndp/jsp/department.jsp?msg=Password Changed");
				}
			}
		}
		catch(SQLException se)
		{
			
		}
		}
		else
		{
			response.sendRedirect("/ndp/jsp/changepassword.jsp?msg=Old password is incorrect!!");
		}
	}

}
