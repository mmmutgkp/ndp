<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
table,th
{
 font-family: arial;
 text-align: left;


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
.textbox { 
    background: white; 
    border: 1px solid #336699; 
    border-radius: 5px; 
    box-shadow: 0 0 5px 3px #336699; 
    color: #000; 
    outline: none; 
    height:30px; 
    width: 300px; 
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<script>
function validateForm()
{   
	var letters = /^[0-9]+$/; 
	var acc=document.form.txtacc.value;
	var mob=document.form.txtphone.value;
	if(acc=="")
		{
		 document.getElementById("divi").innerHTML="Account number should not be left blank";
		document.form.txtacc.focus();
		return false;
		}
	else if(mob=="")
		{
		 document.getElementById("divi").innerHTML="Mobile number should not be left blank";
		document.form.txtphone.focus();
		return false;
		}
	else if(!acc.match(letters))
	{
		 document.getElementById("divi").innerHTML="account number can be numeric only";
	document.form.txtacc.focus();
	return false;
	}
else if(!mob.match(letters))
	{
	 document.getElementById("divi").innerHTML="mobile number can ne numeric only";
	document.form.txtphone.focus();
	return false;
	}
	else 
		{
		return true;
		}
	}
</script>
<body>
<%@ include file="/html/header.html" %>
<font color="red" face="calibri">
<center>
<div id="divi" style="top: 300px;left: 250px;width: 800px;height: 100px;position: absolute;">
</div>
</center>
</font>
<%

String roll=request.getParameter("txtroll");
long rollnum=Long.parseLong(roll);
Connection con=Crudoperation.createConnection();
PreparedStatement ps=null;
ResultSet rs=null;
String str="select * from record,session where rollno=? and session.sessions=record.session";
try
{
	ps=con.prepareStatement(str);
	ps.setLong(1,rollnum);
	rs=ps.executeQuery();
	if(rs.next())
	{
		if(rs.getInt("session.status")==1)
		{
%>
	
<div id="phone-outer" style="top: 22%;left: 31%;width: 20%;height: 5%;position: absolute;border-radius: 0px;padding-left: 150px;padding-top: 2px;"><font face="Segoe UI" color="white" size="3px">Student Details</font></div>
<form name="form" method="post" action="/ndp/Insertentry" onSubmit="return validateForm()">
<div style="top: 35%;left: 19%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rollnum %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 19%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Roll Number</font></div>
<div style="top: 35%;left: 33%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("name")%></font>
</div>
<div id="phone-outer" style="top: 32%;left: 33%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Name</font></div>
<div style="top: 35%;left: 47%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("course") %></font></div>
<div id="phone-outer" style="top: 32%;left: 47%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Course</font></div>
<div style="top: 35%;left: 61%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("branch") %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 61%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Branch</font></div>
<div style="top: 50%;left: 23%;width: 40%;height: 42%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 100px;padding-top: 30px;box-shadow: 0px 0px 10px 2px #888888;">
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Segoe UI" color="black" size="3px">SBI Account Number</font>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtacc" class="textbox" value="<%=rs.getLong("Accountno")%>">
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Segoe UI" color="black" size="3px">Mobile Number</font><br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtphone" class="textbox" value="<%=rs.getLong("mobile")%>">
<input type="hidden" name="txtroll" value=<%=roll%>>
<br>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="SUBMIT" class="btn-style">
</div>
<div id="phone-outer" style="box-shadow: 0px 0px 10px 5px #888888;top: 50%;left: 23%;width: 36.5%;height: 5%;position: absolute;border-radius: 0px;padding-left: 150px;padding-top: 2px;"><font face="Segoe UI" color="white" size="3px">&nbsp;&nbsp;&nbsp;&nbsp;Account Number & Mobile Number</font></div>
</form>
<%
		}
		else
		{  %>
			<div style="top: 40%;left: 28%;width: 45%;height: 15%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);box-shadow: 10px 10px 5px #888888;background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;box-shadow: 10px 10px 5px #888888;padding-left: 10px;padding-top: 35px">
<center>	<font color="#336699" face="Segoe UI" size="5px"><b>No Dues process has not been started yet for the session <%=rs.getString("sessions") %></b></font></center>
	</div>
	<div id="phone-outer" style="top: 38%;left: 28%;width: 45%;height: 5%;position: absolute;border-radius: 5px;box-shadow: 5px 5px 5px #888888;padding-left: 10px"><font face="Segoe UI" size="4px" color="white" >Message</font></div>

			
			<%
		}
	}
	else
	{
		response.sendRedirect("/ndp/jsp/enterroll.jsp?msg=Not found in database!!");
	}
}
catch(SQLException se)
{
		System.out.print(se);
}

%>
</body>
</html>