<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/table.css" type="text/css"/>
</head>
<body>
<h1>एडमिन एक्टिविटीज </h1>
<br>
<a href="<%=request.getContextPath()%>/ListAdminAction.do">Review and Approve/Reject Profiles</a><br>
<a href="<%=request.getContextPath()%>/pages/customer/add_teamMember.jsp">Add AsatiSamaj Team Members</a><br>
<a href="<%=request.getContextPath()%>/pages/customer/uploadFileAdmin.jsp">Upload Photo</a>

</body>
</html>