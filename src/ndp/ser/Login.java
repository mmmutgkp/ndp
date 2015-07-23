package ndp.ser;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private Connection con=null;
	private ResultSet rs=null;
	private PreparedStatement ps=null;
	private HttpSession hs=null;
    public Login() {
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
		String ui=request.getParameter("txtuser").trim();
		String upass=request.getParameter("txtpass").trim();
		con=Crudoperation.createConnection();
		try
		{
			String str="select * from login where username=? and password=?" ;
			ps=con.prepareStatement(str);
			ps.setString(1,ui);
			ps.setString(2,upass);
			rs=ps.executeQuery();
			if(rs.next())
			{
				hs=request.getSession();
				String utype=rs.getString(3);
				String section=rs.getString(4);
				hs.setAttribute("userid",ui);
				hs.setAttribute("userinfo",utype);
				hs.setAttribute("section",section);
				if(utype.equals("admin"))
				{
					response.sendRedirect("/ndp/jsp/admin.jsp");
				}
				if(utype.equals("Examination Controller"))
				{
				    response.sendRedirect("/ndp/jsp/exam.jsp");
				}
				if(utype.equals("Dean Academics"))
				{
					response.sendRedirect("/ndp/jsp/dean.jsp");
				}
				if(utype.equals("Account Section")||utype.equals("Ambedkar Bhawan")||utype.equals("ITRC")||utype.equals("Library")||utype.equals("NCC")||utype.equals("NSS")||utype.equals("PTI")||utype.equals("Raman Bhawan")||utype.equals("Saraswati Bhawan")||utype.equals("Sarojini Bhawan")||utype.equals("SGCA")||utype.equals("Subhash Bhawan")||utype.equals("Tagore Bhawan")||utype.equals("Vishweshraiya Bhawan"))
				{
					response.sendRedirect("/ndp/jsp/section.jsp");
				}
				if(section.equals("department"))
				{
					response.sendRedirect("/ndp/jsp/department.jsp");
				}
			}
			else
			{
				response.sendRedirect("/ndp/jsp/login.jsp?msg=invalid userid or password");
			}
		}
		catch(SQLException se)
		{
		   System.out.println(""+se);
		}
		finally
		{
			try
			{
				if(rs!=null)
					rs.close();
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		}
	
	}

}
