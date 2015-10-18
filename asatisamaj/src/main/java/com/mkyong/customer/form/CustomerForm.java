package com.mkyong.customer.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class CustomerForm extends ActionForm {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String samajArea;
	private String fullName;
	private String fatherName;
	private String motherName;
	private String grandPaName;
	private String weight;
	private String idType;
	private String idNumber;
	private String timeHH;
	private String timeMM;
	private String timeAMPM;
	private String birthPlace;
	private String gender;
	private String height;
	private String color;
	private String manglik;
	private String birth;
	private String education;
	private String boardUnivercity;
	private String occupation;
	private String address;
	private String cityState;
	private String country;
	private String phoneStd;
	private String mobile;
	private String email;
	private String fatherOccupation;
	private String brothers;
	private String brothersMarried;
	private String sisters;
	private String sistersMarried;
	private String priorityOccupation;
	private String vansh;
	private String gotra;
	public String getSamajArea() {
		return samajArea;
	}





	public void setSamajArea(String samajArea) {
		this.samajArea = samajArea;
	}
    @Override
    public ActionErrors validate(ActionMapping mapping,
            HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (fullName == null || fullName.length() < 1) {
            errors.add("fullName", new ActionMessage(
                    "error.fullName.required"));
 
        }
        if (fatherName == null || fatherName.length() < 1) {
            errors.add("fatherName", new ActionMessage("error.fatherName.required"));
 
        }
        if (gender == null || gender.length() < 1) {
            errors.add("gender", new ActionMessage("error.gender.required"));
 
        }
        if (height == null || height.length() < 1) {
            errors.add("height", new ActionMessage("error.height.required"));
 
        }
        if (email == null || email.length() < 1) {
            errors.add("email", new ActionMessage("error.email.required"));
 
        }
        if (birth == null) {
            errors.add("birth", new ActionMessage("error.birth.required"));
 
        }
        
        if (manglik == null || manglik.length() < 1) {
            errors.add("manglik", new ActionMessage("error.manglik.required"));
 
        }
        if (education == null || education.length() < 1) {
            errors.add("education", new ActionMessage("error.education.required"));
 
        }
        if (occupation == null || occupation.length() < 1) {
            errors.add("occupation", new ActionMessage("error.occupation.required"));
 
        }
        if (address == null || address.length() < 1) {
            errors.add("address", new ActionMessage("error.address.required"));
 
        }
        if (cityState == null || cityState.length() < 1) {
            errors.add("cityState", new ActionMessage("error.cityState.required"));
 
        }
        if (country == null || country.length() < 1) {
            errors.add("country", new ActionMessage("error.country.required"));
 
        }
        if (phoneStd == null || phoneStd.length() < 1) {
            errors.add("phoneStd", new ActionMessage("error.phoneStd.required"));
 
        }
        if (mobile == null || mobile.length() < 1) {
            errors.add("mobile", new ActionMessage("error.mobile.required"));
 
        }
        return errors;
    }


 


	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// reset properties
		fullName="";
		fatherName="";
		gender="";
		height="";
		manglik="";
		birth="";
		education="";
		occupation="";
		address="";
		cityState="";
		country="";
		phoneStd="";
		mobile="";
		email="";
	}





	public String getFullName() {
		return fullName;
	}





	public void setFullName(String fullName) {
		this.fullName = fullName;
	}





	public String getFatherName() {
		return fatherName;
	}





	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}





	public String getMotherName() {
		return motherName;
	}





	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}





	public String getIdType() {
		return idType;
	}





	public void setIdType(String idType) {
		this.idType = idType;
	}





	public String getIdNumber() {
		return idNumber;
	}





	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}





	public String getTimeHH() {
		return timeHH;
	}





	public void setTimeHH(String timeHH) {
		this.timeHH = timeHH;
	}





	public String getTimeMM() {
		return timeMM;
	}





	public void setTimeMM(String timeMM) {
		this.timeMM = timeMM;
	}





	public String getTimeAMPM() {
		return timeAMPM;
	}





	public void setTimeAMPM(String timeAMPM) {
		this.timeAMPM = timeAMPM;
	}





	public String getBirthPlace() {
		return birthPlace;
	}





	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}





	public String getGender() {
		return gender;
	}





	public void setGender(String gender) {
		this.gender = gender;
	}





	public String getHeight() {
		return height;
	}





	public void setHeight(String height) {
		this.height = height;
	}





	public String getColor() {
		return color;
	}





	public void setColor(String color) {
		this.color = color;
	}





	public String getManglik() {
		return manglik;
	}





	public void setManglik(String manglik) {
		this.manglik = manglik;
	}





	public String getBirth() {
		return birth;
	}





	public void setBirth(String birth) {
		this.birth = birth;
	}





	public String getEducation() {
		return education;
	}





	public void setEducation(String education) {
		this.education = education;
	}





	public String getBoardUnivercity() {
		return boardUnivercity;
	}





	public void setBoardUnivercity(String boardUnivercity) {
		this.boardUnivercity = boardUnivercity;
	}





	public String getOccupation() {
		return occupation;
	}





	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}





	public String getAddress() {
		return address;
	}





	public void setAddress(String address) {
		this.address = address;
	}





	public String getCityState() {
		return cityState;
	}





	public void setCityState(String cityState) {
		this.cityState = cityState;
	}





	public String getCountry() {
		return country;
	}





	public void setCountry(String country) {
		this.country = country;
	}





	public String getPhoneStd() {
		return phoneStd;
	}





	public void setPhoneStd(String phoneStd) {
		this.phoneStd = phoneStd;
	}





	public String getMobile() {
		return mobile;
	}





	public void setMobile(String mobile) {
		this.mobile = mobile;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getFatherOccupation() {
		return fatherOccupation;
	}





	public void setFatherOccupation(String fatherOccupation) {
		this.fatherOccupation = fatherOccupation;
	}





	public String getBrothers() {
		return brothers;
	}





	public void setBrothers(String brothers) {
		this.brothers = brothers;
	}





	public String getBrothersMarried() {
		return brothersMarried;
	}





	public void setBrothersMarried(String brothersMarried) {
		this.brothersMarried = brothersMarried;
	}





	public String getSisters() {
		return sisters;
	}





	public void setSisters(String sisters) {
		this.sisters = sisters;
	}





	public String getSistersMarried() {
		return sistersMarried;
	}





	public void setSistersMarried(String sistersMarried) {
		this.sistersMarried = sistersMarried;
	}





	public String getVansh() {
		return vansh;
	}





	public void setVansh(String vansh) {
		this.vansh = vansh;
	}





	public String getGotra() {
		return gotra;
	}





	public void setGotra(String gotra) {
		this.gotra = gotra;
	}





	public String getGrandPaName() {
		return grandPaName;
	}





	public void setGrandPaName(String grandPaName) {
		this.grandPaName = grandPaName;
	}





	public String getPriorityOccupation() {
		return priorityOccupation;
	}





	public void setPriorityOccupation(String priorityOccupation) {
		this.priorityOccupation = priorityOccupation;
	}





	public String getWeight() {
		return weight;
	}





	public void setWeight(String weight) {
		this.weight = weight;
	}
	
}
