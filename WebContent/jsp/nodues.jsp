<%@page import="ndp.ser.Crudoperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
td
{

 font-size: 14px;
}
th
{

 font-size: 15px;
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
form table{
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: 0 1px 2px #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
	font-family: Segoe UI;
	border-radius: 10px;
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


form th {
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

form th:after {
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

form th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

form th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

form td{
	border-right: 1px solid #f5f5f5;
	border-left: 1px solid #f5f5f5;
	border-top: 1px solid #f5f5f5;
	border-bottom: 1px solid #f5f5f5;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

form td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

form td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

form tr{
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

form tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

form tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

form tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

form tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	
form .tt
{
 background-color: yellow;

}
.tt th
{

background-color: yellow;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<body>
<%@ include file="/html/header.html" %>

<%
String num=(String)request.getAttribute("rollno");
long rollnum=Long.parseLong(num);
Connection con=Crudoperation.createConnection();
PreparedStatement ps=null;
ResultSet rs=null;
String str="select * from record where rollno=?";
try
{
	ps=con.prepareStatement(str);
	ps.setLong(1,rollnum);
	rs=ps.executeQuery();
	while(rs.next())
	{
	 String accsecdate =rs.getString("accsecdate");
	 if(accsecdate==null)
		 accsecdate="-----";
	 String sgcadate=rs.getString("sgcadate");
	 if(sgcadate==null)
		 sgcadate="-----";
	 String nccdate=rs.getString("nccdate");
	 if(nccdate==null)
		 nccdate="-----";
	 String nssdate=rs.getString("nssdate");
	 if(nssdate==null)
		 nssdate="-----";
	 String librarydate=rs.getString("librarydate");
	 if(librarydate==null)
		 librarydate="-----";
	 String itrcdate=rs.getString("itrcdate");
	 if(itrcdate==null)
		 itrcdate="-----";
	 String ptidate=rs.getString("ptidate");
	 if(ptidate==null)
		 ptidate="-----";
	 String departmentdate=rs.getString("departmentdate");
	 if(departmentdate==null)
		 departmentdate="-----";
	 String vehicledate=rs.getString("vehicledate");
	 if(vehicledate==null)
		 vehicledate="-----";
	 String subhashdate=rs.getString("subhashdate");
	 if(subhashdate==null)
		 subhashdate="-----";
	 String ramandate=rs.getString("ramandate");
	 if(ramandate==null)
		 ramandate="-----";
	 String tagoredate=rs.getString("tagoredate");
	 if(tagoredate==null)
		 tagoredate="-----";
	 String vsdate=rs.getString("vsdate");
	 if(vsdate==null)
		 vsdate="-----";
	 String ambedkardate=rs.getString("ambedkardate");
	 if(ambedkardate==null)
		 ambedkardate="-----";
	 String saraswatidate=rs.getString("saraswatidate");
	 if(saraswatidate==null)
		 saraswatidate="-----";
	 String sarojinidate=rs.getString("sarojinidate");
	 if(sarojinidate==null)
		 sarojinidate="-----";
	 %>
<div id="phone-outer" style="top: 22%;left: 35%;width: 20%;height: 5%;position: absolute;border-radius: 0px;padding-left: 150px;padding-top: 2px;"><font face="Segoe UI" color="white" size="3px">Dues Details</font></div>
<div style="top: 35%;left: 9%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rollnum %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 9%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 2px #888888;"><font face="Segoe UI" color="white" size="3px">Roll Number</font></div>
<div style="top: 35%;left: 23%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("name")%></font>
</div>
<div id="phone-outer" style="top: 32%;left: 23%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 2px #888888;"><font face="Segoe UI" color="white" size="3px">Name</font></div>
<div style="top: 35%;left: 37%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("course") %></font></div>
<div id="phone-outer" style="top: 32%;left: 37%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 2px #888888;"><font face="Segoe UI" color="white" size="3px">Course</font></div>
<div style="top: 35%;left: 51%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("branch") %></font>
</div>

<div style="top: 35%;left: 51%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("branch") %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 51%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 2px #888888;"><font face="Segoe UI" color="white" size="3px">Branch</font></div>
<div style="top: 35%;left: 65%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getLong("Accountno") %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 65%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 2px #888888;"><font face="Segoe UI" color="white" size="3px">Account No.</font></div>
<div style="top: 35%;left: 79%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getLong("mobile") %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 79%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 2px #888888;"><font face="Segoe UI" color="white" size="3px">Mobile No.</font></div>

<div style="top: 45%;left: 21%;width: 50%;height: 110%;position: absolute;">
<br>
<form action="/ndp/jsp/printform.jsp">
<input type="hidden" name="txtroll" value=<%=rollnum %>>
<table border="1" width="1000px">
<tr><th>S.No.</th><th>DEPARTMENT/SECTION/HOSTEL</th><th>DUES</th><th>UPDATED ON</tr>
<tr><td>1</td><td>Account Section</td><td><%=rs.getString("accsec") %></td><td><%=accsecdate %></td></tr>
<tr><td>2</td><td>SGCA</td><td><%=rs.getString("sgca") %></td><td><%=sgcadate %></td></tr>
<tr><td>3</td><td>NCC</td><td><%=rs.getString("ncc") %></td><td><%=nccdate %></td></tr>
<tr><td>4</td><td>NSS</td><td><%=rs.getString("nss") %></td><td><%=nssdate %></td></tr>
<tr><td>5</td><td>Library</td><td><%=rs.getString("library") %></td><td><%=librarydate %></td></tr>
<tr><td>6</td><td>ITRC</td><td><%=rs.getString("itrc") %></td><td><%=itrcdate %></td></tr>
<tr><td>7</td><td>PTI</td><td><%=rs.getString("pti") %></td><td><%=ptidate %></td></tr>
<tr><td>8</td><td>Department</td><td><%=rs.getString("department") %></td><td><%=departmentdate %></td></tr>
<tr><td>9</td><td>Vehicle Section</td><td><%=rs.getString("vehicle") %></td><td><%=vehicledate %></td></tr>
<tr><td>10</td><td>Subhash Bhawan</td><td><%=rs.getString("subhash") %></td><td><%=subhashdate %></td></tr>
<tr><td>11</td><td>Raman Bhawan</td><td><%=rs.getString("raman") %></td><td><%=ramandate %></td></tr>
<tr><td>12</td><td>Tagore Bhawan</td><td><%=rs.getString("tagore") %></td><td><%=tagoredate %></td></tr>
<tr><td>13</td><td>Vishweshraiya Bhawan</td><td><%=rs.getString("vs") %></td><td><%=vsdate %></td></tr>
<tr><td>14</td><td>Ambedkar Bhawan</td><td><%=rs.getString("ambedkar") %></td><td><%=ambedkardate %></td></tr>
<tr><td>15</td><td>Saraswati Bhawan</td><td><%=rs.getString("saraswati") %></td><td><%=saraswatidate %></td></tr>
<tr><td>16</td><td>Sarojini Bhawan</td><td><%=rs.getString("sarojini") %></td><td><%=sarojinidate %></td></tr>
</table>
<br>
<center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="GET NODUES CERTIFICATE" class="btn-style">
<br><br><br><br><br><br>
</center>
</form>
</div>
<%
	}
}
catch(SQLException se)
{
		System.out.print(se);
}

%>

</body>
</html>