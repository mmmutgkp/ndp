<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<style>
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
.textbox { 
    background: white; 
    border: 1px solid #336699; 
    border-radius: 5px; 
    box-shadow: 0 0 5px 3px #336699; 
    color: #000; 
    outline: none; 
    height:30px; 
    width: 300px; 
  } 
</style>
<script>
function validateForm()
{   
	
	var numbers = /^[0-9]+$/; 
	var roll=document.frm.txtroll.value;
    if(document.frm.txtroll.value=="")
    {
      document.getElementById("divi").innerHTML="User Name should not be left blank.";
      document.frm.txtroll.focus();
      return false;
    }
    else if(!roll.match(numbers))
	{
    	 document.getElementById("divi").innerHTML="Roll number can be only numeric.";
	document.frm.txtroll.focus();
	return false;
	}
    return true;
   
}
</script>
<body>
<%@ include file="/html/header.html" %>
<font color="red" face="calibri">
<center>
<div id="divi" style="top: 230px;left: 280px;width: 800px;height: 100px;position: absolute;">
<%
String info=request.getParameter("msg");
if(info!=null)
	{%>
<%=info %>
	<%}%>
	</div>
	</center>
	</font>
	<div id="phone-outer" style="top: 22%;left: 30%;width: 40%;height: 8%;position: absolute;background-color: #008A00;border-radius: 5px;box-shadow: 0px 10px 5px #888888;padding-left: 10px">
	<center><font face="Segoe UI" size="6px" color="white">NO DUES PORTAL</font></center>
</div>
<div  style="top: 45%;left: 34%;width: 30%;height: 30%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 10px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 35px;padding-top: 25px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Segoe UI" size="4px">Enter Roll Number</font>
<br>
<br>
<form name="frm" method="get" action="/ndp/jsp/entry.jsp" onSubmit="return validateForm()">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtroll" class="textbox">
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="SUBMIT" class="btn-style">
</form>
</div>
<div style="top: 645px;left: 0px;width: 1365px;height: 10px;position: absolute;background-color: #1A4133;box-shadow: 20px 0px 10px 5px #888888;">
</div>
</body>
</html>