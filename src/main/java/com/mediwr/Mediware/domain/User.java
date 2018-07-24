package com.mediwr.Mediware.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.mediwr.Mediware.constants.UserRoleType;

@Document(collection = "Users")
public class User {

	@Id
	private String id;
	private String userId;
    private String username;
    private String password;
    private String contactNumber;
    private String stage;
    private String dob;
    private String email;
    private String age;
    private UserRoleType[] roles;
    private Address address;

    /**
     * private String userName;
	
	private String stage;
	
	private String mobileNumber;
	
	private String email;
	
	private String dob;
	
	private String age;
     * 
     */
    
    public User() {
    }
    
    public User(String username, String password, String contactNumber, String email, Address address) {
    	this.username = username;
    	this.password = password;
    	this.contactNumber = contactNumber;
    	this.email = email;
    	this.address = address;
    }
    
    public User(String username, String contactNumber, String stage, String email, String age, String dob) {
    	this.username = username;
    	this.stage = stage;
    	this.contactNumber = contactNumber;
    	this.email = email;
    	this.age = age;
    	this.dob = dob;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public UserRoleType[] getRoles() {
		return roles;
	}

	public void setRoles(UserRoleType[] roles) {
		this.roles = roles;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
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
	
}
