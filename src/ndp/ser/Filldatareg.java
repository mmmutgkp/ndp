package ndp.ser;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Filldatareg
 */
@WebServlet("/Filldatareg")
public class Filldatareg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
    public Filldatareg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession(false);
		String ui=(String)hs.getAttribute("userinfo");
		String sec=(String)hs.getAttribute("section");
		String branch=null;
		String str=null;
		if(ui.equals("Computer Science & Engineering Department"))
		branch="CSE";
		else if(ui.equals("Electronics & Communication Engineering Department"))
		branch="ECE";
		else if(ui.equals("Electrical Engineering Department"))
		branch="EE";
		else if(ui.equals("Mechanical Engineering Department"))
		branch="ME";
		else if(ui.equals("Civil Engineering Department"))
		branch="CE";
		PrintWriter out=response.getWriter();
		String regno=request.getParameter("regno");
		String data=null;
		con=Crudoperation.createConnection();
		if(sec.equals("department"))
		{
			str="select * from record where regno=? and branch='"+branch+"'";
		}
		else
		{
			str="select * from record where regno=?";
		}
		try
		{
			ps=con.prepareStatement(str);
			ps.setString(1,regno);
			rs=ps.executeQuery();
			if(rs.next())
			{
				data=rs.getString("name")+"#"+rs.getString("parent")+"#"+rs.getString("course")+"#"+rs.getString("branch")+"#"+rs.getString(sec)+"#"+rs.getLong("rollno");
			}
			else
			{
				data="not found#not found#not found#not found#not found#0";
			}
			out.print(data);
		}
		catch(SQLException se)
		{
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
