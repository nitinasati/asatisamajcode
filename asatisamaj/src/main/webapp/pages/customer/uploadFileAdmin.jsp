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
	<form id="UploadForm" action="<%=request.getContextPath()%>/UploadFile.do" method="post" onsubmit="return fileSubmit(this)" enctype="multipart/form-data">
<center>	
Enter MemberID: <input type="text" name="memberId" size="10" maxlength="10" /><br>	
<input type="file" size="60" id="imagePath" name="imagePath" onchange = "return fileExtension(this)"> 
	<input type="submit" value="Upload your photo"> <br />

			
	
<br />	
<font face="Times New Roman" face="vardana" color="red">File size limit is 1 MB.</font><br />
<font face="Times New Roman" face="vardana" color="red">Only file extensions - jpg, bmp, png and tif are allowed</font><br />
Error : <font face="Times New Roman" face="vardana" color="red"><%=request.getAttribute("fileUploadError")%></font></center>
<br />
<table border=1 align="center">
<tr>
</tr>
</table>
</form>
</body>
</html>
