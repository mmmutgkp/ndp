<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<%@ include file="/html/optiondep.html" %>
<%
String info=request.getParameter("msg");
if(info!=null)
	{%>
	<div style="top: 40%;left: 34%;width: 40%;height: 15%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 10px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;box-shadow: 10px 10px 5px #888888;padding-left: 10px;padding-top: 35px">
<center>	<font color="#336699" face="Segoe UI" size="5px"><b><%=info %></b></font></center>
	</div>
	<div id="phone-outer" style="top: 38%;left: 34%;width: 40%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px"><font face="Segoe UI" size="4px" color="white" >Message</font></div>
<div style="top: 52%;left: 70%;width: 10%;height: 10%;position: absolute;">
	<img src="/ndp/img/Tick.png" width="80px" height="80px"/>
	</div>
	<%}%>
</body>
</html>