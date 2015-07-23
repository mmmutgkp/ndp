<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width="1000px">
<tr><th>ROLLNO.</th><th>REG.NO.</th><th>NAME</th><th>FATHER NAME</th><th>REMARKS/DUES</th></tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String rollnum=request.getParameter("roll");
long rollno=Long.parseLong(rollnum);
con=Crudoperation.createConnection();
String str="select * from record where rollno like '"+rollno+"%'";
try
{
	ps=con.prepareStatement(str);
	rs=ps.executeQuery();
	while(rs.next())
	{
		%>
		<tr><td><input type="checkbox"/></td><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("regno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td><td><input type="text" name="<%=rs.getString("regno") %>" value="<%=rs.getString("pti") %>"/></td></tr>
	    <%
	}
}
catch(SQLException se)
{
	System.out.print(se);
}
%>
</table>
</body>
</html>