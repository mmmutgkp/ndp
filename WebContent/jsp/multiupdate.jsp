<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.btn-style{
	border : solid 1px #638a00;
	border-radius : 3px;
	moz-border-radius : 3px;
	-webkit-box-shadow : 0px 2px 2px rgba(0,0,0,0.4);
	-moz-box-shadow : 0px 2px 2px rgba(0,0,0,0.4);
	box-shadow : 0px 2px 2px rgba(0,0,0,0.4);
	font-size : 20px;
	color : #ffffff;
	padding : 1px 17px;
	background : #96c300;
	background : -webkit-gradient(linear, left top, left bottom, color-stop(0%,#96c300), color-stop(100%,#648c00));
	background : -moz-linear-gradient(top, #96c300 0%, #648c00 100%);
	background : -webkit-linear-gradient(top, #96c300 0%, #648c00 100%);
	background : -o-linear-gradient(top, #96c300 0%, #648c00 100%);
	background : -ms-linear-gradient(top, #96c300 0%, #648c00 100%);
	background : linear-gradient(top, #96c300 0%, #648c00 100%);
	filter : progid:DXImageTransform.Microsoft.gradient( startColorstr='#96c300', endColorstr='#648c00',GradientType=0 );

}
</style>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div style="top: 25%;left: 20%;position: absolute;">
<table>
<tr><th>ROLL NUMBER</th><th>NAME</th><th>FATHER NAME</th><th>DUES</th></tr>
<%
String roll1=request.getParameter("roll1");
String roll2=request.getParameter("roll2");
String roll3=request.getParameter("roll3");
String roll4=request.getParameter("roll4");
String roll5=request.getParameter("roll5");
String roll6=request.getParameter("roll6");
String roll7=request.getParameter("roll7");
String roll8=request.getParameter("roll8");
String roll9=request.getParameter("roll9");
String roll10=request.getParameter("roll10");
String name1=request.getParameter("name1");
String name2=request.getParameter("name2");
String name3=request.getParameter("name3");
String name4=request.getParameter("name4");
String name5=request.getParameter("name5");
String name6=request.getParameter("name6");
String name7=request.getParameter("name7");
String name8=request.getParameter("name8");
String name9=request.getParameter("name9");
String name10=request.getParameter("name10");
String father1=request.getParameter("father1");
String father2=request.getParameter("father2");
String father3=request.getParameter("father3");
String father4=request.getParameter("father4");
String father5=request.getParameter("father5");
String father6=request.getParameter("father6");
String father7=request.getParameter("father7");
String father8=request.getParameter("father8");
String father9=request.getParameter("father9");
String father10=request.getParameter("father10");
String dues1=request.getParameter("dues1");
String dues2=request.getParameter("dues2");
String dues3=request.getParameter("dues3");
String dues4=request.getParameter("dues4");
String dues5=request.getParameter("dues5");
String dues6=request.getParameter("dues6");
String dues7=request.getParameter("dues7");
String dues8=request.getParameter("dues8");
String dues9=request.getParameter("dues9");
String dues10=request.getParameter("dues10");

	if(!(name1.equals("not found") || name1.equals(" ")||roll1.equals("0")))
	{
	%>
		<tr><td><%=roll1%></td><td><%=name1 %></td><td><%=father1 %></td><td><%=dues1%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name2.equals("not found") || name2.equals(" ")||roll2.equals("0")))
	{
	%>
		<tr><td><%=roll2%></td><td><%=name2 %></td><td><%=father2 %></td><td><%=dues2%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name3.equals("not found") || name3.equals(" ")||roll3.equals("0")))
	{
	%>
		<tr><td><%=roll3%></td><td><%=name3 %></td><td><%=father3 %></td><td><%=dues3%></td></tr>
    <%
	}
	else
	{
		
	}
	if(!(name4.equals("not found") || name4.equals(" ")||roll4.equals("0")))
	{
	%>
		<tr><td><%=roll4%></td><td><%=name4 %></td><td><%=father4 %></td><td><%=dues4%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name5.equals("not found") || name5.equals(" ")||roll5.equals("0")))
	{
	%>
		<tr><td><%=roll5%></td><td><%=name5 %></td><td><%=father5 %></td><td><%=dues5%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name6.equals("not found") || name6.equals(" ")||roll6.equals("0")))
	{
	%>
		<tr><td><%=roll6%></td><td><%=name6 %></td><td><%=father6 %></td><td><%=dues6%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name7.equals("not found") || name7.equals(" ")||roll7.equals("0")))
	{
	%>
		<tr><td><%=roll7%></td><td><%=name7 %></td><td><%=father7 %></td><td><%=dues7%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name8.equals("not found") || name8.equals(" ")||roll8.equals("0")))
	{
	%>
		<tr><td><%=roll8%></td><td><%=name8 %></td><td><%=father8 %></td><td><%=dues8%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name9.equals("not found") || name9.equals(" ")||roll9.equals("0")))
	{
	%>
		<tr><td><%=roll9%></td><td><%=name9 %></td><td><%=father9 %></td><td><%=dues9%></td></tr>
	<%
	}
	else
	{
		
	}
	if(!(name10.equals("not found")|| name10.equals(" ")||roll10.equals("0")))
	{
	%>
	<tr><td><%=roll10%></td><td><%=name10 %></td><td><%=father10 %></td><td><%=dues10%></td></tr>
	<%
	}
	else
	{
		
	}
	%>
</table>
<form action="/ndp/Multiupdate" method="post">
<input type="hidden" value="<%=roll1%>" name="roll1">
<input type="hidden" value="<%=roll2%>" name="roll2">
<input type="hidden" value="<%=roll3%>" name="roll3">
<input type="hidden" value="<%=roll4%>" name="roll4">
<input type="hidden" value="<%=roll5%>" name="roll5">
<input type="hidden" value="<%=roll6%>" name="roll6">
<input type="hidden" value="<%=roll7%>" name="roll7">
<input type="hidden" value="<%=roll8%>" name="roll8">
<input type="hidden" value="<%=roll9%>" name="roll9">
<input type="hidden" value="<%=roll10%>" name="roll10">
<input type="hidden" value="<%=dues1%>" name="dues1">
<input type="hidden" value="<%=dues2%>" name="dues2">
<input type="hidden" value="<%=dues3%>" name="dues3">
<input type="hidden" value="<%=dues4%>" name="dues4">
<input type="hidden" value="<%=dues5%>" name="dues5">
<input type="hidden" value="<%=dues6%>" name="dues6">
<input type="hidden" value="<%=dues7%>" name="dues7">
<input type="hidden" value="<%=dues8%>" name="dues8">
<input type="hidden" value="<%=dues9%>" name="dues9">
<input type="hidden" value="<%=dues10%>" name="dues10">
<center><input type="submit" value="CONFIRM" class="btn-style"></center>
</form>
</body>
</html>