<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
h2,h3
{
    font-family: Segoe UI;

}
table,th
{
  border-collapse: collapse;
  font-family: Segoe UI;

}
 th
{
  background-color: silver;
}
td
{
  font-family: Segoe UI;
  padding-left: 40px;

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

<script>
function myFunction() {
    window.print();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="/ndp/img/logo1.png" type="image/png">
<title>MMMUT, Madan Mohan Malaviya University of Technology, Gorakhpur</title>
</head>
<body bgcolor="#222">
<div style="top: 4%;left: 10%;width: 80%;height: 200%;position: absolute;background-color: white;border-radius: 10px">
<div style="top:1%;left:45%;width:9%;height:100px;position:absolute;">
<img src="/ndp/img/logo1.png" width="100%" height="100%"/>
</div>
<br>
<br>
<br>
<br>
<br>
<center>
<h2>&nbsp;MADAN MOHAN MALAVIYA UNIVERSITY OF TECHNOLOGY</h2>
<h3>NO DUES CERTIFICATE</h3>
</center>
<%
java.util.Date dt=new java.util.Date();
java.sql.Date sd=new java.sql.Date(dt.getTime());
String roll=request.getParameter("txtroll");
long rollnum=Long.parseLong(roll);
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
<div style="top: 22%;left: 10%;width: 30%;height: 10%;position: absolute;">
<font face="Segoe UI">
<b>
ROLL NO. : <%=rollnum %>
<br>
REGISTRATION NO. : <%=rs.getString("regno") %>
</div>
<div style="top: 22%;left: 65%;width: 30%;height: 10%;position: absolute;">
ACCOUNT NO. : <%=rs.getLong("accountno") %>
<br>
DATE : <%=sd %>
</b>
</font>
</div>
<br>
<div style="top: 28%;left: 10%;width: 78%;height: 70%;position: absolute;">
<font face="Segoe UI" size="4px">
This is to certify that Mr./Miss <%=rs.getString("name") %> c/o <%=rs.getString("parent") %> Course <%=rs.getString("course") %> Branch <%=rs.getString("branch")%> Last Session  <%=rs.getString("session") %> has NO DUES against mentioned Departments/Sections/Hostels .
</font>
<hr>
</div>
<div style="top: 36%;left: 12%;width: 80%;height: 70%;position: absolute;">
<table border="1" width="800px" height="700px">
<tr><th>S.No.</th><th>DEPARTMENT / SECTION / HOSTEL</th><th>DUES</th><th>UPDATED ON</th></tr>
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
<br>
STUDENT'S SIGNATURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUTHORITY SIGNATURE
<br>
<br><br><br><br><br><br>
</div>
<%
	}
}
catch(SQLException se)
{
		System.out.print(se);
}

%>
<br>

<br><br><br><br><br><br>
<div style="top: 105%;left: 45%;width: 30%;height: 10%;position: absolute;">
<form action="/ndp/No_dues">
<input type="hidden" name="txtroll" value=<%=rollnum%>>
<input type="submit" value="get PDF" class="btn-style"/>
</form>
</div>
</div>
</body>
</html>