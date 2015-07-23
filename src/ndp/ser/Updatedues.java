package ndp.ser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 * Servlet implementation class Updatedues
 */
@WebServlet("/Updatedues")
public class Updatedues extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Updatedues() {
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
		HttpSession hs=request.getSession(false);
		String ui=(String)hs.getAttribute("userinfo");
		String sec=(String)hs.getAttribute("section");
		java.util.Date dt=new java.util.Date();
	     java.sql.Date sd=new java.sql.Date(dt.getTime());
	     String roll=request.getParameter("txtroll");
	     long rollnum=Long.parseLong(roll);
	     String dues=request.getParameter("txtdues");
	     
	     con=Crudoperation.createConnection();
	     String str="update record set "+sec+"=?,"+sec+"date=? where rollno=?";
	     try
	     {
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues);
	    	 ps.setDate(2,sd);
	    	 ps.setLong(3,rollnum);
	    	 
	    	 int rw=ps.executeUpdate();
	    	 if(rw>0)
	    	 {
	    		 response.sendRedirect("/ndp/jsp/section.jsp?msg=Successfully Updated !!");
	    	 }
	     }
	     catch(SQLException se)
	     {
	    	 
	     }
	}

}
