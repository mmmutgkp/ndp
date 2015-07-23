<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

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
h2
{
 color: white;
 font-family: Segoe UI;
}
</style>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div  style="top: 40%;left: 34%;width: 30%;height: 30%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 10px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 35px;padding-top: 25px">
<br>
<br>
<form name="frm" method="get" action="/ndp/Search" onSubmit="return validateForm()">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtroll" class="textbox">
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="SUBMIT" class="btn-style">
</form>
</div>
<div id="phone-outer" style="top: 38%;left: 34%;width: 32%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px"><font face="Segoe UI" size="4px" color="white" >Enter Roll Number</font></div>

</body>
</html>