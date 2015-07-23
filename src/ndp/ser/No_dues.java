package ndp.ser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Font;
import com.itextpdf.text.Header;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.sql.*; 
/**
 * Servlet implementation class No_dues
 */
@WebServlet("/No_dues")
public class No_dues extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public No_dues() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = null,parent=null,course=null,branch=null,last=null,reg=null,accsec=null,sgca=null,ncc=null,nss=null,library=null,itrc=null,pti=null,department=null,vehicle=null,subhash=null,raman=null, tagore=null,vs=null,saraswati=null,sarojini=null,ambedkar=null;
		String accsecdate=null,sgcadate=null,nccdate=null,nssdate=null,librarydate=null,itrcdate=null,ptidate=null,departmentdate=null,vehicledate=null,subhashdate=null,ramandate=null, tagoredate=null,vsdate=null,saraswatidate=null,sarojinidate=null,ambedkardate=null;
		long account=0;
		 response.setContentType("application/pdf");
		 String roll=request.getParameter("txtroll");
	     long num=Long.parseLong(roll);
	     java.util.Date dt=new java.util.Date();
	     java.sql.Date sd=new java.sql.Date(dt.getTime());
	     Connection con=Crudoperation.createConnection();
	     PreparedStatement ps=null;
	     ResultSet rs=null;
	     String str="select * from record where rollno=?";
	     try
	     {
	     	ps=con.prepareStatement(str);
	     	ps.setLong(1,num);
	     	rs=ps.executeQuery();
	     	while(rs.next())
	     	{
	     		name=rs.getString("name");
	     		parent=rs.getString("parent");
	     		course=rs.getString("course");
	     		branch=rs.getString("branch");
	     		last=rs.getString("session");
	     		reg=rs.getString("regno");
	     		account=rs.getLong("accountno");
	     		accsec=rs.getString("accsec");
	     		sgca=rs.getString("sgca");
	     		ncc=rs.getString("ncc");
	     		nss=rs.getString("nss");
	     		library=rs.getString("library");
	     		itrc=rs.getString("itrc");
	     		pti=rs.getString("pti");
	     		department=rs.getString("department");
	     		vehicle=rs.getString("vehicle");
	     		subhash=rs.getString("subhash");
	     		raman=rs.getString("raman");
	     		tagore=rs.getString("tagore");
	     		vs=rs.getString("vs");
	     		ambedkar=rs.getString("ambedkar");
	     		saraswati=rs.getString("saraswati");
	     		sarojini=rs.getString("sarojini");
	     		accsecdate =rs.getString("accsecdate");
	    		 if(accsecdate==null)
	    			 accsecdate="-----";
	    		 sgcadate=rs.getString("sgcadate");
	    		 if(sgcadate==null)
	    			 sgcadate="-----";
	    		  nccdate=rs.getString("nccdate");
	    		 if(nccdate==null)
	    			 nccdate="-----";
	    		  nssdate=rs.getString("nssdate");
	    		 if(nssdate==null)
	    			 nssdate="-----";
	    		  librarydate=rs.getString("librarydate");
	    		 if(librarydate==null)
	    			 librarydate="-----";
	    		  itrcdate=rs.getString("itrcdate");
	    		 if(itrcdate==null)
	    			 itrcdate="-----";
	    		  ptidate=rs.getString("ptidate");
	    		 if(ptidate==null)
	    			 ptidate="-----";
	    		  departmentdate=rs.getString("departmentdate");
	    		 if(departmentdate==null)
	    			 departmentdate="-----";
	    		  vehicledate=rs.getString("vehicledate");
	    		 if(vehicledate==null)
	    			 vehicledate="-----";
	    		  subhashdate=rs.getString("subhashdate");
	    		 if(subhashdate==null)
	    			 subhashdate="-----";
	    		  ramandate=rs.getString("ramandate");
	    		 if(ramandate==null)
	    			 ramandate="-----";
	    		  tagoredate=rs.getString("tagoredate");
	    		 if(tagoredate==null)
	    			 tagoredate="-----";
	    		  vsdate=rs.getString("vsdate");
	    		 if(vsdate==null)
	    			 vsdate="-----";
	    		  ambedkardate=rs.getString("ambedkardate");
	    		 if(ambedkardate==null)
	    			 ambedkardate="-----";
	    		  saraswatidate=rs.getString("saraswatidate");
	    		 if(saraswatidate==null)
	    			 saraswatidate="-----";
	    		  sarojinidate=rs.getString("sarojinidate");
	    		 if(sarojinidate==null)
	    			 sarojinidate="-----";
	     	}
	     }
	     catch(SQLException se)
	     {
	    	 
	     }
	        try {
	            Document document = new Document();
	            PdfWriter.getInstance(document, response.getOutputStream());
	            document.open();
	            Font font1 = new Font(Font.FontFamily.HELVETICA  , 18, Font.BOLD);
	            Font font2 = new Font(Font.FontFamily.HELVETICA  , 10, Font.BOLDITALIC);
	            Font font6 = new Font(Font.FontFamily.HELVETICA  , 15, Font.BOLDITALIC);
	            Font font3 = new Font(Font.FontFamily.HELVETICA  , 10, Font.BOLD);
	            Font font4 = new Font(Font.FontFamily.HELVETICA  , 5, Font.UNDERLINE);
	            Font font5 = new Font(Font.FontFamily.HELVETICA  , 5, Font.BOLD);
	            String path=getServletContext().getRealPath("/img/")+"\\"+"logo.png";
	            Image image = Image.getInstance(path);
	            image.setAlignment(Image.ALIGN_MIDDLE);
	            image.scaleAbsolute(70,70);
	            document.add(image);
	            document.add(new Paragraph("                              ",font5));
	            document.add(new Chunk("MADAN MOHAN MALAVIYA UNIVERSITY OF TECHNOLOGY", font1));
	            document.add(new Paragraph("                                              No Dues Certificate", font6));
	            document.add(new Paragraph("                              "));
	            document.add(new Paragraph("ROLL NO. : "+num+"                                                                                         ACCOUNT NO. : "+account+"", font3));
	            document.add(new Paragraph("REGISTRATION NO. : "+reg+"                                                                                  DATE : "+sd+"",font3));
	            document.add(new Paragraph("                                                                                                                                                                                                                                                                                                                                                                                   ",font4));
	            document.add(new Paragraph("This is to certify that Mr./Miss "+name+" c/o "+parent+" Course "+course+" Branch "+branch+" Last Session "+last+" has NO DUES against mentioned Departments/Sections/Hostels."));
	            document.add(new Paragraph("                              "));
	      	  
	            PdfPTable table = new PdfPTable(4);
	            table.setWidthPercentage(100);
	            float[] columnWidths = new float[] { 2, 18,12, 12 };
	            table.setWidths(columnWidths);
	           
	            PdfPCell cell1 = new PdfPCell(new Phrase("S.N.",font2));
	            cell1.setFixedHeight(30);
	            cell1.setPaddingTop(6);
	           
	            cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
	            table.addCell(cell1);
	            PdfPCell celldep = new PdfPCell(new Phrase("DEPARTMENT / SECTION / HOSTEL",font2));
	            celldep.setFixedHeight(30);
	            celldep.setPaddingTop(6);
	            celldep.setPaddingLeft(6);
	            celldep.setBackgroundColor(BaseColor.LIGHT_GRAY);
	            table.addCell(celldep);
	            PdfPCell celldu = new PdfPCell(new Phrase("DUES",font2));
	            celldu.setFixedHeight(30);
	            celldu.setPaddingTop(6);
	            celldu.setPaddingLeft(6);
	            celldu.setBackgroundColor(BaseColor.LIGHT_GRAY);
	            table.addCell(celldu);
	            PdfPCell cellon = new PdfPCell(new Phrase("UPDATED ON",font2));
	            cellon.setFixedHeight(30);
	            cellon.setPaddingTop(6);
	            cellon.setPaddingLeft(6);
	            cellon.setBackgroundColor(BaseColor.LIGHT_GRAY);
	            table.addCell(cellon);
	            PdfPCell cell2 = new PdfPCell(new Phrase("1"));
	            cell2.setPaddingTop(10);
	            cell2.setFixedHeight(30);
	            cell2.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell2);
	            PdfPCell cell20 = new PdfPCell(new Phrase("Account Section"));
	            cell20.setPaddingTop(10);
	            cell20.setPaddingLeft(10);
	            cell20.setFixedHeight(30);
	            cell20.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell20);
	            table.addCell(accsec);
				table.addCell(accsecdate);
	            
	            PdfPCell cell3 = new PdfPCell(new Phrase("2"));
	            cell3.setPaddingTop(10);
	            cell3.setFixedHeight(30);
	            cell3.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell3);
	            PdfPCell cell30 = new PdfPCell(new Phrase("SGCA"));
	            cell30.setPaddingTop(10);
	            cell30.setPaddingLeft(10);
	            cell30.setFixedHeight(30);
	            cell30.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell30);
	            table.addCell(sgca);
	            table.addCell(sgcadate);
	            
	            PdfPCell cell4 = new PdfPCell(new Phrase("3"));
	            cell4.setPaddingTop(10);
	            cell4.setFixedHeight(30);
	            cell4.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell4);
	            PdfPCell cell40 = new PdfPCell(new Phrase("NCC"));
	            cell40.setPaddingTop(10);
	            cell40.setPaddingLeft(10);
	            cell40.setFixedHeight(30);
	            cell40.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell40);
	            table.addCell(ncc);
	            table.addCell(nccdate);
	            
	            PdfPCell cell5 = new PdfPCell(new Phrase("4"));
	            cell5.setPaddingTop(10);
	            cell5.setFixedHeight(30);
	            cell5.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell5);
	            PdfPCell cell50 = new PdfPCell(new Phrase("NSS"));
	            cell50.setPaddingTop(10);
	            cell50.setPaddingLeft(10);
	            cell50.setFixedHeight(30);
	            cell50.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell50);
	            table.addCell(nss);
	            table.addCell(nssdate);
	            
	            PdfPCell cell6 = new PdfPCell(new Phrase("5"));
	            cell6.setPaddingTop(10);
	            cell6.setFixedHeight(30);
	            cell6.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell6);
	            PdfPCell cell60 = new PdfPCell(new Phrase("Library"));
	            cell60.setPaddingTop(10);
	            cell60.setPaddingLeft(10);
	            cell60.setFixedHeight(30);
	            cell60.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell60);
	            table.addCell(library);
	            table.addCell(librarydate);
	            
	            PdfPCell cell7 = new PdfPCell(new Phrase("6"));
	            cell7.setPaddingTop(10);
	            cell7.setFixedHeight(30);
	            cell7.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell7);
	            PdfPCell cell70 = new PdfPCell(new Phrase("ITRC"));
	            cell70.setPaddingTop(10);
	            cell70.setPaddingLeft(10);
	            cell70.setFixedHeight(30);
	            cell70.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell70);
	            table.addCell(itrc);
	            table.addCell(itrcdate);
	            
	            PdfPCell cell8 = new PdfPCell(new Phrase("7"));
	            cell8.setPaddingTop(10);
	            cell8.setFixedHeight(30);
	            cell8.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell8);
	            PdfPCell cell80 = new PdfPCell(new Phrase("PTI"));
	            cell80.setPaddingTop(10);
	            cell80.setPaddingLeft(10);
	            cell80.setFixedHeight(30);
	            cell80.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell80);
	            table.addCell(pti);
	            table.addCell(ptidate);
	            
	            PdfPCell cell9 = new PdfPCell(new Phrase("8"));
	            cell9.setPaddingTop(10);
	            cell9.setFixedHeight(30);
	            cell9.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell9);
	            PdfPCell cell90 = new PdfPCell(new Phrase("Department"));
	            cell90.setPaddingTop(10);
	            cell90.setPaddingLeft(10);
	            cell90.setFixedHeight(30);
	            cell90.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell90);
	            table.addCell(department);
	            table.addCell(departmentdate);
	            
	            PdfPCell cell10 = new PdfPCell(new Phrase("9"));
	            cell10.setPaddingTop(10);
	            cell10.setFixedHeight(30);
	            cell10.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell10);
	            PdfPCell cell100 = new PdfPCell(new Phrase("Vehicle Section"));
	            cell100.setPaddingTop(10);
	            cell100.setPaddingLeft(10);
	            cell100.setFixedHeight(30);
	            cell100.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell100);
	            table.addCell(vehicle);
	            table.addCell(vehicledate);
	            
	            PdfPCell cell11 = new PdfPCell(new Phrase("10"));
	            cell11.setPaddingTop(10);
	            cell11.setFixedHeight(30);
	            cell11.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell11);
	            PdfPCell cell110 = new PdfPCell(new Phrase("Subhash Bhawan"));
	            cell110.setPaddingTop(10);
	            cell110.setPaddingLeft(10);
	            cell110.setFixedHeight(30);
	            cell110.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell110);
	            table.addCell(subhash);
	            table.addCell(subhashdate);
	            
	            PdfPCell cell12 = new PdfPCell(new Phrase("11"));
	            cell12.setPaddingTop(10);
	            cell12.setFixedHeight(30);
	            cell12.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell12);
	            PdfPCell cell120 = new PdfPCell(new Phrase("Raman Bhawan"));
	            cell120.setPaddingTop(10);
	            cell120.setPaddingLeft(10);
	            cell120.setFixedHeight(30);
	            cell120.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell120);
	            table.addCell(raman);
	            table.addCell(ramandate);
	            
	            PdfPCell cell13 = new PdfPCell(new Phrase("12"));
	            cell13.setPaddingTop(10);
	            cell13.setFixedHeight(30);
	            cell13.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell13);
	            PdfPCell cell130 = new PdfPCell(new Phrase("Tagore Bhawan"));
	            cell130.setPaddingTop(10);
	            cell130.setPaddingLeft(10);
	            cell130.setFixedHeight(30);
	            cell130.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell130);
	            table.addCell(tagore);
	            table.addCell(tagoredate);
	            
	            PdfPCell cell14 = new PdfPCell(new Phrase("13"));
	            cell14.setPaddingTop(10);
	            cell14.setFixedHeight(30);
	            cell14.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell14);
	            PdfPCell cell140 = new PdfPCell(new Phrase("Vishweshraiya Bhawan"));
	            cell140.setPaddingTop(10);
	            cell140.setPaddingLeft(10);
	            cell140.setFixedHeight(30);
	            cell140.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell140);
	            table.addCell(vs);
	            table.addCell(vsdate);
	            
	            PdfPCell cell15 = new PdfPCell(new Phrase("14"));
	            cell15.setPaddingTop(10);
	            cell15.setFixedHeight(30);
	            cell15.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell15);
	            PdfPCell cell150 = new PdfPCell(new Phrase("Ambedkar Bhawan"));
	            cell150.setPaddingTop(10);
	            cell150.setPaddingLeft(10);
	            cell150.setFixedHeight(30);
	            cell150.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell150);
	            table.addCell(ambedkar);
	            table.addCell(ambedkardate);
	            
	            PdfPCell cell16= new PdfPCell(new Phrase("15"));
	            cell16.setPaddingTop(10);
	            cell16.setFixedHeight(30);
	            cell16.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell16);
	            PdfPCell cell160 = new PdfPCell(new Phrase("Saraswati Bhawan"));
	            cell160.setPaddingTop(10);
	            cell160.setPaddingLeft(10);
	            cell160.setFixedHeight(30);
	            cell160.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell160);
	            table.addCell(saraswati);
	            table.addCell(saraswatidate);
	            
	            PdfPCell cell17 = new PdfPCell(new Phrase("16"));
	            cell17.setPaddingTop(10);
	            cell17.setFixedHeight(30);
	            cell17.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell17);
	            PdfPCell cell170 = new PdfPCell(new Phrase("Sarojini Bhawan"));
	            cell170.setPaddingTop(10);
	            cell170.setPaddingLeft(10);
	            cell170.setFixedHeight(30);
	            cell170.setBackgroundColor(BaseColor.WHITE);
	            table.addCell(cell170);
	            table.addCell(sarojini);
	            table.addCell(sarojinidate);
	            
	           
	            document.add(table);
	            document.add(new Paragraph("STUDENT'S SIGNATURE                                                                       AUTHORITY SIGNATURE "));
	            
	            
	            document.close();
			 	
	        } catch (DocumentException de) {
	            throw new IOException(de.getMessage());
	        }
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
