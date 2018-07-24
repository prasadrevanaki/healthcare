package com.mediwr.Mediware.model;

public class UserVO {
	
	private String userId;
	
	private String userName;
	
	private String stage;
	
	private String mobileNumber;
	
	private String email;
	
	private String dob;
	
	private String age;
	
	public UserVO() {
	}
	
	public UserVO(final String userName, 
			final String mobileNumber, 
			final String email) {
		this.userName = userName;
		this.mobileNumber = mobileNumber;
		this.email = email;
	}
	
	public UserVO(final String userName, 
			final String mobileNumber, 
			final String email,
			final String stage, 
			final String dob, 
			final String age) {
		this.userName = userName;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.stage = stage;
		this.dob = dob;
		this.age = age;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return "\n User Name -" + this.userName 
				+ " Mobile number - " + this.mobileNumber
				+ " Email - " + this.email
				+ " Age - " + this.age
				+ " Stage - " + this.stage
				+ " Dob - " + this.dob;
	}
}
