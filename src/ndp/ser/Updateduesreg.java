package ndp.ser;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Updateduesreg
 */
@WebServlet("/Updateduesreg")
public class Updateduesreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Updateduesreg() {
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
	     String reg=request.getParameter("txtreg");
	     String dues=request.getParameter("txtdues")+" on "+sd;
	     con=Crudoperation.createConnection();
	     String str="update record set "+sec+"=? where regno=?";
	     try
	     {
	    	 ps=con.prepareStatement(str);
	    	 ps.setString(1,dues);
	    	 ps.setString(2,reg);
	    	 
	    	 int rw=ps.executeUpdate();
	    	 if(rw>0)
	    	 {
	    		 response.sendRedirect("/ndp/jsp/section.jsp");
	    	 }
	     }
	     catch(SQLException se)
	     {
	    	 
	     }
	}

}
