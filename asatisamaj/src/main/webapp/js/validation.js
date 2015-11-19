function getWithdrawAmmount() {
	window.alert("sometext");
}

function fileExtension(e){
    var ext = e.value.match(/\.([^\.]+)$/)[1];
    switch(ext)
    {
        case 'jpg':
        case 'bmp':
        case 'png':
        case 'tif':
        case 'JPG':
        case 'BMP':
        case 'PNG':
        case 'TIG':
            break;
        default:
            alert(ext + ' not allowed. Only file extensions - jpg, bmp, png and tif are allowed');
            e.value='';
    }
}
function fileSubmit(theForm){
    var ext = theForm.imagePath.value;
    
    if (ext == null || ext.trim() == '')
    {
    	alert('Plese select a file to upload');
    	return false;
    	}
    else
    	return true;
}

function isNumber(evt) {
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}

function validate(theForm) { // passing the form object
	var val = theForm.fullName.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.fullName.focus();
		return false; // cancel submission
	}
	var val = theForm.gender.value;
	if (val == null || val.trim() == "" || val.trim() == "select") {
		alert('Please enter gender');
		return false; // cancel submission
	}
	var val = theForm.fatherName.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.fatherName.focus();
		return false; // cancel submission
	}
	var val = theForm.motherName.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.motherName.focus();
		return false; // cancel submission
	}
	var val = theForm.address.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.address.focus();
		return false; // cancel submission
	}
	var val = theForm.samajArea.value;
	if (val == null || val.trim() == "" || val.trim() == "select") {
		alert('Please enter samajArea');
		//theForm.boardUniversity.focus();
		return false; // cancel submission
	}
	var val = theForm.cityState.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.cityState.focus();
		return false; // cancel submission
	}
	var val = theForm.country.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.country.focus();
		return false; // cancel submission
	}
		var val = theForm.mobile.value;
	if (val == null || val.trim() == "") {
		alert('Please enter mobile');
		theForm.mobile.focus();
		return false; // cancel submission
	}
	/*var val = theForm.phoneStd.value;
	if (val == null || val.trim() == "") {
		alert('Please enter landline or whatsapp number, this can be same as mobile');
		theForm.phoneStd.focus();
		return false; // cancel submission
	}*/
	var val = theForm.birth.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.birth.focus();
		return false; // cancel submission
	}
	var val = theForm.birthPlace.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.birthPlace.focus();
		return false; // cancel submission
	}
	var val = theForm.height.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.height.focus();
		return false; // cancel submission
	}
	var val = theForm.weight.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.weight.focus();
		return false; // cancel submission
	}
	var val = theForm.manglik.value;
	if (val == null || val.trim() == "" || val.trim() == "select") {
		alert('Please enter all mandatory fields');
		//theForm.manglik.focus();
		return false; // cancel submission
	}
	var val = theForm.education.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.education.focus();
		return false; // cancel submission
	}
	var val = theForm.boardUnivercity.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.boardUniversity.focus();
		return false; // cancel submission
	}
	var val = theForm.idType.value;
	if (val == null || val.trim() == "" || val.trim() == "select") {
		alert('Please enter idType');
		//theForm.boardUniversity.focus();
		return false; // cancel submission
	}
	var val = theForm.idNumber.value;
	if (val == null || val.trim() == "") {
		alert('Please enter all mandatory fields');
		theForm.idNumber.focus();
		return false; // cancel submission
	}
	var val = theForm.gotra.value;
	if (val == null || val.trim() == "" || val.trim() == "select") {
		alert('Please enter gotra');
		//theForm.boardUniversity.focus();
		return false; // cancel submission
	}
	var val = theForm.vansh.value;
	if (val == null || val.trim() == "" || val.trim() == "select") {
		alert('Please enter vansh');
		//theForm.boardUniversity.focus();
		return false; // cancel submission
	}	
	if (!ValidateForm(theForm) || !checkDate(theForm.birth))
		return false;
	else
	return true; // allow submit
}

function echeck(str) {

		var at="@";
		var dot=".";
		var lat=str.indexOf(at);
		var lstr=str.length;
		var ldot=str.indexOf(dot);
		//alert("Enter email check1");
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID");
		   return false;
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID");
		   return false;
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID");
		    return false;
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID");
		    return false;
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID");
		    return false;
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID");
		    return false;
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID");
		    return false;
		 }
		return true;	
	}

function ValidateForm(theForm){
	var emailID = theForm.email;
	//alert("Enter email check");
	if (emailID.value == null || emailID.value==""){
		return true;
	}
	if (echeck(emailID.value) == false){
		emailID.value="";
		emailID.focus();
		return false;
	}
	return true;
 }

function checkDate(field)
{
  var allowBlank = true;
  var minYear = 1950;
  var maxYear = (new Date()).getFullYear() - 18;

  var errorMsg = "";

  // regular expression to match required date format
  re = /^(\d{4})-(\d{1,2})-(\d{1,2})$/;

  if(field.value != '') {
    if(regs = field.value.match(re)) {
      if(regs[3] < 1 || regs[3] > 31) {
        errorMsg = "Invalid value for day: " + regs[3];
      } else if(regs[2] < 1 || regs[2] > 12) {
        errorMsg = "Invalid value for month: " + regs[2];
      } else if(regs[1] < minYear || regs[1] > maxYear) {
        errorMsg = "Invalid value for year: " + regs[1] + " - must be between " + minYear + " and " + maxYear;
      }
    } else {
      errorMsg = "Invalid date format: " + field.value;
    }
  } else if(!allowBlank) {
    errorMsg = "Empty date not allowed!";
  }

  if(errorMsg != "") {
    alert(errorMsg);
    field.focus();
    return false;
  }

  return true;
}

function timeHHCheck(field)
{
	if (field.value.trim() == "" || field.value == null)
	{
		return true;
	}
	if (field.value > 12 || field.value <= 0) 
	{		
		alert("Invalid time - hours");
		field.focus();
		return false;
	}
	return true;
}
function timeMMCheck(field)
{
	if (field.value.trim() == "" || field.value == null)
	{
		return true;
	}
	if (field.value > 59 || field.value < 0) 
	{
		alert("Invalid time - minutes");
		field.focus();
		return false;
	}

	return true;
}
