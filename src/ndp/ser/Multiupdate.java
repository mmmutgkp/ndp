package ndp.ser;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Multiupdate
 */
@WebServlet("/Multiupdate")
public class Multiupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Multiupdate() {
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
		int rw;
		long rollno1,rollno2,rollno3,rollno4,rollno5,rollno6,rollno7,rollno8,rollno9,rollno10;
		String roll1=request.getParameter("roll1");
		String roll2=request.getParameter("roll2");
		String roll3=request.getParameter("roll3");
		String roll4=request.getParameter("roll4");
		String roll5=request.getParameter("roll5");
		String roll6=request.getParameter("roll6");
		String roll7=request.getParameter("roll7");
		String roll8=request.getParameter("roll8");
		String roll9=request.getParameter("roll9");
		String roll10=request.getParameter("roll10");
		String dues1=request.getParameter("dues1");
		String dues2=request.getParameter("dues2");
		String dues3=request.getParameter("dues3");
		String dues4=request.getParameter("dues4");
		String dues5=request.getParameter("dues5");
		String dues6=request.getParameter("dues6");
		String dues7=request.getParameter("dues7");
		String dues8=request.getParameter("dues8");
		String dues9=request.getParameter("dues9");
		String dues10=request.getParameter("dues10");
		if(!roll1.equals(""))
		{
		rollno1=Long.parseLong(roll1);
		}
		else
		{
		rollno1=0;
		}
		if(!roll2.equals(""))
		{
		rollno2=Long.parseLong(roll2);
		}
		else
		{
		rollno2=0;
		}
		if(!roll3.equals(""))
		{
		rollno3=Long.parseLong(roll3);
		}
		else
		{
		rollno3=0;
		}
		if(!roll4.equals(""))
		{
		rollno4=Long.parseLong(roll4);
		}
		else
		{
		rollno4=0;
		}
		if(!roll5.equals(""))
		{
		rollno5=Long.parseLong(roll5);
		}
		else
		{
		rollno5=0;
		}
		if(!roll6.equals(""))
		{
		rollno6=Long.parseLong(roll6);
		}
		else
		{
		rollno6=0;
		}
		if(!roll7.equals(""))
		{
		rollno7=Long.parseLong(roll7);
		}
		else
		{
		rollno7=0;
		}
		if(!roll8.equals(""))
		{
		rollno8=Long.parseLong(roll8);
		}
		else
		{
		rollno8=0;
		}
		if(!roll9.equals(""))
		{
		rollno9=Long.parseLong(roll9);
		}
		else
		{
		rollno9=0;
		}
		if(!roll10.equals(""))
		{
		rollno10=Long.parseLong(roll10);
		}
		else
		{
		rollno10=0;
		}
		con=Crudoperation.createConnection();
		HttpSession hs=request.getSession(false);
		String ui=(String)hs.getAttribute("userinfo");
		String sec=(String)hs.getAttribute("section");
		String date=sec+"date";
		java.util.Date dt=new java.util.Date();
	     java.sql.Date sd=new java.sql.Date(dt.getTime());
	     String str="update record set "+sec+"=?,"+date+"=? where rollno=?";
	     try
	     {
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues1);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno1);
	    	 
	    	 rw=ps.executeUpdate();
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues3);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno3);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues4);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno4);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues5);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno5);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues6);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno6);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues7);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno7);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues8);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno8);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues9);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno9);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues10);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno10);
	    	 rw=ps.executeUpdate();
	    	 
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues2);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollno2);
	    	 rw=ps.executeUpdate();
	    	 if(ui.equals("admin"))
	 		{
	 			response.sendRedirect("/ndp/jsp/admin.jsp?msg=Successfully Updated !!");
	 		}
	 		if(ui.equals("Examination Controller"))
	 		{
	 		    response.sendRedirect("/ndp/jsp/exam.jsp?msg=Successfully Updated !!");
	 		}
	 		if(ui.equals("Dean Academics"))
	 		{
	 			response.sendRedirect("/ndp/jsp/dean.jsp?msg=Successfully Updated !!");
	 		}
	 		if(ui.equals("Account Section")||ui.equals("Ambedkar Bhawan")||ui.equals("ITRC")||ui.equals("Library")||ui.equals("NCC")||ui.equals("NSS")||ui.equals("PTI")||ui.equals("Raman Bhawan")||ui.equals("Saraswati Bhawan")||ui.equals("Sarojini Bhawan")||ui.equals("SGCA")||ui.equals("Subhash Bhawan")||ui.equals("Tagore Bhawan")||ui.equals("Vishweshraiya Bhawan"))
	 		{
	 			response.sendRedirect("/ndp/jsp/section.jsp?msg=Successfully Updated !!");
	 		}
	 		if(sec.equals("department"))
	 		{
	 			response.sendRedirect("/ndp/jsp/department.jsp?msg=Successfully Updated !!");
	 		}

	     }
	     catch(SQLException se)
	     {
	    	 
	     }
	}

}
