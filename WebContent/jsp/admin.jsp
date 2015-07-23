<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
a.logout:link
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.logout:ACTIVE
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.logout:HOVER
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.logout:VISITED 
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;	
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<body>
<%@ include file="/html/header.html" %>
<%@ include file="/html/option.html" %>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/ndp/jsp/login.jsp");
}
%>
<div style="top: 250px;left: 300px;width: 800px;height: 100px;position: absolute;">
<center>
<%
String info=request.getParameter("msg");
if(info!=null)
	{%>
<font color="red" face="calibri" size="10px"><%=info %></font>
	<%}%>
	</center>
	</div>
<div style="top: 24%;left: 2%;width: 88%;height: 5%;position: absolute;background-color:#CCFFCC;box-shadow: inset 0 0 15px #00CC99;border-radius: 5px">
<font color="009999" size="5px" face="calibri">Welcome,<%=ui%></font>
</div>
<div style="top: 24%;left: 90.5%;width: 8.2%;height: 5%;position: absolute;background-color:#00CC99;border-radius: 5px">
</div>
<div style="top: 24%;left: 93%;width: 7%;height: 3%;position: absolute;padding-top: 5px">
<a class="logout" href="/ndp/LogoutSer">LOGOUT</a>
</div>
<div style="top: 24%;left: 91%;width: 2%;height: 4%;position: absolute;padding-top: 5px">
<img src="/ndp/img/logout.png" width="100%" height="100%">
</div>
</body>
</html>