<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 15px;
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
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div id="phone-outer" style="top: 23%;left: 32%;width: 32%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px"><font face="Segoe UI" size="4px" color="white" >Student Dues</font></div>
<div style="top: 25%;left: 20%;position: absolute;">
<table width="800px">
<tr><th>REG. NO.</th><th>ROLL NO.</th><th>NAME</th><th>PARENT</th><th>DUES</th></tr>
<%
String branch=null;
if(ui.equals("Computer Science & Engineering Department"))
branch="CSE";
else if(ui.equals("Electronics & Communication Engineering Department"))
branch="ECE";
else if(ui.equals("Electrical Engineering Department"))
branch="EE";
else if(ui.equals("Mechanical Engineering Department"))
branch="ME";
else if(ui.equals("Civil Engineering Department"))
branch="CE";
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String str="select * from record where "+sec+"!=? and branch=?";
try
{
	ps=con.prepareStatement(str);
	ps.setString(1,"nil");
	ps.setString(2,branch);
	rs=ps.executeQuery();
	while(rs.next())
	{
		%>
<tr><td><%=rs.getString("regno") %></td><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td><td><%=rs.getString(sec) %></td></tr>
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