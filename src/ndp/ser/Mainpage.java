package ndp.ser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Mainpage
 */
@WebServlet("/Mainpage")
public class Mainpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mainpage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession(false);
		 String utype=(String)hs.getAttribute("userinfo");
		 String section=(String)hs.getAttribute("section");
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
