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
</head>
<body>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/ndp/jsp/login.jsp");
}
%>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
%>
<form action="/ndp/Updatenodues" method="post">
<div style="background-color: white;padding-left: 15px;padding-top: 15px;padding-bottom: 15px;border-radius: 5px;box-shadow: inset 0 0 15px #00CC99;">
<table width="350px">
<%
con=Crudoperation.createConnection();
String id=request.getParameter("i_d");
String str="select * from record where rollno=?";
try
{
	ps=con.prepareStatement(str);
	ps.setString(1,id);
	rs=ps.executeQuery();
	if(rs.next())
	{
%>
<tr><th>Name</th><th><%=rs.getString("name")%></th></tr>
<tr><td>Account Section</td><td><input type="text" name="txtacc" value="<%=rs.getString("accsec")%>"></td></tr>
<tr><td>SGCA</td><td><input type="text" name="txtsgca" value="<%=rs.getString("sgca")%>"></td></tr>
<tr><td>NCC</td><td><input type="text" name="txtncc" value="<%=rs.getString("ncc") %>"></td></tr>
<tr><td>NSS</td><td><input type="text" name="txtnss" value="<%=rs.getString("nss") %>"></td></tr>
<tr><td>Library</td><td><input type="text" name="txtlibrary" value="<%=rs.getString("library")%>"></td></tr>
<tr><td>ITRC</td><td><input type="text" name="txtitrc" value="<%=rs.getString("itrc")%>"></td></tr>
<tr><td>PTI</td><td><input type="text" name="txtpti" value="<%=rs.getString("pti")%>"></td></tr>
<tr><td>Department</td><td><input type="text" name="txtdepartment" value="<%=rs.getString("department")%>"></td></tr>
<tr><td>Vehicle Section</td><td><input type="text" name="txtvehicle" value="<%=rs.getString("vehicle")%>"></td></tr>
<tr><td>Subhash Bhawan</td><td><input type="text" name="txtsubhash" value="<%=rs.getString("subhash")%>"></td></tr>
<tr><td>Raman Bhawan</td><td><input type="text" name="txtraman" value="<%=rs.getString("raman") %>"></td></tr>
<tr><td>Tagore Bhawan</td><td><input type="text" name="txttagore" value="<%=rs.getString("tagore") %>"></td></tr>
<tr><td>Vishweshraiya Bhawan</td><td><input type="text" name="txtvs" value="<%=rs.getString("vs")%>"></td></tr>
<tr><td>Ambedkar Bhawan</td><td><input type="text" name="txtambedkar" value="<%=rs.getString("ambedkar")%>"></td></tr>
<tr><td>Saraswati Bhawan</td><td><input type="text" name="txtsaraswati" value="<%=rs.getString("saraswati")%>"></td></tr>
<tr><td>Sarojini Bhawan</td><td><input type="text" name="txtsarojini" value="<%=rs.getString("sarojini")%>"></td></tr>
<tr><td><input type="hidden" name="txtid" value=<%=rs.getLong("rollno")%>></td></tr>

<%
	}
}
catch(SQLException se)
{
	System.out.print(se);
}
%>
</table>
<div style="top: 97%;left: 1%;width: 30%;height: 10%;position: absolute;padding-left: 25px">
<input style="width: 300px;height: 30px" type="submit" value="UPDATE">
</div>
</form>
</div>
</body>
</html>