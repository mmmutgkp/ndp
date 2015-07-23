<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<body>
<table width="800px">
<tr><th>REG. NO.</th><th>ROLL NO.</th><th>NAME</th><th>PARENT</th><th>DUES</th></tr>
<%
String section=request.getParameter("section");
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String str="select * from record where not "+section+"=?";
try
{
	ps=con.prepareStatement(str);
	ps.setString(1,"----NO DUES----");
	rs=ps.executeQuery();
	while(rs.next())
	{
		%>
<tr><td><%=rs.getString("regno") %></td><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td><td><%=rs.getString(section) %></td></tr>
		<%
	}
}
catch(SQLException se)
{
	
}
%>
</table>
</body>
</html>