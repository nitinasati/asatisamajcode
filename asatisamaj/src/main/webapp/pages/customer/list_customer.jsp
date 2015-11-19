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
<h1>अविवाहित सदस्यों की सूची </h1>
<table border=1>
<logic:iterate id="customer" name="dynaCustomerListForm" property="customerList">
<tr>	
<td>
<b><font face="Times New Roman" face="vardana" color="red">पंजीयन की दिनांक(yyyy-mm-dd): </font></b><bean:write name="customer" property="createDateTime"/>,
<b><font face="Times New Roman" face="vardana" color="red">असाटी समाज का क्षेत्र : </font></b><bean:write name="customer" property="samajArea"/>, 
<b><font face="Times New Roman" face="vardana" color="red">पूरा नाम : </font></b><bean:write name="customer" property="fullName"/>, <b><font face="Times New Roman" face="vardana" color="red">पिता और माता का नाम : </font></b><bean:write name="customer" property="fatherName"/> & <bean:write name="customer" property="motherName"/>, 
<b><font face="Times New Roman" face="vardana" color="red">दादा का नाम /समाज में प्रचलित उपनाम: : </font></b><bean:write name="customer" property="grandPaName"/>, 
, <b><font face="Times New Roman" face="vardana" color="red">पता, सिटी, स्टेट एंड कंट्री : </font></b><bean:write name="customer" property="address"/>, <bean:write name="customer" property="cityState"/>, <bean:write name="customer" property="country"/>
, <b><font face="Times New Roman" face="vardana" color="red">मोबाइल : </font></b><bean:write name="customer" property="mobile"/>, <b><font face="Times New Roman" face="vardana" color="red">लैंडलाइन/व्हाट्सप्प नंबर : </font></b><bean:write name="customer" property="phoneStd"/>, <b><font face="Times New Roman" face="vardana" color="red">मेल आईडी : </font></b> <bean:write name="customer" property="email"/>, <b><font face="Times New Roman" face="vardana" color="red">ऊँचाई (फ़ीट) और वजन (कि. ग्रा.) : </font></b><bean:write name="customer" property="height"/> और  <bean:write name="customer" property="weight"/>, 
, <b><font face="Times New Roman" face="vardana" color="red">मांगलिक : </font></b><bean:write name="customer" property="manglik"/>&nbsp;, <b><font face="Times New Roman" face="vardana" color="red">लिंग : </font></b><bean:write name="customer" property="gender"/>&nbsp;
, <b><font face="Times New Roman" face="vardana" color="red">जन्म दिनांक (yyyy-mm-dd),समय और स्थान  : </font></b><bean:write name="customer" property="birth"/>, <bean:write name="customer" property="timeHH"/>:<bean:write name="customer" property="timeMM"/> <bean:write name="customer" property="timeAMPM"/> & <bean:write name="customer" property="birthPlace"/>&nbsp;
, <b><font face="Times New Roman" face="vardana" color="red">अंतिम शिक्षा / बोर्ड/विश्वविद्यालय : </font></b> <bean:write name="customer" property="education"/> & <bean:write name="customer" property="boardUnivercity"/>
, <b><font face="Times New Roman" face="vardana" color="red">पिता का व्यवसाय और स्थान : </font></b><bean:write name="customer" property="fatherOccupation"/>, <b><font face="Times New Roman" face="vardana" color="red">पहचान पत्र : </font></b><bean:write name="customer" property="idType"/> - <bean:write name="customer" property="idNumber"/>
, <b><font face="Times New Roman" face="vardana" color="red">परिवार का विवरण : </font></b> विवाहित भाई सख्या - <bean:write name="customer" property="brothersMarried"/>, विवाहित बहिन सख्या - <bean:write name="customer" property="sistersMarried"/>
अविवाहित भाई सख्या - <bean:write name="customer" property="brothers"/>, अविवाहित बहिन सख्या - <bean:write name="customer" property="sisters"/>
, <b><font face="Times New Roman" face="vardana" color="red">वंश और गोत्र : </font></b><bean:write name="customer" property="vansh"/> & <bean:write name="customer" property="gotra"/>
, <b><font face="Times New Roman" face="vardana" color="red">प्राथमिकता का अनुक्रम  : </font></b><bean:write name="customer" property="priorityOccupation"/>
</tr>
</logic:iterate> 
<tr><td><html:link action="/AddCustomerPage.do">Add more members</html:link><tr>
</table>

<br/>
<br/>

 
</body>
</html>