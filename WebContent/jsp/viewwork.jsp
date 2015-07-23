<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function updatesession(session)
{
	var x;
	if(XMLHttpRequest)
		{
		x=new XMLHttpRequest();
		}
	else
		{
		x=new ActiveXObject("Microsoft.XMLHTTP");
		}
	x.onreadystatechange=function()
	{
		if(x.readyState==4 && x.status==200)
			{
			info=x.responseText;
			document.getElementById("div1").innerHTML=info;
			}
	}
	x.open("get","/ndp/jsp/view.jsp?session="+session,"true");
	x.send();
}
</script>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div style="top: 24%;left: 30%;width: 40%;height: 10%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 5px;box-shadow:0px 0px 10px 5px #888888;padding-left: 10px;padding-top: 15px">
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="txtsession" onchange="updatesession(this.value)" class="textbox">
<option value="def">Select session</option>
<option value="s201011">2010-11</option>
<option value="s201112">2011-12</option>
<option value="s201213">2012-13</option>
<option value="s201314">2013-14</option>
<option value="s201415">2014-15</option>
<option value="s201516">2015-16</option>
<option value="s201617">2016-17</option>
<option value="s201718">2017-18</option>
<option value="s201819">2018-19</option>
<option value="s201920">2019-20</option>
<option value="s202021">2020-21</option>
<option value="s202122">2021-22</option>
<option value="s202223">2022-23</option>
<option value="s202324">2023-24</option>
<option value="s202425">2024-25</option>
</select>
</div>
<div id="phone-outer" style="top: 22%;left: 30%;width: 37.7%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Session</font></div>
<div id="div1" style="top: 34%;left: 15%;width: 72%;position: absolute;"></div>
</body>
</html>