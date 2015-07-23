<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>

<style type="text/css">
table,th
{
 font-family: Segoe UI;
}
#phone-outer {    
    border: 1px solid #336699;
    border-bottom-left-radius: 25px;
    border-bottom-right-radius: 25px;

    box-shadow: 0 3px 0.7px 1px #777777, 0 -7px rgba(0, 0, 0, 0.4) inset;

    height: 500px;
    width: 400px;
    margin: 0 auto;


    background-image: linear-gradient(right, #777 35%, #333 56%);
    background-image: -o-linear-gradient(right, #777 35%, #333 56%);
    background-image: -moz-linear-gradient(right, #777 35%, #333 56%);
    background-image: -webkit-linear-gradient(right, #777 35%, #333 56%);
    background-image: -ms-linear-gradient(right, #777 35%, #333 56%);
    background-image: gradient(right, #777 35%, #333 56%);
}
h2
{
 color: white;
 font-family: Segoe UI;
 font-size: 30px;
}
.textbox { 
    background: white; 
    border: 1px solid #336699; 
    border-radius: 5px; 
    box-shadow: 0 0 5px 3px #336699; 
    color: #111; 
    outline: none; 
    height:30px; 
    width: 300px; 
  } 
.btn-style{
    width: 200px;
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
<%@ include file="/html/header.html" %>
<div style="top: 150px;left: 280px;width: 800px;height: 30px;position: absolute;">
<center>
<%
String info=request.getParameter("msg");
if(info!=null)
	{%>
<font color="red" face="calibri"><%=info %></font>
	<%}%>
	</center>
	</div>
<div id="phone-outer" style="top: 30%;left: 30%;width: 40%;height: 10%;position: absolute;border-radius: 5px;box-shadow: 10px 10px 5px #888888;padding-left: 10px">
<center><font face="Segoe UI" size="15px" color="white">Admin Login</font></center>
</div>
<div style="top: 44%;left: 30%;width: 32%;height: 35%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 5px;box-shadow: 10px 10px 5px #888888;padding-left: 120px;padding-top: 20px">
<form action="/ndp/Login" method="post">
<font face="Segoe UI">Username</font>
<br>
<input type="text" name="txtuser" class="textbox">
<br>
<br>
<font face="Segoe UI">Password</font>
<br>
<input type="password" name="txtpass" class="textbox">
<br><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="LOGIN" class="btn-style">
</form>
</div>
</body>
</html>