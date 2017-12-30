<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<title>Photo Upload</title>
<!-- Include jQuery form & jQuery script file. -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js" ></script>
<script src="http://malsup.github.com/jquery.form.js" ></script>
<script type="text/javascript" src="js/validation.js" ></script>
<!-- Include css styles here -->
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
<br>
	<center><h3>आपको असाटी समाज दर्पण परिवार की ओर से धन्यवाद । आपका आई.डी.पंजीयन नं0 <font face="Times New Roman" face="vardana" color="red"><bean:write name="customerForm" property="memberId"/></font> है जो होम पेज/सर्विस टेब पर  "अविवाहित की सूची" लिंक पर 1-2 दिन बाद डिस्पिले होगा अन्यथा हेल्प नं0 8989837643 पर काल करें । Please proceed to upload your photo.</h3></center>
<br />
<center><html:link action="/Welcome.do">Home</html:link><br />
<html:link action="/AddCustomerPage.do">Add More Members</html:link><br />
<html:link action="/ListCustomer.do">List Members</html:link><br />
	</center>
	<form id="UploadForm" action="UploadFile.do" method="post" onsubmit="return fileSubmit(this)" enctype="multipart/form-data">
<center>		<input type="file" size="60" id="imagePath" name="imagePath" onchange = "return fileExtension(this)"> 
	<input type="submit" value="Upload your photo"> <br />

			
	
<br />	
<font face="Times New Roman" face="vardana" color="red">File size limit is 1 MB.</font><br />
<font face="Times New Roman" face="vardana" color="red">Only file extensions - jpg, bmp, png and tif are allowed</font><br />
Error : <font face="Times New Roman" face="vardana" color="red"><%=request.getAttribute("fileUploadError")%></font></center>
<br />
<table border=1 align="center">
<tr>
<td>
<input type="hidden" name="memberId" value="<bean:write name="customerForm" property="memberId"/>" />
</tr>
</table>
</form>
</body>
</html>
