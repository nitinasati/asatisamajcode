<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="js/validation.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><bean:message key="customer.label.header" /></title>
</head>
<body bgcolor="silver">
<body>
<html:html>
    <div style="color:red">
    	<html:errors />
    </div>
    
    <center><h1><bean:message key="customer.label.header" /></h1></center>
    <form id="memberEntry"  action="AddCustomer.do" method="get" onsubmit="return validate(this)">
    <table align="center" border="1"><tr><td>    <b><u>निर्देश</u></b>
    <ol type="1">
  <li>फार्म के पूरे कालम पढ़ने के बाद 18/21 वर्ष से अधिक की युवतियां/युवकही प्रविष्टि भरे </li>
  <li><font color="red">*</font>अंकित कालम की जानकारी देना अनिवार्य है अन्यथा फार्म SUBMIT नहीं होगा</li>
  <li>नमूना फार्म देखने के लिये <a href="<%=request.getContextPath()%>/images/form.gif" target="_blank">Form</a> पर क्लिक करें  (please refresh the page if the form is not loaded)</li>
  <li>फार्म SUBMIT करने के बाद  http://asativaishyaparichay.in के सर्विस टेब पर "अविवाहित सदस्यों की सूची" <br> लिंक  पर  1-2 दिन बाद आपका बायोडाटा डिस्पले होगा अन्यथा हेल्प नं0 8989837643 पर काल करें तथा <br> पंजीयन नम्बरवाइज/लिंग/असाटी समाज का क्षेत्र /मांगलिक /जन्म वर्ष के मापदंडों के अनुसार अलग-अलग <br> समग्र सूची search/खोज करें ।</li>
</ol></tr><tr><td><table align="center" border="1">
        <tr><td><bean:message key="customer.label.gender" /><font color="red">*</font>
         <td><SELECT name=gender>
          <option value="select">Select</option>
		  <option value="Female">स्त्री</option>
		  <option value="Male">पुरुष</option>
		</SELECT>
       	</tr>		
        <tr><td><bean:message key="customer.label.full_name" /><font color="red">*</font>
        	<td><input type="text" name="fullName" size="50" maxlength="100" /></tr>
        <tr><td><bean:message key="customer.label.fatherName" /><font color="red">*</font>
        	<td><input type="text" name="fatherName" size="50" maxlength="100" /></tr>
        <tr><td><bean:message key="customer.label.motherName" /><font color="red">*</font>
        	<td><input type="text" name="motherName" size="50" maxlength="100" /></tr>  
        <tr><td><bean:message key="customer.label.grandPaName" />
        	<td><input type="text" name="grandPaName" size="50" maxlength="100" /></tr>  
        <tr><td><bean:message key="customer.label.address" /><font color="red">*</font>
        	<td><input type="text" name="address" size="50" maxlength="300" /></tr>
        <tr><td><bean:message key="customer.label.samajarea" /><font color="red">*</font>
        	<td><select name="samajArea">
        	<option value="select">आपका क्षेत्र</option>
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
		</select></tr>
        <tr><td><bean:message key="customer.label.cityState" /><font color="red">*</font>
 
        	<td><input type="text" name="cityState" size="50" maxlength="300" /></tr>
        <tr><td><bean:message key="customer.label.country" /><font color="red">*</font>
        	<td><input type="text" name="country" size="30" maxlength="50" /></tr>
        <tr><td><bean:message key="customer.label.mobile" /><font color="red">*</font>
        	<td><input type="text" name="mobile" size="40" maxlength="40" /></tr> 
        <tr><td><bean:message key="customer.label.landline" />
        	<td><input type="text" name="phoneStd" size="20" maxlength="20" /></tr>         	
        <tr><td><bean:message key="customer.label.email" />
        	<td><input type="text" name="email" size="30" maxlength="50"/></tr>  
        <tr><td><bean:message key="customer.label.birthDate" /> (yyyy-mm-dd)<font color="red">*</font>
        	<td><input type="text" placeholder="yyyy-mm-dd" name="birth" onblur="return checkDate(this)"/></tr>  
		 <tr><td><bean:message key="customer.label.birthTime" />(hh:mm):
		 <td><input type="text" name="timeHH" maxlength="2" id="timeHH" oncopy="return false" onpaste="return false" onkeypress="return isNumber(event)" size="2" />:
		 <input type="text" name="timeMM" id="timeMM" maxlength="2" onblur="return timeMMCheck(this)" oncopy="return false" onpaste="return false" onkeypress="return isNumber(event)" size="2" />:<select name="timeAMPM">
		  <option value="AM">AM</option>
		  <option value="PM">PM</option>
		</select></td></tr>	
         <tr><td><bean:message key="customer.label.birthPlace" /><font color="red">*</font>
        	<td><input type="text" name="birthPlace" size="20" maxlength="60" /></tr>  		
        <tr><td><bean:message key="customer.label.color" /><td>
        <SELECT name=color>
          <option value="select">रंग</option>
		  <option value="Fair">गोरा</option>
		  <option value="Very Fair">बहुत गोरा</option>
		  <option value="Darkish">सावला</option>
		  <option value="Wheatish">गेहुआ</option>
		  <option value="Wheatish Medium">गेहुआ मध्यम</option>
		</SELECT>
        <tr><td><bean:message key="customer.label.height" /><font color="red">*</font>
        	<td><input type="text" name="height" size="20" id="height" maxlength="20" oncopy="return false" onpaste="return false"/><b><b></tr> 
		</tr> 
        <tr><td><bean:message key="customer.label.weight" /><font color="red">*</font>
        	<td><input type="text" name="weight" size="20" id="weight" maxlength="3" oncopy="return false" onpaste="return false" onkeypress="return isNumber(event)" /><b><b></tr> 
		</tr> 
      <tr><td><bean:message key="customer.label.manglik" /><font color="red">*</font>
		<td>  
        <SELECT name=manglik>
          <option value="select">Select</option>
		  <option value="Yes">हाँ</option>
		  <option value="No">नहीं</option>
		</SELECT>
        <tr><td><bean:message key="customer.label.education" /><font color="red">*</font>
        	<td><input type="text" name="education" size="50" /></tr>
          <tr><td><bean:message key="customer.label.boardUniversity" /><font color="red">*</font>
        	<td><input type="text" name="boardUnivercity" size="50" /></tr>         	
        <tr><td><bean:message key="customer.label.occupation" /><font color="red">*</font>
        	<td><input type="text" name="occupation" size="50" /></tr>
        <tr><td><bean:message key="customer.label.fatherOccuptation" />
        	<td><input type="text" name="fatherOccupation" size="50" /></tr>   
        <tr><td><bean:message key="customer.label.familydetails" /><td><bean:message key="customer.label.marriedBrothers" />:<input type="text" name="brothersMarried" size="2" maxlength="2" id="text1" oncopy="return false" oncopy="return false" onpaste="return false" onkeypress="return isNumber(event)"/></tr>
        <tr><td><td><bean:message key="customer.label.marriedSisters" />:<input type="text" name="sistersMarried" id="sistersMarried" size="2" maxlength="2" oncopy="return false" onpaste="return false" onkeypress="return  isNumber(event)"/></tr>
        <tr><td><td><bean:message key="customer.label.brothers" /><input type="text" name="brothers" size="2" maxlength="2" id="brothers" oncopy="return false" onpaste="return false" onkeypress="return  isNumber(event)"/></tr>   
        <tr><td><td><bean:message key="customer.label.sisters" /><input type="text" name="sisters" size="2" maxlength="2" id="sisters" oncopy="return false" onpaste="return false" onkeypress="return  isNumber(event)" /></tr>   
  		 <tr><td><bean:message key="customer.label.idType" /><font color="red">*</font><td><select name="idType">
  		 <option value="select">id टाइप</option>
		  <option value="Aadhar">आधार कार्ड</option>
		  <option value="Driving License">ड्राइविंग लाइसेंस</option>
		  <option value="PAN Card">पैन कार्ड</option>
		  <option value="Voter ID">वोटर आई डी</option>
		</select></td></tr>   
        <tr><td><bean:message key="customer.label.idNumber" /><font color="red">*</font>
        	<td><input type="text" name="idNumber" size="30" maxlength="50" /></td></tr>	
        <tr><td><bean:message key="customer.label.priorityoccupation" />
        	<td><select name="priorityOccupation">
		  <option value="Govt Service">शासकीय सर्विस</option>
		  <option value="Multinational Service /Private">मल्टीनेशनल्स/प्राइवेट कंपनी</option>
		  <option value="Business">व्यापार</option>
		  <option value="Others">अन्य</option>
		  <option value="Any">कोई भी प्राथमिकता नहीं</option>
		</select></tr>        		     	      	
        <tr><td><bean:message key="customer.label.gotra" /><font color="red">*</font>
        	<td><select name="gotra">
          <option value="select">आपका गोत्र</option>
		  <option value="Kashyap">कश्यप</option>
		  <option value="Badalya">बादल्य</option>
		  <option value="Gohal">गोहल</option>
		  <option value="Baslaya">बास्लय</option>
		  <option value="Charalya">चारलय</option>
		  <option value="Koushal">कौशल</option>
		  <option value="Vashisht">वशिष्ट</option>
		  <option value="Jangotra">जनगोत्र</option>
		  <option value="Madlya">माडळय</option>
		  <option value="Fadalya">फाडळय</option>
		  <option value="Khodal">खोड़ल</option>
		  <option value="Not Known">अज्ञात</option>
		</select></tr>     	
        <tr><td><bean:message key="customer.label.vansh" /><font color="red">*</font>
        	<td><select name="vansh">
        	<option value="select">आपका वंश </option>
			<option value="Nayak">नायक</option>
			<option value="Choudhrya">चौधरी</option>
			<option value="Sarkanya">सरकन्या</option>
			<option value="TigRhaiya">तिगढ़ैया</option>
			<option value="Devra">देवरा</option>
			<option value="Futra">फुतरा</option>
			<option value="Devraiya">देव्दईया</option>
			<option value="Patwari">पटवारी</option>
			<option value="Barhdhariya ">बढ़धरिया</option>
			<option value="khiraiya">खिरैया</option>
			<option value="Samarya">समर्या</option>
			<option value="Jugalha">जुगल्हा</option>
			<option value="Narmaiya">नरमैया</option>
			<option value="Jatariya">जतारिया</option>
			<option value="noudhinga">नौधिंगा</option>
			<option value="Katele">कतेले</option>
			<option value="Khatuamacho">खत्यामाचो</option>
			<option value="Juwariya">जुवारिया</option>
			<option value="Talya">तलया</option>
			<option value="Pachra">पचरा</option>
			<option value="Not known">अज्ञात</option>
		</select></tr>
		<tr><td><td><font color="red"><b>I Agree to display all detail to the visitors<b></font></tr>
		<tr><td><td><html:submit>Save and Upload Photo Next</html:submit>
        </table></tr></table>
    </form>
</html:html>
</body>
</html>