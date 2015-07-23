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
a.logout:link
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.logout:ACTIVE
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}
a.logout:HOVER
{
 text-decoration: none;
 color: white;
 font-family: calibri;
 font-size: 20px;
}

</style>
</head>
<script>
function validateForm()
{   
	var letters = /^[0-9]+$/; 
	var patt1 = /\s/g;
	var old=document.form.txtold.value;
	var newp=document.form.txtnew.value;
    var confirm=document.form.txtconfirm.value;
    var result = newp.match(patt1);
    alert(result);
   // document.getElementById("divi").innerHTML = result;
    
	if(old=="")
		{
		document.getElementById("divi").innerHTML="Old password should not be left blank";
		document.form.txtold.focus();
		return false;
		}
	else if(newp=="")
		{
		document.getElementById("divi").innerHTML="New password should not be left blank";
		document.form.txtnew.focus();
		return false;
		}
	else if(confirm=="")
	{
		document.getElementById("divi").innerHTML="Confirm password should not be left blank";
	document.form.txtconfirm.focus();
	return false;
	}
	else if(newp!=confirm)
	{
		document.getElementById("divi").innerHTML="Confirm password and New Password should be same";
	document.form.txtconfirm.focus();
	return false;
	}
	else if(result==""){
		document.getElementById("divi").innerHTML="White Space should not be used in password";
		document.form.txtnew.focus();
		return false;
	}

	else 
		{
		return true;
		}
	}
</script>
<body>

<%@ include file="/jsp/header.jsp" %>
<% 
if(ui==null)
{
	response.sendRedirect("/ndp/jsp/login.jsp");
}
%>
<font color="red" face="calibri">
<center>
<div id="divi" style="top: 140px;left: 280px;width: 800px;height: 30px;position: absolute;">

<%
String info=request.getParameter("msg");
if(info!=null)
	{%>
<%=info %>
	<%}%>
	
	</div>
	</center>
	</font>



<div  style="top: 30%;left: 32%;width: 30%;height: 50%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 0px 0px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 90px;padding-top: 25px">
<form name="form" method="post" action="/ndp/Changepass" onSubmit="return validateForm()">
<br>
<font face="Segoe UI">Old Password</font>
<br>
<input type="password" name="txtold" class="textbox">
<br><br>
<font face="Segoe UI">New Password</font>
<br>
<input type="password" name="txtnew" class="textbox">
<br><br>
<font face="Segoe UI">Confirm Password</font>
<br>
<input type="password" name="txtconfirm" class="textbox">
<br><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Change Password" class="btn-style">
</form>
</div>
<div id="phone-outer" style="top: 29%;left: 32%;width: 36%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 0px 0px 5px 5px #888888;padding-left: 10px"><font face="Segoe UI" size="4px" color="white" >Change Password</font></div>

</body>
</html>