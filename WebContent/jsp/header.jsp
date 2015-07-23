<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1
{
 color: white;
 font-family: arial;
 font-size: 40px;

}
a
{
 text-decoration: none;
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

</style>
</head>
<body>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
String sec=(String)hs.getAttribute("section");
%>
<div style="top: 0%;left: 0%;width: 100%;height: 120px;position: absolute;background-color: #1A4133;box-shadow: 5px 5px 5px #888888;">
<div style="top: 3%;left: 5%;height: 18%;position: absolute;">
<img src="/ndp/img/logo1.png"/>
</div>
<br>
<div style="top: 10%;left: 14%;width: 1px;height: 80%;position: absolute;background-color: white"></div>
<div style="top: 0%;left: 15%;width: 80%;height: 18%;position: absolute;">
<h1><%=ui %></h1></div>
<div style="top: 60%;left: 15%;width: 80%;height: 18%;position: absolute;">
<font size="5px" face="Segoe UI" color="white">Admin</font></div>
</div>
<a href="/ndp/LogoutSer"><div id="phone-outer" style="top: 21%;left: 89%;width: 8%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px">
<font size="5px" face="Segoe UI" color="white">LOGOUT</font>
</div></a>
<a href="/ndp/Mainpage"><div id="phone-outer" style="top: 21%;left: 1%;width: 9%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px">
<font size="3px" face="Segoe UI" color="white">Home Page</font>
</div></a>

</body>
</html>