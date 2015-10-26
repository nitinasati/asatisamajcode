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
<html:html>
<h1>अविवाहित सदस्यों की सूची </h1>
<html:form  action="/SearchCustomer.do" method="get" enctype="multipart/form-data">
<table border=1>
<tr>
        	<td>पंजीयन नंबर:<input type="text" name="registration" size="6" /> <td>or</td><td><bean:message key="customer.label.gender" /><input type="radio" name="gender" value="Male">पुरुष  <input type="radio" name="gender" value="Female">स्त्री   <td><bean:message key="customer.label.samajarea" />
        	<td><select name="samajArea">
        	<option value="All">सभी क्षेत्र</option>
		  <option value="Jabalpur kshetra">जबलपुर क्षेत्र</option>
		  <option value="Katni kshetra">कटनी क्षेत्र</option>
		  <option value="Gondia kshetra">गोंदिया क्षेत्र</option>
		  <option value="Balaghat kshetra">बालाघाट क्षेत्र</option>
		  <option value="Damoh kshetra">दमोह क्षेत्र</option>
		  <option value="Hata  kshetra">हटा क्षेत्र</option>
		  <option value="Sagar  kshetra">सागर क्षेत्र</option>
		  <option value="Tikamgarh kshetra">टीकमगढ़ क्षेत्र</option>
		  <option value="Baldevgarh-Khargapur kshetra">बल्देवगढ़-खरगपुर क्षेत्र</option>
		  <option value="Chhatarpur kshetra">छतरपुर क्षेत्र</option>
		  <option value="Hirapur-Ghuwar-Badagaon kshetra">हीरापुर-घुवारा-बड़ागाव क्षेत्र</option>
		  <option value="Badamalhara kshetra">बड़ामलहरा क्षेत्र</option>
		  <option value="Bijawar-Satai kshetra">बिजावर-सतई क्षेत्र</option>
		  <option value="Bhopal kshetra">भोपाल क्षेत्र</option>
		  <option value="Indore kshetra">इंदौर क्षेत्र</option>
		  <option value="Chhatishgarh  kshetra">छत्तीसगढ़  क्षेत्र</option>
		  <option value="Others">अन्य क्षेत्र</option>
		</select><td><bean:message key="customer.label.manglik" />
        	<input type="radio" name="manglik" value="Yes">हाँ 
        	<input type="radio" name="manglik" value="No">नहीं<td><input type="radio" name="gender" value="all">All <td><html:submit>Search</html:submit>
 </tr>
 </table>
 <br>
 <br>       	
<table border=1>
<logic:iterate id="customer" name="dynaCustomerListForm" property="customerList">
<tr>
<td>
<b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.registrationNumber" /> </font></b><bean:write name="customer" property="memberid"/>,
<b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.registrationDate" /> (yyyy-mm-dd): </font></b><bean:write name="customer" property="createDateTime"/>,
<b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.samajarea" />: </font></b><bean:write name="customer" property="samajArea"/>, 
<b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.full_name" />: </font></b><bean:write name="customer" property="fullName"/>, <b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.fatherName" /></font></b> <bean:write name="customer" property="fatherName"/>, <b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.motherName" />: </font></b> <bean:write name="customer" property="motherName"/>, 
<b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.grandPaName" />: </font></b><bean:write name="customer" property="grandPaName"/>, 
 <b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.occupation" />: </font></b><bean:write name="customer" property="occupation"/>
, <b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.address" />, <bean:message key="customer.label.cityState" />, <bean:message key="customer.label.country" />: </font></b><bean:write name="customer" property="address"/>, <bean:write name="customer" property="cityState"/>, <bean:write name="customer" property="country"/>
, <b><font face="Times New Roman" face="vardana" color="red">मोबाइल : </font></b><bean:write name="customer" property="mobile"/>, <b><font face="Times New Roman" face="vardana" color="red">लैंडलाइन/व्हाट्सप्प नंबर : </font></b><bean:write name="customer" property="phoneStd"/>, <b><font face="Times New Roman" face="vardana" color="red">मेल आईडी : </font></b> <bean:write name="customer" property="email"/>, <b><font face="Times New Roman" face="vardana" color="red">ऊँचाई (फ़ीट) और वजन (कि. ग्रा.) : </font></b><bean:write name="customer" property="height"/> और  <bean:write name="customer" property="weight"/>, 
, <b><font face="Times New Roman" face="vardana" color="red">मांगलिक : </font></b><bean:write name="customer" property="manglik"/>, <b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.color" />:</font></b> <bean:write name="customer" property="color"/>, <b><font face="Times New Roman" face="vardana" color="red">लिंग : </font></b><bean:write name="customer" property="gender"/>
, <b><font face="Times New Roman" face="vardana" color="red">जन्म दिनांक (yyyy-mm-dd),समय और स्थान : </font></b><bean:write name="customer" property="birth"/>, <bean:write name="customer" property="timeHH"/>:<bean:write name="customer" property="timeMM"/> <bean:write name="customer" property="timeAMPM"/> & <bean:write name="customer" property="birthPlace"/>&nbsp;
, <b><font face="Times New Roman" face="vardana" color="red">अंतिम शिक्षा / बोर्ड/विश्वविद्यालय : </font></b> <bean:write name="customer" property="education"/> & <bean:write name="customer" property="boardUnivercity"/>
, <b><font face="Times New Roman" face="vardana" color="red">पिता का व्यवसाय और स्थान : </font></b><bean:write name="customer" property="fatherOccupation"/>, <b><font face="Times New Roman" face="vardana" color="red">पहचान पत्र : </font></b><bean:write name="customer" property="idType"/> - <bean:write name="customer" property="idNumber"/>
, <b><font face="Times New Roman" face="vardana" color="red">परिवार का विवरण : </font></b> वि.भाई सं - <bean:write name="customer" property="brothersMarried"/>, वि. बहिन सं  - <bean:write name="customer" property="sistersMarried"/>
अवि.भाई सं - <bean:write name="customer" property="brothers"/>, अवि. बहिन सं - <bean:write name="customer" property="sisters"/>
, <b><font face="Times New Roman" face="vardana" color="red">वंश और गोत्र : </font></b><bean:write name="customer" property="vansh"/> & <bean:write name="customer" property="gotra"/>
, <b><font face="Times New Roman" face="vardana" color="red"><bean:message key="customer.label.priorityoccupation" /> : </font></b><bean:write name="customer" property="priorityOccupation"/>
</tr>
</logic:iterate> 
<tr><td><html:link action="/AddCustomerPage.do">Add more members</html:link><tr>
</table>

<br/>
<br/>

    </html:form>
</html:html>
</body>
</html>