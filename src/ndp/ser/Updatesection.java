package ndp.ser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.*;
/**
 * Servlet implementation class Updatesection
 */
@WebServlet("/Updatesection")
public class Updatesection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con=null;
	PreparedStatement ps=null;
    public Updatesection() {
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
		int flag=0;
		String sect=request.getParameter("section");
		String reg[]=request.getParameterValues("chkstu");
		String str="update record set "+sect+"=? where regno=?";
		con=Crudoperation.createConnection();	
			try
			{
				
				con.setAutoCommit(false);
				ps=con.prepareStatement(str);
				for(int i=0;i<reg.length;i++)
				{
			    ps.setString(1,"DUES");
				ps.setString(2,reg[i]);
				ps.addBatch();
				}
				int rw[]=ps.executeBatch();
			    for(int k=0;k<rw.length;k++)
			    {
			    	if(rw[k]<0)
			    	{
			    		flag=1;
			    		break;
			    	}
			    }
				if(flag==0)
				{
					con.setAutoCommit(true);
					response.sendRedirect("/ndp/jsp/admin.jsp?msg=You have successfully Updated!!");
				}
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}

	}

}
