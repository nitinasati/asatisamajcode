<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js" ></script>
<script src="http://malsup.github.com/jquery.form.js" ></script>
<script type="text/javascript" src="js/validation.js" ></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>  

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><bean:message key="team.label.header" /></title>
</head>
<body bgcolor="silver">
<body>
<html:html>
    <div style="color:red">
    	<html:errors />
    </div>
    
    <center><h1><bean:message key="team.label.header" /></h1></center>
    <form id="teamForm"  action="<%=request.getContextPath()%>/TeamAddition.do" method="get">
    <table align="center" border="1">
        <tr><td><bean:message key="customer.label.full_name" /><font color="red">*</font>
        	<td><input type="text" name="fullName" size="50" maxlength="100" /></tr>
        <tr><td><bean:message key="team.label.department" /><font color="red">*</font>
        	<td><select name="department">
        	<option value="select">समिति चुनिए</option>
		  <option value="टेक्निकल समिति">टेक्निकल समिति</option>
		  <option value="असाटी समाज दर्पण पत्रिका संचालन समिति">असाटी समाज दर्पण पत्रिका संचालन समिति</option>
		  <option value="वेबसाइट प्रारंभिक संचालन कार्यों हेतु समिति">वेबसाइट प्रारंभिक संचालन कार्यों हेतु समिति</option>
		  <option value="वेबसाइट असाटी समाज दर्पण के क्षेत्रीय प्रतिनिधि">वेबसाइट असाटी समाज दर्पण के क्षेत्रीय प्रतिनिधि</option>
		  </select></tr>
        <tr><td><bean:message key="team.label.designation" /><font color="red">*</font>
        	<td><input type="text" name="designation" size="50" maxlength="45" /></tr>  
    <tr><td><bean:message key="customer.label.cityState" /><font color="red">*</font>
       	<td><input type="text" name="city" size="50" maxlength="100" /></tr>
       <tr><td><bean:message key="customer.label.mobile" /><font color="red">*</font>
        	<td><input type="text" name="contactNumber" size="50" maxlength="45" /></tr> 
 	<tr><td><td><font color="red"><b>I Agree to display all detail to the visitors<b></font></tr>
		<tr><td><td><html:submit>Submit</html:submit>
        </table></tr></table>
    </form>
</html:html>
</body>
</html>