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
<tr><th align="left">REG.NO.</th><th align="left">ROLL NO.</th><th align="left">NAME</th><th align="left">FATHER NAME</th></tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String str="select * from record where status=?";
try
{
	ps=con.prepareStatement(str);
	ps.setInt(1,1);
	rs=ps.executeQuery();
	while(rs.next())
	{
	 
	%>
		<tr><td><%=rs.getString("regno") %></td><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td></tr>
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