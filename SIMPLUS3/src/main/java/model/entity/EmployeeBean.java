package model.entity;

import java.io.Serializable;

public class EmployeeBean implements Serializable {
	/**
	 * 社員コード
	 */
	private String employeeCode;

	/**
	 * 姓
	 */
	private String surName;

	/**
	 * 名
	 */
	private String firstName;

	/**
	 * かな姓
	 */
	private String surKanaName;

	/**
	 * かな名
	 */
	private String firstKanaName;

	/**
	 * 性別
	 */
	private String gender;

	/**
	 * 生年月日
	 */
	private String birthDate;

	/**
	 * 部署コード
	 */
	private String sectionCode;
	
	/**
	 * 部署名
	 */
	private String sectionName;

	/**
	 * 資格コード
	 */
	private String license_code;

	/**
	 * 趣味コード
	 */
	private String hobbyCode;

	/**
	 * 入社日
	 */
	private String joiningDate;

	/**
	 * メールアドレス
	 */
	private String mail;

	/**
	 * 連絡先
	 */
	private String tel;

	/**
	 * 住所
	 */
	private String address;

	/**
	 * 自己紹介
	 */
	private String selfintroduction;
	
	/**
	 * 性別名
	 */
	private String genderName;
	
	/**
	 * 趣味名
	 */
	private String hobbyName;
	
	/**
	 * 資格名
	 */
	private String licenseName;

	public String getEmployeeCode() {
		return employeeCode;
	}

	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}

	public String getSurName() {
		return surName;
	}

	public void setSurName(String surName) {
		this.surName = surName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSurKanaName() {
		return surKanaName;
	}

	public void setSurKanaName(String surKanaName) {
		this.surKanaName = surKanaName;
	}

	public String getFirstKanaName() {
		return firstKanaName;
	}

	public void setFirstKanaName(String firstKanaName) {
		this.firstKanaName = firstKanaName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getSectionCode() {
		return sectionCode;
	}

	public void setSectionCode(String sectionCode) {
		this.sectionCode = sectionCode;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getLicenseCode() {
		return license_code;
	}

	public void setLicenseCode(String licenseCode) {
		this.license_code = licenseCode;
	}

	public String getHobbyCode() {
		return hobbyCode;
	}

	public void setHobbyCode(String hobbyCode) {
		this.hobbyCode = hobbyCode;
	}

	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSelfintroduction() {
		return selfintroduction;
	}

	public void setSelfintroduction(String selfintroduction) {
		this.selfintroduction = selfintroduction;
	}

	public String getGenderName() {
		return genderName;
	}

	public void setGenderName(String genderName) {
		this.genderName = genderName;
	}

	public String getHobbyName() {
		return hobbyName;
	}

	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}

	public String getLicenseName() {
		return licenseName;
	}

	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}
	
	
}