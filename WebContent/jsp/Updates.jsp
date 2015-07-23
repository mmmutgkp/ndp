<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
<style>
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
<%@ include file="/jsp/header.jsp"%>
<div style="top: 230px;left: 280px;width: 800px;height: 100px;position: absolute;">

	</div>


<div style="top: 35%;left: 27%;width: 39%;height: 40%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 10px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;box-shadow: 10px 10px 5px #888888;padding-left: 50px;padding-right: 50px;padding-top: 50px">
<form action="/ndp/updates" method="post">
<center>
	<font color="#336699" face="Segoe UI" size="3px"><b>
<p align="justify">By clicking the "Submit" button I testify and verify that the information of Dues and its amount for every student of selected session in the department/section assigned to me has been correctly mentioned against every student and any discrepancy arising out of it shall be borne by myself.</p>
</b></font>
<br>
<select name="session" id="sess"  class="textbox" >
<option value="def">select session</option>
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
</select>
<br><br>
<input type="submit" value="Submit" class="btn-style" ></center>
</form>
	</div>
	<div id="phone-outer" style="top: 33%;left: 27%;width: 45.5%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px"><font face="Segoe UI" size="4px" color="white" >WORK COMPLETION</font></div>

</body>
</html>