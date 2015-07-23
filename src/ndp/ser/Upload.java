package ndp.ser;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.descriptor.web.MultipartDef;

import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
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
		
		String ui="\\upload";
		String filename=null;
		File fobj=null;
		String pt=getServletContext().getRealPath("/");
		String nwpath=pt+ui;
		File f=new File(nwpath);
		if(!f.exists())
		{
			f.mkdir();
		}
	    MultipartRequest mp=new MultipartRequest(request,nwpath,1024*1024*6);
	    Enumeration e=mp.getFileNames();
	    while(e.hasMoreElements())
	    {
	    	String ctrlname=(String)e.nextElement();
	    	fobj=mp.getFile(ctrlname);
	    	filename=fobj.getName();
	    }
	    String session=mp.getParameter("txtsession");
		String course=mp.getParameter("txtcourse");
		String branch=mp.getParameter("branch");
	    request.setAttribute("session",session);
	    request.setAttribute("course",course);
	    request.setAttribute("branch",branch);
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/testexcel.jsp?filename="+filename);
	    rd.forward(request,response);
	    
	}

}
