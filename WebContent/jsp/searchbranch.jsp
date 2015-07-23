<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
function updatebranch(id)
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
	x.open("get","/ndp/jsp/updatenoduesfillbranch.jsp?i_d="+id,"true");
	x.send();
}
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
			document.getElementById("div2").innerHTML=info;
			}
	}
	x.open("get","/ndp/jsp/updatenoduesfill.jsp?i_d="+id,"true");
	x.send();
}
</script>
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
<style type="text/css">
a.home:LINK
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.home:ACTIVE
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.home:HOVER
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.home:VISITED {
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
</style>
</head>
<body>
<% HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("userinfo");
if(ui==null)
{
	response.sendRedirect("/ndp/jsp/login.jsp");
}
%>
<div style="top: 0%;left: 0%;width: 100%;height: 20%;position: absolute;background-color: rgb(53,121,98)">
<div style="top: 0%;left: 12.3%;width: 10%;height: 20%;position: absolute">
<img src="/ndp/img/logo1.png"/>
</div>
<div style="top: 0%;left: 20.7%;width: 60%;height: 20%;position: absolute;">
<img src="/ndp/img/name.png"/>
</div>
</div>
<div style="top: 16.5%;left: 0%;width: 99.7%;height: 33px;padding-left: 5px;position: absolute;background-image: -webkit-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -moz-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -ms-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);">
<a  class="home" href="">Home</a>
</div>
<div style="top: 160px;left: 3%;width: 60%;height: 70px;position: relative;background-color: white;padding-left: 50px;padding-top: 15px;border-radius: 5px;box-shadow: inset 0 0 15px #00CC99;">
Branch:
<br>
<select name="branch" onchange="updatebranch(this.value)">
<option value="def"></option>
<option value="CE">Civil Engineering</option>
<option value="CSE">Computer Science & Engineering</option>
<option value="EE">Electrical Engineering</option>
<option value="ECE">Electronics & Communication Engineering</option>
<option value="ME">Mechanical Engineering</option>
</select>
</div>
<div id="div1" style="top: 42%;left: 5%;width: 62%;height: 400px;position: absolute;overflow-y: scroll;"></div>
<div id="div2" style="top:26%;left:68%;width:28%;height:70%;position:absolute;"></div>
</body>
</html>