<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
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
</style>

</head>
<body>
<div style="top: 0%;left: 0%;width: 100%;height: 20%;position: absolute;background-color: rgb(53,121,98)">
<div style="top: 0%;left: 12.3%;width: 10%;height: 20%;position: absolute">
<img src="/ndp/img/logo1.png"/>
</div>
<div style="top: 0%;left: 20.7%;width: 60%;height: 20%;position: absolute;">
<img src="/ndp/img/name.png"/>
</div>
</div>
<div style="top: 16.5%;left: 0%;width: 99.7%;height: 33px;padding-left: 5px;position: absolute;background-image: -webkit-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -moz-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -ms-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);">
<a  class="home" href="">Home</a>
</div>
 
<div style="top:180px;left:150px;width:1100px;position:absolute;">
<table width="1100px">
<tr><th>REG.NO.</th><th>ROLL NO.</th><th>NAME</th><th>FATHER NAME</th><th>DUES IN DEPTT.</tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String str="select * from record where accsec!=? or sgca!=? or itrc!=? or pti!=? or raman!=? or subhash!=? or sarojini!=? or ambedkar!=? or library!=? or department!=? or vs!=? or tagore!=? or ncc!=? or nss!=? or vehicle!=? or saraswati!=?";
try
{
	ps=con.prepareStatement(str);
	ps.setString(1,"----NO DUES----");
	ps.setString(2,"----NO DUES----");
	ps.setString(3,"----NO DUES----");
	ps.setString(4,"----NO DUES----");
	ps.setString(5,"----NO DUES----");
	ps.setString(6,"----NO DUES----");
	ps.setString(7,"----NO DUES----");
	ps.setString(8,"----NO DUES----");
	ps.setString(9,"----NO DUES----");
	ps.setString(10,"----NO DUES----");
	ps.setString(11,"----NO DUES----");
	ps.setString(12,"----NO DUES----");
	ps.setString(13,"----NO DUES----");
	ps.setString(14,"----NO DUES----");
	ps.setString(15,"----NO DUES----");
	ps.setString(16,"----NO DUES----");
	rs=ps.executeQuery();
	while(rs.next())
	{
	  String dues="";
	  String accsec=rs.getString("accsec");
	  String sgca=rs.getString("sgca");
	  String ncc=rs.getString("ncc");
	  String nss=rs.getString("nss");
	  String library=rs.getString("library");
	  String itrc=rs.getString("itrc");
	  String pti=rs.getString("pti");
	  String department=rs.getString("department");
	  String vehicle=rs.getString("vehicle");
	  String subhash=rs.getString("subhash");
	  String raman=rs.getString("raman");
	  String tagore=rs.getString("tagore");
	  String vs=rs.getString("vs");
	  String ambedkar=rs.getString("ambedkar");
	  String saraswati=rs.getString("saraswati");
	  String sarojini=rs.getString("sarojini");
	  
	  
	  
	  
	  if(!accsec.equals("----NO DUES----"))
	    dues=dues+"Account Section"+", ";
	  if(!sgca.equals("----NO DUES----"))
		    dues=dues+"SGCA"+", ";
	  if(!ncc.equals("----NO DUES----"))
		    dues=dues+"NCC"+", ";
	  if(!nss.equals("----NO DUES----"))
		    dues=dues+"NSS"+", ";
	  if(!library.equals("----NO DUES----"))
		    dues=dues+"Library"+", ";
	  if(!itrc.equals("----NO DUES----"))
		    dues=dues+"ITRC"+", ";
	  if(!pti.equals("----NO DUES----"))
		    dues=dues+"PTI"+", ";
	  if(!department.equals("----NO DUES----"))
		    dues=dues+"Department"+", ";
	  if(!vehicle.equals("----NO DUES----"))
		    dues=dues+"Vehicle"+", ";
	  if(!subhash.equals("----NO DUES----"))
		    dues=dues+"Subhash Bhawan"+", ";
	  if(!raman.equals("----NO DUES----"))
		    dues=dues+"Raman Bhawan"+", ";
	  if(!tagore.equals("----NO DUES----"))
		    dues=dues+"Tagore Bhawan"+", ";
	  if(!vs.equals("----NO DUES----"))
		    dues=dues+"VS Bhawan"+", ";
	  if(!ambedkar.equals("----NO DUES----"))
		    dues=dues+"Ambedkar Bhawan"+", ";
	  if(!saraswati.equals("----NO DUES----"))
		    dues=dues+"Saraswati Bhawan"+", ";
	  if(!sarojini.equals("----NO DUES----"))
		    dues=dues+"Sarojini Bhawan"+", ";
	  
	  
	  
	  
	
	%>
		<tr><td><%=rs.getString("regno") %></td><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td><td><%=dues%></td></tr>
	<%
	}
	
}
catch(SQLException se)
{
	
}
%>
</table>
</div>
</body>
</html>