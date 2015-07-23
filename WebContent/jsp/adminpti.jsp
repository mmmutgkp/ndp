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
	x.open("get","/ndp/jsp/updatenoduessession.jsp?session="+session,"true");
	x.send();
}
</script>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div style="top: 24%;left: 34%;width: 40%;height: 8%;position: absolute;background-color: #336699;border-radius: 5px;box-shadow: 10px 10px 5px #888888;padding-left: 10px;padding-top: 10px">
<font color="white" face="Segoe UI" size="5px">Session : </font>
<select name="txtsession" onchange="updatesession(this.value)">
<option value="def">Select session</option>
<option value="2012-13">2012-13</option>
<option value="2013-14">2013-14</option>
<option value="2014-15">2014-15</option>
<option value="2015-16">2015-16</option>
<option value="2016-17">2016-17</option>
<option value="2017-18">2017-18</option>
<option value="2018-19">2018-19</option>
<option value="2019-20">2019-20</option>
<option value="2020-21">2020-21</option>
<option value="2021-22">2021-22</option>
<option value="2022-23">2022-23</option>
<option value="2023-24">2023-24</option>
<option value="2024-25">2024-25</option>
</select>
</div>
<div id="div1" style="top: 35%;left: 18%;width: 72%;position: absolute;"></div>
</body>
</html>