<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,ndp.ser.*;" %>
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
table
{
border-collapse: collapse;
font-size: small;
}
th
{
  background-color: white;
  font-family: calibri; 
}
td
{
  background-color: white;
  font-family: calibri;
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
<div style="top: 30%;left: 5%;width: 95%;position: absolute;">
<table border='1'>
<tr><th>ROLL NO.</th><th>REG. NO.</th><th>NAME</th><th>FATHER NAME</th><th colspan="8">DEPARTMENT/SECTION/HOSTEL</th></tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String str="select * from record";
try
{
	ps=con.prepareStatement(str);
	rs=ps.executeQuery();
	while(rs.next())
	{
		%>
		<tr><td rowspan="4"><%=rs.getLong("rollno")%></td>
		<td rowspan="4"><%=rs.getString("regno") %></td>
		<td rowspan="4"><%=rs.getString("name") %></td>
		<td rowspan="4"><%=rs.getString("parent") %></td>
		<th>Account Section</th>
		<td><%=rs.getString("accsec") %></td>
		<th>SGCA</th>
		<td><%=rs.getString("sgca") %></td>
		<th>NCC</th>
		<td><%=rs.getString("ncc") %></td>
		<th>NSS</th>
		<td><%=rs.getString("nss") %></td>
		</tr>
		<tr>
		<th>Library</th>
		<td><%=rs.getString("library") %></td>
		<th>ITRC</th>
		<td><%=rs.getString("itrc") %></td>
		<th>PTI</th>
		<td><%=rs.getString("pti") %></td>
		<th>Department</th>
		<td><%=rs.getString("department") %></td>
		</tr>
		<tr>
		<th>Vehicle Section</th>
		<td><%=rs.getString("vehicle") %></td>
        <th>Subhash Bhawn</th>	
		<td><%=rs.getString("subhash") %></td>
		<th>Raman Bhawan</th>
		<td><%=rs.getString("raman") %></td>
		<th>Tagore Bhawan</th>
		<td><%=rs.getString("tagore") %></td>
		</tr>
		<tr>
		<th>Vishweshraiya Bhawan</th>
		<td><%=rs.getString("vs") %></td>
		<th>Ambedkar Bhawan</th>
		<td><%=rs.getString("ambedkar") %></td>
		<th>Saraswati Bhawan</th>
		<td><%=rs.getString("saraswati") %></td>
		<th>Sarojini Bhawan</th>
		<td><%=rs.getString("sarojini") %></td>
		</tr>
		<tr>
		<td colspan="12" bgcolor="black"> </td>
		</tr>
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