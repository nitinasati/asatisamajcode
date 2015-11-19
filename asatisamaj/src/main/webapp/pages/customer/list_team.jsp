<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
</head>
<body>
<html:html>
<center><h1>Contact US</h1></center>
<table border=1 align="center">
<th>नाम<th>समिति<th>पद<th>मोबाइल नंबर<th>सिटी
<logic:iterate id="team" name="dynaCustomerTeamAdminListForm" property="teamAdminMemberList">
<tr><td><bean:write name="team" property="fullName"/><td><bean:write name="team" property="department"/>
<td><bean:write name="team" property="designation"/><td><bean:write name="team" property="contactNumber"/><td><bean:write name="team" property="city"/>
</tr>
</logic:iterate> 
</table>
<br/>
<br/>
</html:html>
</body>
</html>