<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<body>
<%@ include file="/html/header.html" %>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/ndp/jsp/login.jsp");
}
%>
<div style="top: 230px;left: 280px;width: 800px;height: 100px;position: absolute;">
<center>
<%
String info=request.getParameter("msg");
if(info!=null)
	{%>
<font color="red" face="calibri"><%=info %></font>
	<%}%>
	</center>
	</div>
<div style="top: 40%;left: 38%;width: 20%;height: 20%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 45px;padding-top: 25px">
Enter Registration No.
<br>
<form action="/ndp/jsp/regnodues.jsp">
<input type="text" name="txtreg">
<input type="submit" value="Search">
</form>
</div>
</body>
</html>