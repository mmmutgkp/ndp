<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
<style type="text/css">
table,th
{
  border-collapse: collapse;
  font-family: arial;

}
table#t2 th
{
  background-color: #B8B8B8;
}
td
{
  font-family: Times New Roman;
  padding-left: 40px;
  background-color: #F5F5DC;

}


</style>
</head>
<body>
<div style="top: 0%;left: 0%;width: 100%;height: 110%;position: absolute;background-image:-moz-linear-gradient(top, rgb(53, 121, 98) 0%, rgb(2, 200, 151) 100%);background-image:-webkit-linear-gradient(top, rgb(53, 121, 98) 0%, rgb(2, 200, 151) 100%);background-image:-ms-linear-gradient(top, rgb(53, 121, 98) 0%, rgb(2, 200, 151) 100%)">
<div style="top: 0%;left: 12.3%;width: 10%;height: 20%;position: absolute">
<img src="/ndp/img/logo1.png"/>
</div>
<div style="top: 0%;left: 20.7%;width: 60%;height: 20%;position: absolute;">
<img src="/ndp/img/name.png"/>
</div>
</div>
<div style="top: 16.5%;left: 0%;width: 100%;height: 33px;position: absolute;background-image: -webkit-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -moz-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -ms-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);">
</div>
<%
String regno=request.getParameter("txtreg");

Connection con=Crudoperation.createConnection();
PreparedStatement ps=null;
ResultSet rs=null;
String str="select * from record where regno=?";
try
{
	ps=con.prepareStatement(str);
	ps.setString(1,regno);
	rs=ps.executeQuery();
	if(rs.next())
	{
%>
<div style="top: 21.5%;left: 0.5%;width: 99%;height: 80.5%;position: absolute;background-color: white;border-radius: 5px;box-shadow: inset 0 0 15px #00CC99;">
</div>
<div style="top: 25%;left: 23.5%;width: 50%;height: 20%;position: absolute">
<table width="800px">
<tr><th align="left">Roll No.</th><th>:</th><th align="left"><%=rs.getString("rollno") %></th><th align="left">Name</th><th>:</th><th align="left"><%=rs.getString("name") %></th></tr>
<tr><th align="left">Reg. No.</th><th>:</th><th align="left"><%=regno %></th><th align="left">Father Name</th><th>:</th><th align="left"><%=rs.getString("parent") %></th></tr>
<tr><th align="left">Course</th><th>:</th><th align="left"><%=rs.getString("course") %></th><th align="left">Branch</th><th>:</th><th align="left"><%=rs.getString("branch") %></th></tr>
</table>
<hr>
<table border="1" width="700px" id="t2">
<tr><th>S.No.</th><th>Deptt./Section/Hostel</th><th>Dues/No Dues</th></tr>
<tr><td>1</td><td>Account Section</td><td><%=rs.getString("accsec") %></td></tr>
<tr><td>2</td><td>SGCA</td><td><%=rs.getString("sgca") %></td></tr>
<tr><td>3</td><td>NCC</td><td><%=rs.getString("ncc") %></td></tr>
<tr><td>4</td><td>NSS</td><td><%=rs.getString("nss") %></td></tr>
<tr><td>5</td><td>Library</td><td><%=rs.getString("library") %></td></tr>
<tr><td>6</td><td>ITRC</td><td><%=rs.getString("itrc") %></td></tr>
<tr><td>7</td><td>PTI</td><td><%=rs.getString("pti") %></td></tr>
<tr><td>8</td><td>Department</td><td><%=rs.getString("department") %></td></tr>
<tr><td>9</td><td>Vehicle Section</td><td><%=rs.getString("vehicle") %></td></tr>
<tr><td>10</td><td>Subhash Bhawan</td><td><%=rs.getString("subhash") %></td></tr>
<tr><td>11</td><td>Raman Bhawan</td><td><%=rs.getString("raman") %></td></tr>
<tr><td>12</td><td>Tagore Bhawan</td><td><%=rs.getString("tagore") %></td></tr>
<tr><td>13</td><td>Vishweshraiya Bhawan</td><td><%=rs.getString("vs") %></td></tr>
<tr><td>14</td><td>Ambedkar Bhawan</td><td><%=rs.getString("ambedkar") %></td></tr>
<tr><td>15</td><td>Saraswati Bhawan</td><td><%=rs.getString("saraswati") %></td></tr>
<tr><td>16</td><td>Sarojini Bhawan</td><td><%=rs.getString("sarojini") %></td></tr>
</table>
</div>
<%
	}
	else
	{
		response.sendRedirect("/ndp/jsp/viewreg.jsp?msg=Registration No.not found in database!!");
	}
	
}
catch(SQLException se)
{
		System.out.print(se);
}

%>
<div style="top: 105%;left: 0%;width: 100%;height: 33px;position: absolute;background-image: -webkit-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -moz-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);background-image: -ms-linear-gradient(top, rgb(0, 102, 86) 0%, rgb(99, 170, 152) 100%);">
<center><p style="margin-top: 15px; margin-bottom: 0px; font-size:11px; font-family :Verdana; color :white">
This is the official Website of Madan Mohan Malaviya University of Technology. | Best viewed in 1366*768 pixel resolution.</p></center>
</div>
</body>
</html>