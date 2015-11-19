<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>  
 

<style>
  .datepicker{
  }
</style>

<script>
$(function() {
 // $( ".datepicker" ).datepicker();
  $('#birth').datepicker({dateFormat: 'yy-mm-dd'});
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body bgcolor="silver">
<br></br>
<body>
<html:html>
    <div style="color:red">
    <html:errors />
    </div>
    <html:form  action="/register" method="get">
    <table align="center" border="1">
        <tr><td>First Name:
        	<td><html:text property="firstName" size="50" /></tr>
        <tr><td>Middle Name:
        	<td><html:text property="middleName" size="50" /></tr>
        <tr><td>Last Name:
        	<td><html:text property="lastName" size="50" /></tr>
        <tr><td>Sex:
        	<td><input type="radio" name="sex" value="M">Male
        	<input type="radio" name="sex" value="F">Female
        	</tr>
        <tr><td>BirthDate:
        	<td><input type="text" name="birth" id="birth" class="datepicker" /></tr>
        <tr><td>Marital_status:
        	<td><input type="radio" name="marital_status" value="M">Married
        	<input type="radio" name="marital_status" value="S">Single</tr>
        <tr><td>Address Line1:
        	<td><html:text property="address_line1" size="50" /></tr>
        <tr><td>Address Line2:
        	<td><html:text property="address_line2" size="50" /></tr>
        <tr><td>City:
        	<td><html:text property="city" size="50" /></tr>
        <tr><td>State:
        	<td><html:text property="state" size="50" /></tr>
        <tr><td>Country:
        	<td><html:text property="country" size="30" /></tr>
        <tr><td>Email:
        	<td><html:text property="email" size="30" /></tr>
        <tr><td><td><html:submit>Submit</html:submit></td></tr>
        </table>
    </html:form>
</html:html>
</body>
</html>