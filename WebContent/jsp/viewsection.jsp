<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
<script>
function viewdues(sec)
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
	x.open("get","/ndp/jsp/showsection.jsp?section="+sec,"true");
	x.send();
}
</script>
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
<div style="top: 160px;left: 180px;width: 60%;height: 70px;position: relative;background-color: white;padding-left: 50px;padding-top: 15px;border-radius: 5px;box-shadow: inset 0 0 15px #00CC99;">
Select Deptt./Section/Hostel
<br>
<select name="section" onchange="viewdues(this.value)">
<option value="def"></option>
<option value="accsec">Account Section</option>
<option value="sgca">SGCA</option>
<option value="ncc">NCC</option>
<option value="nss">NSS</option>
<option value="library">Library</option>
<option value="itrc">ITRC</option>
<option value="pti">PTI</option>
<option value="department">Department</option>
<option value="vehicle">Vehicle Section</option>
<option value="subhash">Subhash Bhawan</option>
<option value="raman">Raman Bhawan</option>
<option value="tagore">Tagore Bhawan</option>
<option value="vs">Vishweshraiya Bhawan</option>
<option value="ambedkar">Ambedkar Bhawan</option>
<option value="saraswati">Saraswati Bhawan</option>
<option value="sarojini">Sarojini Bhawan</option>
</select>
</div>
<div id="div1" style="top: 42%;left: 200px;width: 62%;height: 400px;position: absolute;"></div>
</body>
</html>