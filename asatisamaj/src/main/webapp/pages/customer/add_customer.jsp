<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js" ></script>
<script src="http://malsup.github.com/jquery.form.js" ></script>
<script src="js/fileUploadScript.js" ></script>
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
<title>Post Biodata</title>
</head>
<body bgcolor="silver">
<body>
<html:html>
    <div style="color:red">
    	<html:errors />
    </div>
    
    <center><h1><bean:message key="customer.label.header" /></h1></center>
    <html:form  action="/AddCustomer.do" method="get" enctype="multipart/form-data">
    <table align="center" border="1">
    <tr><td>असाटी समाज का क्षेत्र 
        	<td><select name="samajArea">
		  <option value="Jabalpur kshetra">जबलपुर क्षेत्र</option>
		  <option value="Katni kshetra">कटनी क्षेत्र</option>
		  <option value="Gondia kshetra">गोंदिया क्षेत्र</option>
		  <option value="Balaghat kshetra">बालाघाट क्षेत्र</option>
		  <option value="Damoh kshetra">दमोह क्षेत्र</option>
		  <option value="PAN Card">हटा क्षेत्र</option>
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
		</select></tr>
        <tr><td><bean:message key="customer.label.gender" />
        	<td><input type="radio" name="gender" value="Male">पुरुष
        	<input type="radio" name="gender" value="Female">स्त्री
        	</tr>		
        <tr><td><bean:message key="customer.label.full_name" />
        	<td><html:text property="fullName" size="50" /></tr>
        <tr><td><bean:message key="customer.label.fatherName" />
        	<td><html:text property="fatherName" size="50" /></tr>
        <tr><td><bean:message key="customer.label.motherName" />
        	<td><html:text property="motherName" size="50" /></tr>  
        <tr><td><bean:message key="customer.label.grandPaName" />
        	<td><html:text property="grandPaName" size="50" /></tr>  
        <tr><td><bean:message key="customer.label.address" />
        	<td><html:text property="address" size="50" /></tr>
        <tr><td><bean:message key="customer.label.cityState" />
        	<td><html:text property="cityState" size="50" /></tr>
        <tr><td><bean:message key="customer.label.country" />
        	<td><html:text property="country" size="30" /></tr>
        <tr><td><bean:message key="customer.label.mobile" />
        	<td><html:text property="mobile" size="50" /></tr> 
        <tr><td><bean:message key="customer.label.landline" />
        	<td><html:text property="phoneStd" size="50" /></tr>         	
        <tr><td><bean:message key="customer.label.email" />
        	<td><html:text property="email" size="30" /></tr>  
        <tr><td><bean:message key="customer.label.birthDate" /> (yyyy-mm-dd):
        	<td><input type="text" name="birth" id="birth" class="datepicker" /></tr>  
		 <tr><td><bean:message key="customer.label.birthTime" />(hh:mm):<td><html:text property="timeHH" size="2" />:<html:text property="timeMM" size="02" />:<select name="timeAMPM">
		  <option value="AM">AM</option>
		  <option value="PM">PM</option>
		</select></td></tr>	
         <tr><td><bean:message key="customer.label.birthPlace" />
        	<td><html:text property="birthPlace" size="20" /></tr>  		
        <tr><td><bean:message key="customer.label.color" /><td>
        <SELECT name=color>
		  <option value="Fair">गोरा</option>
		  <option value="Very Fair">बहुत गोरा</option>
		  <option value="Darkish">सावला</option>
		  <option value="Wheatish">गेहुआ</option>
		  <option value="Wheatish Medium">गेहुआ मध्यम</option>
		</SELECT>
        <tr><td><bean:message key="customer.label.height" />
        	<td><html:text property="height" size="20" /><b><b></tr> 
		</tr> 
        <tr><td><bean:message key="customer.label.weight" />
        	<td><html:text property="weight" size="20" /><b><b></tr> 
		</tr> 
      <tr><td><bean:message key="customer.label.manglik" />
        	<td><input type="radio" name="manglik" value="Yes">हाँ 
        	<input type="radio" name="manglik" value="No">नहीं</tr>   
        <tr><td><bean:message key="customer.label.education" />
        	<td><html:text property="education" size="50" /></tr>
          <tr><td><bean:message key="customer.label.boardUniversity" />
        	<td><html:text property="boardUnivercity" size="50" /></tr>         	
        <tr><td><bean:message key="customer.label.occupation" />
        	<td><html:text property="occupation" size="50" /></tr>
        <tr><td><bean:message key="customer.label.fatherOccuptation" />
        	<td><html:text property="fatherOccupation" size="50" /></tr>   
        <tr><td><bean:message key="customer.label.familydetails" /><td><bean:message key="customer.label.marriedBrothers" />:<html:text property="brothersMarried" size="2" /></tr>
        <tr><td><td><bean:message key="customer.label.marriedSisters" />:<html:text property="sistersMarried" size="2" /></tr>
        <tr><td><td><bean:message key="customer.label.brothers" /><html:text property="brothers" size="2" /></tr>   
        <tr><td><td><bean:message key="customer.label.sisters" /><html:text property="sisters" size="2" /></tr>   
  		 <tr><td><tr><td><bean:message key="customer.label.idType" /><td><select name="idType">
		  <option value="Aadhar">आधार कार्ड</option>
		  <option value="Driving License">ड्राइविंग लाइसेंस</option>
		  <option value="PAN Card">पैन कार्ड</option>
		  <option value="Voter ID">वोटर आई डी</option>
		</select></td></tr>   
        <tr><td><bean:message key="customer.label.idNumber" />
        	<td><html:text property="idNumber" size="30" /></td></tr>	
        <tr><td><bean:message key="customer.label.priorityoccupation" />
        	<td><select name="priorityOccupation">
		  <option value="(1)Govt Service, (2)Multinational Service /Private, (3)Business, (4)Others">(1)शासकीय सर्विस, (2)मल्टीनेशनल्स/प्राइवेट कंपनी, (3)व्यापार, (4)अन्य</option>
		  <option value="(1)Multinational Service /Private, (2)Govt Service, (3)Business, (4)Others">(1)मल्टीनेशनल्स/प्राइवेट कंपनी, (2)शासकीय सर्विस, (3)व्यापार, (4)अन्य</option>
		  <option value="(1)Business, (2)Govt Service, (3)Multinational Service /Private, (4)Others">(1)व्यापार, (2)शासकीय सर्विस, (3)मल्टीनेशनल्स/प्राइवेट कंपनी, (4)अन्य</option>
		  <option value="Any">कोई भी प्राथमिकता नहीं</option>
		</select></tr>        		     	      	
        <tr><td><bean:message key="customer.label.gotra" />
        	<td><select name="gotra">
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
		</select></tr>     	
        <tr><td><bean:message key="customer.label.vansh" />
        	<td><select name="vansh">
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
			<option value="Anya">अन्य </option>
			<option value="Agyat">अज्ञात</option>
		</select></tr>
        <tr><td><td><html:submit>Submit</html:submit></td></tr>
        </table>
    </html:form>
</html:html>
</body>
</html>