<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,ndp.ser.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function changetext(text)
{
   st=document.getElementById("textdues");
   st.value=text;
}


</script>
<style type="text/css">
  .textbox { 
    background: white; 
    border: 1px solid #ffa853; 
    border-radius: 5px; 
    box-shadow: 0 0 5px 3px #ffa853; 
    color: #666; 
    outline: none; 
    height:30px; 
    width: 300px; 
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
#button {
 width: 12em;
 border-right: 1px solid #000;
 padding: 0 0 1em 0;
 margin-bottom: 1em;
 font-family: Segoe UI;
 background-color: #90bade;
 color: #333;
 }
  #button ul {
  list-style: none;
  margin: 0;
  padding: 0;
  border: none;
  }
  
 #button li {
  border-bottom: 1px solid #90bade;
  margin: 0;
  }
   #button li a {
  display: block;
  padding: 5px 5px 5px 0.5em;
  border-left: 10px solid #1958b7;
  border-right: 10px solid #508fc4;
  background-color: #2175bc;
  color: #fff;
  text-decoration: none;
  width: 100%;
  } html>body #button li a {
  width: auto;
  } #button li a:hover {
  border-left: 10px solid #1c64d1;
  border-right: 10px solid #5ba3e0;
  background-color: #2586d7;
  color: #fff;
  }
h1,h2
{
 color: white;
 font-family: Segoe UI;
}
</style>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<%
String status="unchecked";
String duestatus="unchecked";
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String rollno=request.getParameter("txtroll");
	long rollnum=Long.parseLong(rollno);
con=Crudoperation.createConnection();
String str="select * from record where rollno=?";
try
{
	ps=con.prepareStatement(str);
	ps.setLong(1,rollnum);
	rs=ps.executeQuery();
	if(rs.next())
	{
		String dt=rs.getString(sec+"date");
		if(dt==null)
		{
			dt="not updated yet";
		}
		 if((rs.getString(sec)).equals("nil"))
		 {
		 status="checked";
		 }
		 else {
	      duestatus="checked";
		 }
		%>
		<div style="top: 35%;left: 21%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rollnum %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 21%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Roll Number</font></div>
<div style="top: 35%;left: 35%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("name")%></font>
</div>
<div id="phone-outer" style="top: 32%;left: 35%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Name</font></div>
<div style="top: 35%;left: 49%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("course") %></font></div>
<div id="phone-outer" style="top: 32%;left: 49%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Course</font></div>
<div style="top: 35%;left: 63%;width: 10%;height: 6%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 40px;padding-top: 30px;">
<font face="Segoe UI" color="black" size="3px"><%=rs.getString("branch") %></font>
</div>
<div id="phone-outer" style="top: 32%;left: 63%;width: 10%;height: 5%;position: absolute;border-radius: 0px;padding-left: 40px;padding-top: 2px;box-shadow: 0px 0px 10px 1px #888888;"><font face="Segoe UI" color="white" size="3px">Branch</font></div>
		
<div style="top: 50%;left: 25%;width: 40%;height: 42%;position: absolute;background-image:-webkit-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-moz-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);background-image:-ms-linear-gradient(top,#F5F5F5 0%, #D3D3D3 100%);border-radius: 10px;padding-left: 100px;padding-top: 30px;box-shadow: 0px 0px 10px 2px #888888;">		
	
		<form action="/ndp/Updatedues" method="post">
		<input type="hidden" value="<%=rollnum%>" name="txtroll"/>
		<font color="#336699" face="Segoe UI" size="5px"><b>Dues in <%=ui %></b></font>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="dues" value="nil" <%=status%> onclick="changetext(this.value)"/><font face="Segoe UI" size="4px"><b>NIL</b></font>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="dues" value="Dues" <%=duestatus%> onclick="changetext(this.value)"/><font face="Segoe UI" size="4px"><b>DUES</b></font>
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Segoe UI" size="4px">Amount/Remark</font><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" name="txtdues" id="textdues" value="<%=rs.getString(sec)%>"/>
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Segoe UI" size="4px">Last Updated on :</font><font face="Segoe UI" size="4px" color="#336699"> <i><b><%=dt%></b></i></font>
		<br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="UPDATE" class="btn-style"/>
		</form>
		</div>
		

		<%		
	}
	else
	{
		response.sendRedirect("/ndp/jsp/searchrollno.jsp?msg=Roll number not found in Database");
	}
}
catch(SQLException se)
{
	
}
%>

</body>
</html>