<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
function filldata(name,num)
{
	var x;
	st1=document.getElementById("reg"+num);
	st2=document.getElementById("father"+num);
	st3=document.getElementById("course"+num);
	st4=document.getElementById("branch"+num);
	st5=document.getElementById("dues"+num);
	st6=document.getElementById("roll"+num);
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
		    arr=info.split("#");
            st1.value=arr[0];
            st2.value=arr[1];
            st3.value=arr[2];
            st4.value=arr[3];
			st5.value=arr[4];
			st6.value=arr[5];
			}
	}
	x.open("get","/ndp/Filldataname?name="+name,"true");
	x.send();	
}
function showhint(name)
{
	var x;
	st1=document.getElementById("name1");
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
			}
	}
	x.open("get","/ndp/Showhint?name="+name,"true");
	x.send();	 
	
}

</script>
</head>
<body>
<%@include file="/jsp/header.jsp" %>
<div style="top: 26%;left: 10%;height:700px;position: absolute">
<form action="/ndp/jsp/multiupdate.jsp" method="get">
<table>
<tr><th>SR. NO.</th><th>NAME</th><th>REG. NUMBER</th><th>FATHER NAME</th><th>COURSE</th><th>BRANCH</th><th>DUES</th></tr>
<tr><td>1</td><td><input type="text" name="name1" value=" " id="name1" onblur="filldata(this.value,1)" onkeypress="showhint(this.value)"></td><td><input type="text" id="reg1"></td><td><input type="text" name="father1" id="father1"></td><td><input type="text" id="course1"></td><td><input type="text" id="branch1"></td><td><input type="text" name="dues1" id="dues1"></td></tr>
<tr><td>2</td><td><input type="text" name="name2" value=" " onblur="filldata(this.value,2)"></td><td><input type="text" id="reg2" ></td><td><input type="text" name="father2" id="father2" ></td><td><input type="text" id="course2" ></td><td><input type="text" id="branch2" ></td><td><input type="text" name="dues2" id="dues2"></td></tr>
<tr><td>3</td><td><input type="text" name="name3" value=" " onblur="filldata(this.value,3)"></td><td><input type="text" id="reg3" ></td><td><input type="text" name="father3" id="father3" ></td><td><input type="text" id="course3" ></td><td><input type="text" id="branch3" ></td><td><input type="text" name="dues3" id="dues3"></td></tr>
<tr><td>4</td><td><input type="text" name="name4" value=" " onblur="filldata(this.value,4)"></td><td><input type="text" id="reg4" ></td><td><input type="text" name="father4" id="father4" ></td><td><input type="text" id="course4" ></td><td><input type="text" id="branch4" ></td><td><input type="text" name="dues4" id="dues4"></td></tr>
<tr><td>5</td><td><input type="text" name="name5" value=" " onblur="filldata(this.value,5)"></td><td><input type="text" id="reg5" ></td><td><input type="text" name="father5" id="father5" ></td><td><input type="text" id="course5" ></td><td><input type="text" id="branch5" ></td><td><input type="text" name="dues5" id="dues5"></td></tr>
<tr><td>6</td><td><input type="text" name="name6" value=" " onblur="filldata(this.value,6)"></td><td><input type="text" id="reg6" ></td><td><input type="text" name="father6" id="father6" ></td><td><input type="text" id="course6" ></td><td><input type="text" id="branch6" ></td><td><input type="text" name="dues6" id="dues6"></td></tr>
<tr><td>7</td><td><input type="text" name="name7" value=" " onblur="filldata(this.value,7)"></td><td><input type="text" id="reg7" ></td><td><input type="text" name="father7" id="father7" ></td><td><input type="text" id="course7" ></td><td><input type="text" id="branch7" ></td><td><input type="text" name="dues7" id="dues7"></td></tr>
<tr><td>8</td><td><input type="text" name="name8" value=" " onblur="filldata(this.value,8)"></td><td><input type="text" id="reg8" ></td><td><input type="text" name="father8" id="father8" ></td><td><input type="text" id="course8" ></td><td><input type="text" id="branch8" ></td><td><input type="text" name="dues8" id="dues8"></td></tr>
<tr><td>9</td><td><input type="text" name="name9" value=" " onblur="filldata(this.value,9)"></td><td><input type="text" id="reg9" ></td><td><input type="text" name="father9" id="father9" ></td><td><input type="text" id="course9" ></td><td><input type="text" id="branch9" ></td><td><input type="text" name="dues9" id="dues9"></td></tr>
<tr><td>10</td><td><input type="text" name="name10" value=" " onblur="filldata(this.value,10)"></td><td><input type="text" id="reg10"></td><td><input type="text" name="father10" id="father10"></td><td><input type="text" id="course10" ></td><td><input type="text" id="branch10" ></td><td><input type="text" name="dues10" id="dues10"></td></tr>
</table>
<input type="hidden" value="0" name="roll1" id="roll1">
<input type="hidden" value="0" name="roll2" id="roll2">
<input type="hidden" value="0" name="roll3" id="roll3">
<input type="hidden" value="0" name="roll4" id="roll4">
<input type="hidden" value="0" name="roll5" id="roll5">
<input type="hidden" value="0" name="roll6" id="roll6">
<input type="hidden" value="0" name="roll7" id="roll7">
<input type="hidden" value="0" name="roll8" id="roll8">
<input type="hidden" value="0" name="roll9" id="roll9">
<input type="hidden" value="0" name="roll10" id="roll10">
<center><input type="submit" value="UPDATE" class="btn-style"></center>
</form>
</div>
</body>
</html>