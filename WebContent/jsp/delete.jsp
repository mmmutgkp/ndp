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
 font-family: arial;
 text-align: left;


}
h2
{
 color: white;
 font-family: Segoe UI;

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
<script type="text/javascript">
function showBranch(course)
{	
	st=document.getElementById("branch");
	for(x=st.options.length-1;x>0;x--)
		{
		st.remove(x);
		}
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
			var info=x.responseText;
			statearr=info.split("#");
			for(var i=0;i<statearr.length-1;i++)
				{
				var opt=document.createElement("option");
				opt.value=statearr[i];
				opt.text=statearr[i];
				st.add(opt);
				}
			}
	}
	x.open("get","/ndp/Showbranch?course="+course,"true");
	x.send();
}
</script>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div  style="top: 30%;left: 30%;width: 30%;height: 55%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 0px 0px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 90px;padding-top: 25px">
<form action="/ndp/Delete"  method="post">
<br><br>
<font face="Segoe UI">Session</font>
<br>
<select name="txtsession" class="textbox">
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
<br><br>
<font face="Segoe UI">Course</font>
<br>
<select name="txtcourse" class="textbox" onchange="showBranch(this.value)">
<option value="def">Select Course</option>
<option value="B.Tech.">B.Tech.</option>
<option value="M.Tech.">M.Tech.</option>
<option value="MBA">MBA</option>
<option value="MCA">MCA</option>
</select>
<br><br>
<font face="Segoe UI">Branch</font>
<br>
<select name="branch" id="branch" class="textbox">
<option value=" ">select branch</option>
</select>
<br>
<br>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="DELETE" class="btn-style"/>
</form>
</div>
<div id="phone-outer" style="top: 30%;left: 30%;width: 36%;height: 5%;position: absolute;background-color: #336699;border-radius: 5px;box-shadow: 0px 10px 10px 5px #888888;padding-left: 10px">
<font face="Segoe UI" size="4px" color="white">Delete Record</font>
</div>
</body>
</html>