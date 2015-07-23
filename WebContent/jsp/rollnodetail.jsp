<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="ndp.ser.Crudoperation"%>
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
table,th
{
 font-family: arial;
 text-align: left;
}
</style>
</head>
<body>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/ndp/jsp/login.jsp");
}
%>
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
<div style="top: 23%;left: 30%;width: 40%;height: 12%;position: absolute;padding-left: 40px;padding-top: 15px;border-radius: 5px;box-shadow: inset 0 0 15px #00CC99;">
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String rollno=request.getParameter("txtroll");
		long roll=Long.parseLong(rollno);
		String str="select * from record where rollno=?";
		con=Crudoperation.createConnection();
		try
		{
			ps=con.prepareStatement(str);
			ps.setLong(1,roll);
			rs=ps.executeQuery();
			if(rs.next())
			{
				%>
				
				<form action="/ndp/Updatenodues" method="post">
				<input type="hidden" value=<%=roll %> name="txtid">
				<table width="500px">
				<tr><th>RollNo.</th><th>:</th><th><%=rs.getLong("rollno") %></th></tr>
				<tr><th>Name</th><th>:</th><th><%=rs.getString("name") %></th></tr>
				<tr><th>Father's Name</th><th>:</th><th><%=rs.getString("parent") %></th></tr>
				</table>
				</div>
				<hr>
				<div style="top: 40%;left: 30%;width: 40%;height: 70%;position: absolute;padding-left: 40px;padding-top: 15px;border-radius: 5px;box-shadow: inset 0 0 15px #00CC99;">
				<table width="500px">
				<tr><th>Account Section</th><th>:</th><th><input type="text" name="txtacc" value="<%=rs.getString("accsec")%>">
				<tr><th>SGCA</th><th>:</th><th><input type="text" name="txtsgca" value="<%=rs.getString("sgca")%>">
				<tr><th>NCC</th><th>:</th><th><input type="text" name="txtncc" value="<%=rs.getString("ncc")%>">
				<tr><th>NSS</th><th>:</th><th><input type="text" name="txtnss" value="<%=rs.getString("nss")%>">
				<tr><th>Library</th><th>:</th><th><input type="text" name="txtlibrary" value="<%=rs.getString("library")%>">
				<tr><th>ITRC</th><th>:</th><th><input type="text" name="txtitrc" value="<%=rs.getString("itrc")%>">
				<tr><th>PTI</th><th>:</th><th><input type="text" name="txtpti" value="<%=rs.getString("pti")%>">
				<tr><th>Department</th><th>:</th><th><input type="text" name="txtdepartment" value="<%=rs.getString("department")%>">
				<tr><th>Vehicle Section</th><th>:</th><th><input type="text" name="txtvehicle" value="<%=rs.getString("vehicle")%>">
				<tr><th>Subhash Bhawan</th><th>:</th><th><input type="text" name="txtsubhash" value="<%=rs.getString("subhash")%>">
				<tr><th>Raman Bhawan</th><th>:</th><th><input type="text" name="txtraman" value="<%=rs.getString("raman")%>">
				<tr><th>Tagore Bhawan</th><th>:</th><th><input type="text" name="txttagore" value="<%=rs.getString("tagore")%>">
				<tr><th>Vishweshraiya Bhawan</th><th>:</th><th><input type="text" name="txtvs" value="<%=rs.getString("vs")%>">
				<tr><th>Ambedkar Bhawan</th><th>:</th><th><input type="text" name="txtambedkar" value="<%=rs.getString("ambedkar")%>">
				<tr><th>Saraswati Bhawan</th><th>:</th><th><input type="text" name="txtsaraswati" value="<%=rs.getString("saraswati")%>">
				<tr><th>Sarojini Bhawan</th><th>:</th><th><input type="text" name="txtsarojini" value="<%=rs.getString("sarojini")%>">
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr><th></th><th></th><th><input type="submit" value="UPDATE"></th></tr>
				</table>
				</form>
			
				<%
			}
			else
			{
				response.sendRedirect("/ndp/jsp/searchroll.jsp?msg=Not found in database!!");
			}
		}
		catch(SQLException se)
		{
			
		}
%>	
</div>
</body>
</html>