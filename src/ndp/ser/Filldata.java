package ndp.ser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Filldata
 */
@WebServlet("/Filldata")
public class Filldata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
    public Filldata() {
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
		String rollnum=request.getParameter("rollno");
		String data=null;
		long rollno=Long.parseLong(rollnum);
		con=Crudoperation.createConnection();
		if(sec.equals("department"))
		{
			str="select * from record where rollno=? and branch='"+branch+"'";
		}
		else
		{
			str="select * from record where rollno=?";
		}
		try
		{
			ps=con.prepareStatement(str);
			ps.setLong(1,rollno);
			rs=ps.executeQuery();
			if(rs.next())
			{
				data=rs.getString("name")+"#"+rs.getString("parent")+"#"+rs.getString("course")+"#"+rs.getString("branch")+"#"+rs.getString(sec);
			}
			else
			{
				data="not found#not found#not found#not found#not found";
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
