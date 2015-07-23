<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"  %>
<%@page import="ndp.ser.Crudoperation"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
<script>
function update(id)
{
	var x;
	if(XMLHttpRequest)
		{
		x=new XMLHttpRequest();
		}
	else
		{
		x=new ActiveXObject("Microsoft.XMLHTTP")
		}
	x.onreadystatechange=function()
	{
		if(x.readyState==4 && x.status==200)
			{
			info=x.responseText;
			document.getElementById("div1").innerHTML=info;
			}
	}
	x.open("get","/ndp/jsp/updatenoduesfill.jsp?i_d="+id,"true");
	x.send();
}
</script>
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
<table width="800px">
<tr><th>SELECT</th><th>ROLLNO.</th><th>REG.NO.</th><th>NAME</th><th>FATHER NAME</th></tr>
<%
con=Crudoperation.createConnection();
String str="select * from record";
try
{
	ps=con.prepareStatement(str);
	rs=ps.executeQuery();
	while(rs.next())
	{
		%>
		<tr><td><input type="radio" name="id" onclick="update(this.value)" value=<%=rs.getLong("rollno")%>></td><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("regno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td></tr>
	    <%
	}
}
catch(SQLException se)
{
	System.out.print(se);
}
%>
</table>
<div id="div1" style="top:10%;left:65%;width:26%;height:50%;position:absolute"></div>
</body>
</html>