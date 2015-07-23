 <%@page import="ndp.ser.Crudoperation"%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"  
   pageEncoding="ISO-8859-1"%>  
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <%@ page import ="java.util.Date" %>  
 <%@ page import ="java.io.*" %>  
 <%@ page import ="java.io.FileNotFoundException" %>  
 <%@ page import ="java.io.IOException" %>  
 <%@ page import ="java.util.Iterator" %>  
 <%@ page import ="java.util.ArrayList" %>  
 <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
 <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
 <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
 <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
 <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>  
 <html>  
 <head> 
 <style type="text/css">
a.home:LINK
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.home:ACTIVE
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.home:HOVER
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.home:VISITED {
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
	font-family: Segoe UI;
}	

th {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	


</style>
  
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
 <link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>  
 </head>  
 <body> 
 <%@ include file="/jsp/header.jsp" %>
  
 <%!    
 Connection con;  
 PreparedStatement ps=null;  
 public String changeroll(String str)
 {
	 int i=str.indexOf('.') , j = str.indexOf('E');
	 if( i >= 0 && j >= 0)
	 {
		 return str.substring(0,i) + str.substring(i+1,j);
	 }
	 else if( j < 0 && i >=0)
	 {
		 return str.substring(0,i);
	 }
	 else
	 {
		 return str;
	 }
}

public static ArrayList readExcelFile(String fileName)  
 {  
   ArrayList cellArrayLisstHolder = new ArrayList();  
   try
   {    
     FileInputStream myInput = new FileInputStream(fileName);   
     POIFSFileSystem myFileSystem = new POIFSFileSystem(myInput);    
     HSSFWorkbook myWorkBook = new HSSFWorkbook(myFileSystem);    
     HSSFSheet mySheet = myWorkBook.getSheetAt(0);    
     Iterator rowIter = mySheet.rowIterator();  
     while(rowIter.hasNext())
      {  
       HSSFRow myRow = (HSSFRow)rowIter.next();  
       Iterator cellIter = myRow.cellIterator();  
       ArrayList cellStoreArrayList=new ArrayList();  
       while(cellIter.hasNext())
       {  
        HSSFCell myCell = (HSSFCell)cellIter.next();  
        cellStoreArrayList.add(myCell);  
       }  
       cellArrayLisstHolder.add(cellStoreArrayList);  
      }  
   }
   catch (Exception e)
   {
	 e.printStackTrace(); 
   }  
   return cellArrayLisstHolder;  
 }%>  
 <%  
 String filename=request.getParameter("filename");
 String sessions=(String)request.getAttribute("session");
 String course=(String)request.getAttribute("course");
 String branch=(String)request.getAttribute("branch");
 String path=getServletContext().getRealPath("/upload/")+"\\"+filename;
 ArrayList dataHolder=readExcelFile(path); 
 con=Crudoperation.createConnection();  
 String query="insert into record (rollno,regno,name,parent,course,branch,accsec,sgca,ncc,nss,library,itrc,pti,department,vehicle,subhash,raman,tagore,vs,ambedkar,saraswati,sarojini,session) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";  
 ps=con.prepareStatement(query);  
 int count=0;  
 ArrayList cellStoreArrayList=null;  
 for (int i=1;i < dataHolder.size(); i++) 
 {  
   cellStoreArrayList=(ArrayList)dataHolder.get(i);  
   String reg=((HSSFCell)cellStoreArrayList.get(0)).toString();
   String regno=changeroll(reg);
   ps.setString(2,regno);
   String roll=((HSSFCell)cellStoreArrayList.get(1)).toString();
   String rollno=changeroll(roll);
   long rollnum=Long.parseLong(rollno);
   ps.setLong(1,rollnum);  
   ps.setString(3,((HSSFCell)cellStoreArrayList.get(2)).toString());  
   ps.setString(4,((HSSFCell)cellStoreArrayList.get(3)).toString());  
   ps.setString(5,course);
   ps.setString(6,branch);
   ps.setString(7,"nil");
   ps.setString(8,"nil");
   ps.setString(9,"nil");
   ps.setString(10,"nil");
   ps.setString(11,"nil");
   ps.setString(12,"nil");
   ps.setString(13,"nil");
   ps.setString(14,"nil");
   ps.setString(15,"nil");
   ps.setString(16,"nil");
   ps.setString(17,"nil");
   ps.setString(18,"nil");
   ps.setString(19,"nil");
   ps.setString(20,"nil");
   ps.setString(21,"nil");
   ps.setString(22,"nil");
   ps.setString(23,sessions);
   
   count= ps.executeUpdate();   
 }  
   if(count>0)  
     { %>  
        
         <div style="top: 150px;left: 250px;width: 800px;height: 400px;position: absolute;">
     <font color="red" face="arial">Following deatils from Excel file have been inserted in student table of database</font>  
           <table width="800px">  
             <tr>  
               <th>Reg No</th>  
               <th>Roll No</th>  
               <th>Name</th>
               <th>Parent</th>  
             </tr>  
     <% for (int i=1;i < dataHolder.size(); i++) 
     {  
      cellStoreArrayList=(ArrayList)dataHolder.get(i);
      String reg=((HSSFCell)cellStoreArrayList.get(0)).toString();
      String regno=changeroll(reg);
      String roll=((HSSFCell)cellStoreArrayList.get(1)).toString();
      String rollno=changeroll(roll);
      %>  
    <tr>  
     <td><%=regno%></td>  
     <td><%=rollno%></td>  
     <td><%=((HSSFCell)cellStoreArrayList.get(2)).toString() %></td> 
      <td><%=((HSSFCell)cellStoreArrayList.get(3)).toString() %></td>  
   </tr>  
     <%}  
    }  
   else  
   {%>  
   <center>Details have not been inserted!!!!!!!!!</center>  
   <%  }  %>  
     </table>  
     </div>
 </body>  
 </html>  