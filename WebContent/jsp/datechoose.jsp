<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    
    <!-- Load jQuery JS -->
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <!-- Load jQuery UI Main JS  -->
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script language="JavaScript">
$(document).ready(
		  
		  /* This is the function that will get executed after the DOM is fully loaded */
		  function () {
		    $( "#datepicker" ).datepicker({
		      changeMonth: true,//this option for allowing user to select month
		      changeYear: true //this option for allowing user to select from year range
		    });
		  }

		);
</script>
<style type="text/css">
.textbox { 
    background: white; 
    border: 1px solid #ffa853; 
    border-radius: 5px; 
    box-shadow: 0 0 5px 3px #ffa853; 
    color: #666; 
    outline: none; 
    height:23px; 
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

</style>
</head>
<body>
<%@ include file="/jsp/header.jsp" %>
<div style="top: 230px;left: 380px;width: 600px;height: 40%;position: absolute;padding-left: 45px;padding-right: 45px;padding-top: 25px;background-color: #EFEBD6;border-radius: 5px;box-shadow: 10px 10px 5px #888888;">
<font face="Segoe UI"><p align="justify">Select a date upto which all departments can update dues and after which students can come for submission of No Dues Certificate</p></font>
<br>
<br>
<font face="Segoe UI" size="5px">Date : </font> 
<br>
<form action="/ndp/Datelimit" method="post">
<input type="text" id="datepicker" name="date" class="textbox" />
&nbsp;&nbsp;&nbsp;
<input type="submit" value="SUBMIT" class="btn-style">
</form>
</div>
</body>
</html>