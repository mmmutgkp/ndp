<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
	font-family: Segoe UI;
}	

th {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	


</style>
<script type="text/javascript">
function showBranch(course)
{	
	st1=document.getElementById("branch");
    st1.value="def";
	updatesession();
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
function updatesession()
{
	st3=document.getElementById("sess");
	var session=st3.value;
	st2=document.getElementById("course");
	var course=st2.value;
	st1=document.getElementById("branch");
	var branch=st1.value;
	
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
	x.open("get","/ndp/jsp/updatenoduescourse.jsp?session="+session+"&course="+course+"&branch="+branch,"true");
	x.send();
}

</script>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div style="top: 30%;left: 28%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<select name="session" id="sess" onchange="updatesession()" >
<option value="def">select session</option>
<option value="2010-11">2010-11</option>
<option value="2011-12">2011-12</option>
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
</select>
</div>
<div id="phone-outer" style="top: 27%;left: 28%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Session</font></div>
<div style="top: 30%;left: 42%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<select name="course" id="course" onchange="showBranch(this.value)">
<option value="def">select course</option>
<option value="B.Tech.">B.Tech.</option>
<option value="MBA">MBA</option>
<option value="MCA">MCA</option>
<option value="M.Tech.">M.Tech.</option>
</select>
</div>
<div id="phone-outer" style="top: 27%;left: 42%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Course</font></div>
<div style="top: 30%;left: 56%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<select name="branch" id="branch" onchange="updatesession()">
<option value="def">select branch</option>
</select>
</div>
<div id="phone-outer" style="top: 27%;left: 56%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Branch</font></div>

<br>
<div id="div1" style="top: 42%;left: 13%;width: 72%;position: absolute;">
<table>
<tr><th>ROLLNO.</th><th>REG.NO.</th><th>NAME</th><th>FATHER NAME</th><th>SESSION</th><th>COURSE</th><th>BRANCH</th></tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=Crudoperation.createConnection();
String str="select * from record";
try
{
	ps=con.prepareStatement(str);
	rs=ps.executeQuery();
	while(rs.next())
	{
		%>
		<tr><td><%=rs.getLong("rollno") %></td><td><%=rs.getString("regno") %></td><td><%=rs.getString("name") %></td><td><%=rs.getString("parent") %></td><td><%=rs.getString("session") %></td><td><%=rs.getString("course") %></td><td><%=rs.getString("branch") %></td></tr>
	    <%
	}
}
catch(SQLException se)
{
	System.out.print(se);
}

%>
</table>
</div>
</body>
</html>